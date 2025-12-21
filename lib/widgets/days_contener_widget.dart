import 'package:flutter/material.dart';

class DaysContenerWidget extends StatelessWidget {
  const DaysContenerWidget({
    required this.days,
    super.key,
    required this.color,
    required this.number,
    this.isActive = false,
  });
  final String days;
  final String number;
  final Color color;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(number, style: const TextStyle(fontSize: 20)),
          const SizedBox(height: 5),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: isActive
                  ? color
                  : const Color.fromARGB(255, 235, 209, 209),
            ),
            height: 80,
            width: double.infinity,
            child: Center(
              child: Text(days, style: const TextStyle(fontSize: 14)),
            ),
          ),
        ],
      ),
    );
  }
}
