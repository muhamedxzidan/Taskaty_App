import 'package:flutter/material.dart';

class DaysContenerWidget extends StatelessWidget {
  const DaysContenerWidget({
    required this.days,
    required this.month,
    required this.number,
    required this.color,
    this.isActive = false,
    super.key,
  });

  final String days;
  final String number;
  final String month;
  final Color color;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: isActive ? color : Colors.white,
          border: Border.all(color: Colors.grey.withOpacity(0.2)),
        ),
        height: 100,
        width: 70,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              month,
              style: TextStyle(
                fontSize: 12,
                color: isActive ? Colors.white70 : Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              number,
              style: TextStyle(
                fontSize: 22,
                color: isActive ? Colors.white : Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              days,
              style: TextStyle(
                fontSize: 12,
                color: isActive ? Colors.white70 : Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
