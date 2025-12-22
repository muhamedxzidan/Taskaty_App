import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:taskaty_app/screens/tasks_screen.dart';
import 'package:taskaty_app/widgets/avatar_widget.dart';
import 'package:taskaty_app/widgets/button_widget.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  XFile? image;
  final TextEditingController textFormFieldController = TextEditingController();

  final ImagePicker picker = ImagePicker();

  void pickImageFromGallery() async {
    image = await picker.pickImage(source: ImageSource.gallery);
    setState(() {});
  }

  void pickImageFromCamera() async {
    image = await picker.pickImage(source: ImageSource.camera);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Visibility(
                visible: (image != null),
                replacement: InkWell(
                  onTap: () {
                    pickImageFromGallery();
                  },
                  child: const AvatarWidget(
                    icon: Icons.person,
                    size: 190,
                    radius: 120,
                    color: Colors.black,
                    iconColor: Colors.deepPurple,
                  ),
                ),
                child: AvatarWidget(
                  backgroundImage: FileImage(File(image?.path ?? "")),
                  size: 190,
                  radius: 120,
                  color: Colors.black,
                  iconColor: Colors.deepPurple,
                ),
              ),

              const SizedBox(height: 20),
              ButtonWidget(
                text: "Upload From Gallery",
                onPressed: () {
                  pickImageFromGallery();
                },
              ),
              const SizedBox(height: 20),
              ButtonWidget(
                text: "Upload From Camera",
                onPressed: () {
                  pickImageFromCamera();
                },
              ),
              const SizedBox(height: 20),
              const Divider(thickness: 2),

              Padding(
                padding: const EdgeInsets.all(16),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Your Name",
                  ),
                ),
              ),

              const SizedBox(height: 20),

              ButtonWidget(
                text: "Register",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TasksScreen()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
