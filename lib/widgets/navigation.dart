import 'package:flutter/material.dart';

class Navigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        child: Container(
          height: 60,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(color: Color.fromARGB(255, 125, 124, 124)),
              ],
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Theme.of(context).iconTheme.color,
                width: 0.25,
              )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.home_filled),
              Icon(Icons.calendar_month_outlined),
              Icon(Icons.camera_alt),
              Icon(Icons.mail_outline),
              // Icon(Icons.person)
            ],
          ),
        ),
      );
}
