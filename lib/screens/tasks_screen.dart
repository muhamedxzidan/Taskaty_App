import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tasks Screen")),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Lottie.asset("assets/images/login_tasks.json")],
          ),
        ),
      ),
    );
  }
}
