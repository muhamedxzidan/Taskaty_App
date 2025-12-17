import 'package:flutter/material.dart';
import 'package:taskaty_app/widgets/avatar_widget.dart';
import 'package:taskaty_app/widgets/butoom_widgets.dart';
import 'package:taskaty_app/widgets/days_contener_widget.dart';

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
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "October 30, 2025",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
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

              Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        selectedDay = "saturday";
                      });
                    },
                    child: DaysContenerWidget(
                      days: "saturday",
                      number: "1",
                      color: selectedDay == "saturday"
                          ? Colors.deepPurple
                          : Colors.grey,
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
                      color: selectedDay == "sunday"
                          ? Colors.deepPurple
                          : Colors.grey,
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
                      color: selectedDay == "monday"
                          ? Colors.deepPurple
                          : Colors.grey,
                      isActive: selectedDay == "monday",
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Container(height: 70, width: 50, color: Colors.red),
                    const SizedBox(height: 10),
                    Container(height: 50, width: 50, color: Colors.green),
                    const SizedBox(height: 10),
                    Container(height: 50, width: 50, color: Colors.blue),
                    const SizedBox(height: 10),
                    Container(height: 50, width: 50, color: Colors.yellow),
                    const SizedBox(height: 10),
                    Container(height: 50, width: 50, color: Colors.orange),
                    const SizedBox(height: 10),
                    Container(height: 50, width: 50, color: Colors.purple),
                    const SizedBox(height: 10),
                    Container(height: 50, width: 50, color: Colors.pink),
                    const SizedBox(height: 10),
                    Container(height: 50, width: 50, color: Colors.black),
                    const SizedBox(height: 10),
                    Container(height: 50, width: 50, color: Colors.white),
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
