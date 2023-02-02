import 'package:ae_events/components/OnBoarding/onBoarding_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import '../components/SignUp/facebook.dart';

class Home extends StatefulWidget {
  const Home({this.image, this.name, this.email});

  @override
  State<Home> createState() => _HomeState();
  final image;
  final name;
  final email;
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/splash.jpg'),
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
              top: 160,
              left: 24,
              right: 0,
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'HOME ',
                        style: TextStyle(
                          color: Color.fromARGB(255, 80, 220, 255),
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          fontFamily: "SF Pro Display",
                        ),
                      ),
                      Text(
                        ' PAGE ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          fontFamily: "SF Pro Display",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Image.network(
                    widget.image,
                    height: 200,
                    width: 200,
                  ),
                  Text(widget.name),
                  Text(widget.email),
                  SizedBox(height: 100),
                  ElevatedButton(
                      onPressed: () {
                        FacebookAuth.i.logOut();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OnBoarding2()));
                      },
                      child: Text('Logout')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
