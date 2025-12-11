import 'package:flutter/material.dart';
import 'package:taskaty_app/wedgets/butoom_widgets.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 120,
              backgroundColor: Colors.black,
              child: Icon(Icons.person, size: 190),
            ),
            SizedBox(height: 20),
            ButoomWidgets(text: "Upload From Gallery", onPressed: () {}),
            SizedBox(height: 20),
            ButoomWidgets(text: "Upload From Camera", onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
