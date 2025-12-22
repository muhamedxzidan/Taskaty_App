import 'package:flutter/material.dart';

class CustomUserAvatar extends StatelessWidget {
  final IconData? icon;
  final double size;
  final double radius;
  final Color color;
  final Color iconColor;
  final ImageProvider? backgroundImage;

  const CustomUserAvatar({
    super.key,
    this.icon,
    required this.size,
    required this.radius,
    required this.color,
    required this.iconColor,
    this.backgroundImage,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: color,
      backgroundImage: backgroundImage,
      child: backgroundImage == null && icon != null
          ? Icon(icon!, size: size, color: iconColor)
          : null,
    );
  }
}
