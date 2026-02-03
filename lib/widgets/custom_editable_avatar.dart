import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:taskaty_app/widgets/custom_user_avatar.dart';

class CustomEditableAvatar extends StatelessWidget {
  const CustomEditableAvatar({
    super.key,
    required this.selectedImage,
    required this.currentImagePath,
    required this.onImagePick,
    this.size = 120,
  });

  final XFile? selectedImage;
  final String? currentImagePath;
  final VoidCallback onImagePick;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        CustomUserAvatar(
          size: size,
          radius: size / 2,
          backgroundImage: selectedImage != null
              ? FileImage(File(selectedImage!.path))
              : (currentImagePath != null
                    ? FileImage(File(currentImagePath!))
                    : null),
          color: Colors.deepPurple,
          iconColor: Colors.white,
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: InkWell(
            onTap: onImagePick,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.grey.shade300, width: 2),
              ),
              padding: const EdgeInsets.all(8),
              child: const Icon(
                Icons.camera_alt_outlined,
                size: 20,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
