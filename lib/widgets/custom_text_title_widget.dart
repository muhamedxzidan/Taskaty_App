import 'package:flutter/material.dart';

class CustomTextTitleWidget extends StatelessWidget {
  const CustomTextTitleWidget({super.key, required this.title, this.size});

  final String title;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: size,
        fontWeight: FontWeight.bold,
        color: const Color(0xff673ab7),
        letterSpacing: -0.5,
      ),
    );
  }
}
