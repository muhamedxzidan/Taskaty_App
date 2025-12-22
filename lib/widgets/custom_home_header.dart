import 'package:flutter/material.dart';
import 'package:taskaty_app/screens/auth_screen.dart';
import 'package:taskaty_app/widgets/custom_user_avatar.dart';

class CustomHomeHeader extends StatelessWidget {
  const CustomHomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello Zidan ",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),
              Text(
                "Have a nice day",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
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
          child: const CustomUserAvatar(
            icon: Icons.person,
            size: 20,
            radius: 20,
            color: Colors.black,
            iconColor: Colors.deepPurple,
          ),
        ),
        const Text("Zidan"),
      ],
    );
  }
}
