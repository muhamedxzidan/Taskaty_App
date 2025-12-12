import 'package:flutter/material.dart';

class AvatarWidget extends StatelessWidget {
  final IconData? icona;
  final double size;
  final double radius;
  final Color color;
  final Color iconColor;
  final ImageProvider? backgroundImage;
  const AvatarWidget({
    super.key,
    this.icona,
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
      child: backgroundImage == null && icona != null
          ? Icon(icona!, size: size, color: iconColor)
          : null,
    );
  }
}
