import 'package:flutter/material.dart';
import 'package:taskaty_app/model/task_model.dart';

class CustomTaskItem extends StatelessWidget {
  final TaskModel task;
  final VoidCallback? onDismissed;

  const CustomTaskItem({super.key, required this.task, this.onDismissed});

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: UniqueKey(),
      background: _buildDismissBackground(
        Alignment.centerLeft,
        const Color(0xfff44336),
        Icons.delete,
      ),
      secondaryBackground: _buildDismissBackground(
        Alignment.centerRight,
        const Color(0xff4caf50),
        Icons.check,
      ),
      onDismissed: (direction) => onDismissed?.call(),
      child: Container(
        height: 120,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: task.color,
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      task.title,
                      style: const TextStyle(
                        color: Color(0xffffffff),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        const Icon(
                          Icons.calendar_month,
                          color: Color(0xb3ffffff),
                          size: 16,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          task.date,
                          style: const TextStyle(
                            color: Color(0xb3ffffff),
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(width: 16),
                        const Icon(
                          Icons.access_time,
                          color: Color(0xb3ffffff),
                          size: 16,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          task.time,
                          style: const TextStyle(
                            color: Color(0xb3ffffff),
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(
                      task.description,
                      style: const TextStyle(
                        color: Color(0xb3ffffff),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 12),
              Container(
                width: 1,
                height: double.infinity,
                color: const Color(0x3dffffff),
              ),
              const SizedBox(width: 8),
              const RotatedBox(
                quarterTurns: 3,
                child: Text(
                  "TO-DO",
                  style: TextStyle(
                    color: Color(0xb3ffffff),
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                  ),
                ),
              ),
            ],
          ),
        ),
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
      child: Icon(icon, color: const Color(0xffffffff)),
    );
  }
}
