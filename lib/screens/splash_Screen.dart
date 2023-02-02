import 'dart:async';
import 'package:ae_events/screens/home.dart';
import 'package:ae_events/components/OnBoarding/onBoarding_1.dart';
import 'package:flutter/material.dart';

class splashScreen extends StatefulWidget {
  const splashScreen();

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => OnBoarding1()));
    });
  }

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/splash.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
