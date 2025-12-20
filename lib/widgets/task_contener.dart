import 'package:flutter/material.dart';

class TaskContener extends StatelessWidget {
  final String title;
  final String description;
  final String date;
  final String time;
  final Color color;
  const TaskContener({
    required this.title,
    required this.description,
    required this.date,
    required this.time,
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: color,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const Icon(Icons.description, color: Colors.white, size: 20),

                Text(date),
                const Icon(Icons.access_time, color: Colors.white, size: 20),
                Text(time),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
