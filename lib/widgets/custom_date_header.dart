import 'package:flutter/material.dart';
import 'package:taskaty_app/screens/create_task.dart';
import 'package:taskaty_app/widgets/custom_button.dart';

class CustomDateHeader extends StatelessWidget {
  const CustomDateHeader({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${now.month}/${now.day}/${now.year}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "Today",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        CustomButton(
          width: 150,
          text: "+ Add Task",
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const CreateTask()),
            );
          },
        ),
      ],
    );
  }
}
