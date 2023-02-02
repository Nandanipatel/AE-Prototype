import 'package:ae_events/screens/facebook.dart';
import 'package:ae_events/screens/home.dart';
import 'package:ae_events/screens/onBoarding_2.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp();

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/screen2.jfif'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(0, 0, 0, 0.59),
              ),
            ),
            Positioned(
              top: 70,
              left: 334,
              right: 0,
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (_) => Home()));
                },
                child: Text(
                  'Skip',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontFamily: "SF Pro Display",
                  ),
                ),
              ),
            ),
           
            // continue button
            Positioned(
              top: 690,
              left: 24,
              right: 24,
              child: Container(
                width: 327,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (_) => Facebook()));
                  },
                  child: Text(
                    'Facebook login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: "SF Pro Display",
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 80, 220, 255),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
