import 'package:flutter/material.dart';

class CustomDaysList extends StatelessWidget {
  final String selectedDay;
  final Function(String) onDaySelected;

  const CustomDaysList({
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
            const Color(0xff673ab7),
          ),
          _dayButton(
            "sunday",
            "Sun",
            "${now.day + 1}",
            currentMonth,
            const Color(0xff673ab7),
          ),
          _dayButton(
            "monday",
            "Mon",
            "${now.day + 2}",
            currentMonth,
            const Color(0xffEB4275),
          ),
          _dayButton(
            "tuesday",
            "Tue",
            "${now.day + 3}",
            currentMonth,
            const Color(0xffEB4275),
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
    bool isActive = selectedDay == id;
    return InkWell(
      onTap: () => onDaySelected(id),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: isActive ? color : const Color(0xffffffff),
            border: Border.all(color: const Color(0xffeeeeee)),
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
                  color: isActive
                      ? const Color(0xb3ffffff)
                      : const Color(0xff757575),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                num,
                style: TextStyle(
                  fontSize: 22,
                  color: isActive
                      ? const Color(0xffffffff)
                      : const Color(0xff000000),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                label,
                style: TextStyle(
                  fontSize: 12,
                  color: isActive
                      ? const Color(0xb3ffffff)
                      : const Color(0xff9e9e9e),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
