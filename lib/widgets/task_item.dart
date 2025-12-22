import 'package:flutter/material.dart';
import 'package:taskaty_app/widgets/task_container.dart';

class TaskItem extends StatelessWidget {
  final String title;
  final String description;
  final Color color;
  final VoidCallback? onDismissed;

  const TaskItem({
    super.key,
    required this.title,
    required this.description,
    required this.color,
    this.onDismissed,
  });

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    return Dismissible(
      key: UniqueKey(),
      background: _buildDismissBackground(
        Alignment.centerLeft,
        Colors.red,
        Icons.delete,
      ),
      secondaryBackground: _buildDismissBackground(
        Alignment.centerRight,
        Colors.green,
        Icons.check,
      ),
      onDismissed: (direction) => onDismissed?.call(),
      child: TaskContainer(
        title: title,
        time: "${now.hour}:${now.minute}",
        date: "${now.year}-${now.month}-${now.day}",
        description: description,
        color: color,
      ),
    );
  }

  Widget _buildDismissBackground(
    Alignment alignment,
    Color color,
    IconData icon,
  ) {
    return Container(
      alignment: alignment,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      color: color,
      child: Icon(icon, color: Colors.white),
    );
  }
}
