import 'package:flutter/material.dart';
import 'package:taskaty_app/screens/auth_screen.dart';
import 'package:taskaty_app/widgets/avatar_widget.dart';
import 'package:taskaty_app/widgets/butoom_widgets.dart';
import 'package:taskaty_app/widgets/days_contener_widget.dart';
import 'package:taskaty_app/widgets/task_item.dart';

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
              _buildHeader(context),
              const Divider(
                thickness: 2,
                color: Color.fromARGB(255, 201, 120, 120),
              ),
              _buildDateAndAddSection(),
              const SizedBox(height: 10),
              _buildDaysList(),
              const SizedBox(height: 10),
              _buildTasksList(),
            ],
          ),
        ),
      ),
    );
  }

  // --- UI Components ---

  Widget _buildHeader(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello Zidan ",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),
              Text(
                "Have a nice day",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),
            ],
          ),
        ),
        _buildUserAvatar(context),
      ],
    );
  }

  Widget _buildUserAvatar(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AuthScreen()),
          ),
          child: const AvatarWidget(
            icon: Icons.person,
            size: 20,
            radius: 20,
            color: Colors.black,
            iconColor: Colors.deepPurple,
          ),
        ),
        const Text("Zidan"),
      ],
    );
  }

  Widget _buildDateAndAddSection() {
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
        ButoomWidgets(text: " +  Add Task", onPressed: () {}),
      ],
    );
  }

  Widget _buildDaysList() {
    DateTime now = DateTime.now();
    List<String> months = [
      "Jan",
      "Feb",
      "Mar",
      "Apr",
      "May",
      "Jun",
      "Jul",
      "Aug",
      "Sep",
      "Oct",
      "Nov",
      "Dec",
    ];
    String currentMonth = months[now.month - 1];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _dayButton(
            "saturday",
            "Sat",
            "${now.day}",
            currentMonth,
            Colors.deepPurple,
          ),
          _dayButton(
            "sunday",
            "Sun",
            "${now.day + 1}",
            currentMonth,
            Colors.deepPurple,
          ),
          _dayButton(
            "monday",
            "Mon",
            "${now.day + 2}",
            currentMonth,
            const Color.fromARGB(255, 235, 66, 117),
          ),
          _dayButton(
            "tuesday",
            "Tue",
            "${now.day + 3}",
            currentMonth,
            const Color.fromARGB(255, 235, 66, 117),
          ),
        ],
      ),
    );
  }

  Widget _dayButton(
    String id,
    String label,
    String num,
    String month,
    Color color,
  ) {
    return InkWell(
      onTap: () => setState(() => selectedDay = id),
      child: DaysContenerWidget(
        days: label,
        number: num,
        month: month,
        color: color,
        isActive: selectedDay == id,
      ),
    );
  }

  Widget _buildTasksList() {
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
