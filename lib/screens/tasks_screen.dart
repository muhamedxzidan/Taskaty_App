import 'package:flutter/material.dart';
import 'package:taskaty_app/widgets/date_section.dart';
import 'package:taskaty_app/widgets/days_list_widget.dart';
import 'package:taskaty_app/widgets/home_header.dart';
import 'package:taskaty_app/widgets/tasks_list_widget.dart';

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
              const HomeHeader(),
              const Divider(
                thickness: 2,
                color: Color.fromARGB(255, 201, 120, 120),
              ),
              const DateSection(),
              const SizedBox(height: 10),
              DaysListWidget(
                selectedDay: selectedDay,
                onDaySelected: (day) {
                  setState(() {
                    selectedDay = day;
                  });
                },
              ),
              const SizedBox(height: 10),
              const TasksListWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
