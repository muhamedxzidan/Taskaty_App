// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:lottie/lottie.dart';
import 'package:taskaty_app/model/user_model.dart';
import 'package:taskaty_app/screens/auth_screen.dart';
import 'package:taskaty_app/screens/tasks_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    homePage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset("assets/images/task2.json", width: 200),
              Lottie.asset("assets/images/task1.json"),

              const Text("It's Time To Get Organized"),
            ],
          ),
        ),
      ),
    );
  }

  void homePage() {
    Future.delayed(const Duration(seconds: 3), () {
      final userBox = Hive.box<UserModel>('user');
      final hasUser = userBox.isNotEmpty;

      if (hasUser) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => TasksScreen()),
        );
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => const AuthScreen()),
        );
      }
    });
  }
}
