import 'package:ae_events/screens/facebook.dart';
import 'package:ae_events/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class OnBoarding2 extends StatelessWidget {
  const OnBoarding2();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/screen3.jfif'),
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
              // text button to skip

              // child: Text(
              //   'Skip',
              //   style: TextStyle(
              //     color: Colors.white,
              //     fontSize: 15,
              //     fontFamily: "SF Pro Display",
              //   ),
              // ),

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
            Positioned(
              top: 160,
              left: 24,
              right: 0,
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Unlock ',
                        style: TextStyle(
                          color: Color.fromARGB(255, 80, 220, 255),
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          fontFamily: "SF Pro Display",
                        ),
                      ),
                      Text(
                        'the world of',
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
                  Row(
                    children: [
                      Text(
                        'events',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          fontFamily: "SF Pro Display",
                        ),
                      ),
                      Text(
                        ' with',
                        style: TextStyle(
                          color: Color.fromARGB(255, 80, 220, 255),
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
                  Row(
                    children: [
                      Text(
                        'AllEvents!',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          fontFamily: "SF Pro Display",
                        ),
                      ),
                    ],
                  ),
                ],
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
                    'Continue',
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
