import 'package:flutter/material.dart';
import 'package:taskaty_app/model/task_model.dart';
import 'package:taskaty_app/widgets/custom_date_header.dart';
import 'package:taskaty_app/widgets/custom_days_list.dart';
import 'package:taskaty_app/widgets/custom_home_header.dart';
import 'package:taskaty_app/widgets/custom_tasks_list.dart';

// ignore: must_be_immutable
class TasksScreen extends StatefulWidget {
  TasksScreen({super.key, this.isActive = false});

  @override
  State<TasksScreen> createState() => _TasksScreenState();
  bool isActive;
}

class _TasksScreenState extends State<TasksScreen> {
  String selectedDay = "saturday";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const CustomHomeHeader(),
              const Divider(thickness: 2, color: Color(0xffC97878)),
              const CustomDateHeader(),
              const SizedBox(height: 10),
              CustomDaysList(
                selectedDay: selectedDay,
                onDaySelected: (day) {
                  setState(() {
                    selectedDay = day;
                  });
                },
              ),
              const SizedBox(height: 10),
              CustomTasksList(tasks: tasksList),
            ],
          ),
        ),
      ),
    );
  }
}
