import 'package:flutter/material.dart';
import 'package:taskaty_app/widgets/days_container_widget.dart';

class DaysListWidget extends StatelessWidget {
  final String selectedDay;
  final Function(String) onDaySelected;

  const DaysListWidget({
    super.key,
    required this.selectedDay,
    required this.onDaySelected,
  });

  @override
  Widget build(BuildContext context) {
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
      onTap: () => onDaySelected(id),
      child: DaysContainerWidget(
        days: label,
        number: num,
        month: month,
        color: color,
        isActive: selectedDay == id,
      ),
    );
  }
}
