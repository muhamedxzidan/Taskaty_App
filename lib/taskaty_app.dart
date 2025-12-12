import 'package:flutter/material.dart';
import 'package:taskaty_app/screens/splash_screen.dart';

class TaskatyApp extends StatelessWidget {
  const TaskatyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
