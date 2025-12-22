import 'package:flutter/material.dart';
import 'package:taskaty_app/widgets/custom_task_card.dart';

class CustomTaskItem extends StatelessWidget {
  final String title;
  final String description;
  final Color color;
  final VoidCallback? onDismissed;

  const CustomTaskItem({
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
      child: CustomTaskCard(
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
