import 'package:flutter/material.dart';
import 'package:taskaty_app/screens/splash_screen.dart';

class TaskatyApp extends StatelessWidget {
  const TaskatyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xffffffff)),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
