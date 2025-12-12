import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:taskaty_app/wedgets/avatar_widget.dart';
import 'package:taskaty_app/wedgets/butoom_widgets.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  XFile? image;

  final ImagePicker picker = ImagePicker();

  void pichImageFromGallery() async {
    image = await picker.pickImage(source: ImageSource.gallery);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Visibility(
              visible: (image != null),
              replacement: const AvatarWidget(
                icona: Icons.person,
                size: 190,
                radius: 120,
                color: Colors.black,
                iconColor: Colors.deepPurple,
              ),
              child: AvatarWidget(
                backgroundImage: FileImage(File(image!.path)),
                size: 190,
                radius: 120,
                color: Colors.black,
                iconColor: Colors.deepPurple,
              ),
            ),

            const SizedBox(height: 20),
            ButoomWidgets(
              text: "Upload From Gallery",
              onPressed: () {
                pichImageFromGallery();
              },
            ),
            const SizedBox(height: 20),
            ButoomWidgets(text: "Upload From Camera", onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
