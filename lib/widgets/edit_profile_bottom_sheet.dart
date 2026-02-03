import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:taskaty_app/widgets/custom_button.dart';
import 'package:taskaty_app/widgets/custom_editable_avatar.dart';
import 'package:taskaty_app/widgets/custom_text_form_field.dart';

class EditProfileBottomSheet extends StatelessWidget {
  const EditProfileBottomSheet({
    super.key,
    required this.formKey,
    required this.nameController,
    required this.selectedImage,
    required this.currentImagePath,
    required this.onImagePick,
    required this.onUpdate,
    required this.setModalState,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController nameController;
  final XFile? selectedImage;
  final String? currentImagePath;
  final Future<void> Function() onImagePick;
  final VoidCallback onUpdate;
  final StateSetter setModalState;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 20,
        right: 20,
        top: 20,
        bottom: MediaQuery.of(context).viewInsets.bottom + 20,
      ),
      child: Form(
        key: formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Edit Profile',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xff673ab7),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: CustomEditableAvatar(
                selectedImage: selectedImage,
                currentImagePath: currentImagePath,
                onImagePick: () async {
                  await onImagePick();
                  setModalState(() {});
                },
              ),
            ),
            const SizedBox(height: 20),
            CustomTextFormField(
              hintText: "Enter New User Name",
              label: "User Name",
              controller: nameController,
            ),
            const SizedBox(height: 20),
            CustomButton(text: "Update", onPressed: onUpdate),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
