import 'package:flutter/material.dart';
import 'package:taskaty_app/widgets/button_widget.dart';

class DateSection extends StatelessWidget {
  const DateSection({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "${now.month}/${now.day}/${now.year}",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Text(
              "Today",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const Spacer(),
        ButtonWidget(text: " +  Add Task", onPressed: () {}),
      ],
    );
  }
}
