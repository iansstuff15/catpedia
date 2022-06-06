import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class Maintenance extends StatelessWidget {
  static String id = "maintenance";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/maintenance.png',
              scale: 3.0,
            ),
            Text(
              'Screen is currently being fixed!'
              'Check back later to ',
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 16.0,
              ),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context),
              style: TextButton.styleFrom(
                primary: const Color(0xffEC5B5B),
              ),
              child: const Text(
                'Go back',
                style: TextStyle(fontSize: 12),
              ),
            )
          ],
        ),
      ),
    );
  }
}
