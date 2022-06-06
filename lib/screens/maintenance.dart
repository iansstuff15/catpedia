import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class Maintenance extends StatelessWidget {
  static String id = "maintenance";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/maintenance.png',
              scale: 3.0,
            ),
            const SizedBox(height: 25.0),
            Text(
              'Screen is currently being fixed!\n'
              'Thank you for your understanding!',
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 18.0,
              ),
              textAlign: TextAlign.center,
            ),
            TextButton(
              onPressed: () => Navigator.pop(context),
              style: TextButton.styleFrom(
                primary: const Color(0xffEC5B5B),
              ),
              child: const Text(
                'Go back',
                style: TextStyle(fontSize: 16),
              ),
            )
          ],
        ),
      ),
    );
  }
}
