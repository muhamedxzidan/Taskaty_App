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
  final MaterialColor color;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Column(
            children: [
              Text(number, style: const TextStyle(fontSize: 20)),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: isActive ? color : Colors.grey,
                ),
                height: 100,
                width: 100,
                child: Center(
                  child: Text(days, style: const TextStyle(fontSize: 20)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
