import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:taskaty_app/screens/tasks_screen.dart';
import 'package:taskaty_app/widgets/custom_button.dart';
import 'package:taskaty_app/widgets/custom_text_form_field.dart';
import 'package:taskaty_app/widgets/custom_user_avatar.dart';

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

  var register = GlobalKey<FormState>();

  final TextEditingController regUserControl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },

        child: Scaffold(
          body: SingleChildScrollView(
            child: Center(
              child: Form(
                autovalidateMode: AutovalidateMode.onUserInteraction,

                key: register,

                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Visibility(
                          visible: (image != null),
                          replacement: InkWell(
                            onTap: () {
                              pickImageFromGallery();
                            },
                            child: const CustomUserAvatar(
                              icon: Icons.person,
                              size: 190,
                              radius: 120,
                              color: Color(0xff000000),
                              iconColor: Color(0xff673ab7),
                            ),
                          ),
                          child: CustomUserAvatar(
                            backgroundImage: FileImage(File(image?.path ?? "")),
                            size: 190,
                            radius: 120,
                            color: const Color(0xff000000),
                            iconColor: const Color(0xff673ab7),
                          ),
                        ),

                        const SizedBox(height: 20),
                        CustomButton(
                          text: "Upload From Gallery",
                          onPressed: () {
                            pickImageFromGallery();
                          },
                        ),
                        const SizedBox(height: 20),
                        CustomButton(
                          text: "Upload From Camera",
                          onPressed: () {
                            pickImageFromCamera();
                          },
                        ),
                        const SizedBox(height: 20),
                        const Divider(thickness: 2),

                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: CustomTextFormField(
                            controller: regUserControl,
                            hintText: "Enter User Name",
                            label: "User Name",
                          ),
                        ),

                        const SizedBox(height: 20),

                        Center(
                          child: CustomButton(
                            width: double.maxFinite,
                            text: "Register",
                            onPressed: () {
                              if (!register.currentState!.validate()) return;

                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => TasksScreen(),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
