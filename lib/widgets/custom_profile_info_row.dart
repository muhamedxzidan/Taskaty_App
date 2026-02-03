import 'package:flutter/material.dart';

class CustomProfileInfoRow extends StatelessWidget {
  const CustomProfileInfoRow({
    super.key,
    required this.userName,
    required this.onEditTap,
  });

  final String userName;
  final VoidCallback onEditTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.person, size: 24, color: Color(0xff673ab7)),
        const SizedBox(width: 8),
        Text(
          userName,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color(0xff673ab7),
          ),
        ),
        const SizedBox(width: 12),
        InkWell(
          onTap: onEditTap,
          child: const Icon(Icons.edit, size: 24, color: Color(0xff673ab7)),
        ),
      ],
    );
  }
}
