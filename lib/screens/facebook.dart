import 'dart:convert';
import 'package:ae_events/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:path/path.dart' as Path;

class Facebook extends StatefulWidget {
  const Facebook();

  @override
  State<Facebook> createState() => _FacebookState();
}

class _FacebookState extends State<Facebook> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: () {
          facebookLogin();
        },
        child: Text('Login With Facebook'),
      ),
    );
  }

  facebookLogin() async {
    try {
      final result =
          await FacebookAuth.i.login(permissions: ['public_profile', 'email']);
      if (result.status == LoginStatus.success) {
        final userData = await FacebookAuth.i.getUserData();
        print('facebook_login_data:-');
        print(userData);
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Home(
                  image: userData['picture']['data']['url'],
                  name: userData['name'],
                  email: userData['email']),
            ));
      }
    } catch (error) {
      print(error);
    }
  }
}
