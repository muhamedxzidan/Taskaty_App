import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:taskaty_app/model/task_model.dart';
import 'package:taskaty_app/model/user_model.dart';
import 'package:taskaty_app/screens/create_task.dart';
import 'package:taskaty_app/widgets/custom_button.dart';
import 'package:taskaty_app/widgets/custom_filter_buttons.dart';
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
  String selectedFilter = "all";

  @override
  Widget build(BuildContext context) {
    final user = Hive.box<UserModel>('user').getAt(0)!;

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              CustomHomeHeader(
                user: user,
                onProfileUpdate: () {
                  setState(() {});
                },
              ),
              const Divider(thickness: 2, color: Color(0xffC97878)),
              CustomFilterButtons(
                selectedFilter: selectedFilter,
                onFilterChanged: (filter) {
                  setState(() {
                    selectedFilter = filter;
                  });
                },
              ),
              const SizedBox(height: 10),
              CustomButton(
                width: double.infinity,
                text: "+ Add Task",
                onPressed: () async {
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const CreateTask()),
                  );
                  if (result == true) {
                    setState(() {});
                  }
                },
              ),
              const SizedBox(height: 10),
              CustomTasksList(
                tasks: Hive.box<TaskModel>('tasks').values
                    .where((task) {
                      if (selectedFilter == 'all') {
                        return true;
                      }
                      if (selectedFilter == 'todo') {
                        return task.status == 'TO-DO';
                      }
                      if (selectedFilter == 'complete') {
                        return task.status == 'DONE';
                      }
                      return true;
                    })
                    .toList()
                    .reversed
                    .toList(),
                onTaskUpdated: () {
                  setState(() {});
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
