import 'package:flutter/material.dart';
import 'package:taskaty_app/widgets/task_item.dart';

class TasksListWidget extends StatelessWidget {
  const TasksListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: const [
          SizedBox(height: 10),
          TaskItem(
            title: "Flutter Task 1",
            description: "Learning Basics",
            color: Color.fromARGB(255, 60, 11, 194),
          ),
          SizedBox(height: 10),
          TaskItem(
            title: "Flutter Task 2",
            description: "UI Design",
            color: Color.fromARGB(255, 226, 22, 175),
          ),
          SizedBox(height: 10),
          TaskItem(
            title: "Flutter Task 3",
            description: "State Management",
            color: Color.fromARGB(255, 221, 172, 11),
          ),
          SizedBox(height: 10),
          TaskItem(
            title: "Flutter Task 4",
            description: "API Integration",
            color: Color.fromARGB(255, 19, 192, 62),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
