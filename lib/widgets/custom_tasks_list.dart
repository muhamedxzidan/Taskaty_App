import 'package:flutter/material.dart';
import 'package:taskaty_app/widgets/custom_task_item.dart';

class CustomTasksList extends StatelessWidget {
  const CustomTasksList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: const [
          SizedBox(height: 10),
          CustomTaskItem(
            title: "Flutter Task 1",
            description: "Learning Basics",
            color: Color(0xff3C0BC2),
          ),
          SizedBox(height: 10),
          CustomTaskItem(
            title: "Flutter Task 2",
            description: "UI Design",
            color: Color(0xffE216AF),
          ),
          SizedBox(height: 10),
          CustomTaskItem(
            title: "Flutter Task 3",
            description: "State Management",
            color: Color(0xffDDAC0B),
          ),
          SizedBox(height: 10),
          CustomTaskItem(
            title: "Flutter Task 4",
            description: "API Integration",
            color: Color(0xff13C03E),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
