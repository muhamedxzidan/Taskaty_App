import 'package:flutter/material.dart';
import 'package:taskaty_app/widgets/avatar_widget.dart';
import 'package:taskaty_app/widgets/butoom_widgets.dart';
import 'package:taskaty_app/widgets/days_contener_widget.dart';
import 'package:taskaty_app/widgets/task_contener.dart';

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
    DateTime now = DateTime.now();
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello Zidan ",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurple,
                          ),
                        ),
                        Text(
                          "Have a nice day",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurple,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      AvatarWidget(
                        icon: Icons.person,
                        size: 20,
                        radius: 20,
                        color: Colors.black,
                        iconColor: Colors.deepPurple,
                      ),
                      Text("Zidan"),
                    ],
                  ),
                ],
              ),
              const Divider(thickness: 2, color: Colors.grey),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
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
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      ButoomWidgets(text: " +  Add Task", onPressed: () {}),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          selectedDay = "saturday";
                        });
                      },
                      child: DaysContenerWidget(
                        days: "${now.month}",
                        number: "${now.day}",
                        color: Colors.deepPurple,
                        isActive: selectedDay == "saturday",
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          selectedDay = "sunday";
                        });
                      },
                      child: DaysContenerWidget(
                        days: "sunday",
                        number: "2",
                        color: Colors.deepPurple,
                        isActive: selectedDay == "sunday",
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          selectedDay = "monday";
                        });
                      },
                      child: DaysContenerWidget(
                        days: "monday",
                        number: "3",
                        color: Colors.deepPurple,
                        isActive: selectedDay == "monday",
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          selectedDay = "tuesday";
                        });
                      },
                      child: DaysContenerWidget(
                        days: "tuesday",
                        number: "4",
                        color: Colors.deepPurple,
                        isActive: selectedDay == "tuesday",
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    const SizedBox(height: 10),
                    TaskContener(
                      title: "Flutter Task 1",
                      time: "${now.hour.toString()}:${now.minute.toString()}",
                      date: "2025-12-20",
                      description: "Flutter Task 1",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
