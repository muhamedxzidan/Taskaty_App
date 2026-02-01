import 'dart:io';

import 'package:flutter/material.dart';
import 'package:taskaty_app/model/user_model.dart';
import 'package:taskaty_app/screens/auth_screen.dart';
import 'package:taskaty_app/widgets/custom_user_avatar.dart';

class CustomHomeHeader extends StatelessWidget {
  const CustomHomeHeader({super.key, required this.user});
  final UserModel user;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello ${user.name} ",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff673ab7),
                ),
              ),
              const Text(
                "Have a nice day",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff673ab7),
                ),
              ),
            ],
          ),
        ),
        _buildUserAvatar(context),
      ],
    );
  }

  Widget _buildUserAvatar(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AuthScreen()),
          ),
          child: user.image != null
              ? CustomUserAvatar(
                  backgroundImage: FileImage(File(user.image!)),
                  size: 20,
                  radius: 20,
                  color: const Color(0xff000000),
                  iconColor: const Color(0xff673ab7),
                )
              : const CustomUserAvatar(
                  icon: Icons.person,
                  size: 20,
                  radius: 20,
                  color: Color(0xff000000),
                  iconColor: Color(0xff673ab7),
                ),
        ),
        Text(user.name),
      ],
    );
  }
}
