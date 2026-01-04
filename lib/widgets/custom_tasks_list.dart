import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:taskaty_app/model/task_model.dart';
import 'package:taskaty_app/widgets/custom_task_item.dart';

class CustomTasksList extends StatelessWidget {
  const CustomTasksList({super.key, required this.tasks});

  final List<TaskModel> tasks;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: tasks.isEmpty
          ? Center(child: Lottie.asset("assets/images/Empty.json"))
          : ListView.separated(
              padding: const EdgeInsets.symmetric(vertical: 10),
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                final task = tasks[index];
                return CustomTaskItem(task: task);
              },
              separatorBuilder: (context, index) => const SizedBox(height: 12),
            ),
    );
  }
}
