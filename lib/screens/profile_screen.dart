import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:image_picker/image_picker.dart';
import 'package:taskaty_app/model/user_model.dart';
import 'package:taskaty_app/widgets/custom_profile_info_row.dart';
import 'package:taskaty_app/widgets/custom_user_avatar.dart';
import 'package:taskaty_app/widgets/edit_profile_bottom_sheet.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key, required this.user});
  final UserModel user;

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late TextEditingController _userNameController;
  final _formKey = GlobalKey<FormState>();
  final ImagePicker _picker = ImagePicker();
  XFile? _selectedImage;

  @override
  void initState() {
    super.initState();
    _userNameController = TextEditingController(text: widget.user.name);
  }

  @override
  void dispose() {
    _userNameController.dispose();
    super.dispose();
  }

  Future<void> _pickImageFromGallery() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        _selectedImage = image;
      });
    }
  }

  void _updateUserProfile() {
    if (_formKey.currentState?.validate() ?? false) {
      final updatedName = _userNameController.text.trim();

      final userBox = Hive.box<UserModel>('user');
      final userIndex = userBox.values.toList().indexOf(widget.user);

      if (userIndex != -1) {
        userBox.putAt(
          userIndex,
          UserModel(
            name: updatedName,
            image: _selectedImage?.path ?? widget.user.image,
          ),
        );

        setState(() {
          _selectedImage = null;
        });

        Navigator.pop(context);

        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Profile updated successfully'),
            backgroundColor: Color(0xff673ab7),
            duration: Duration(seconds: 2),
          ),
        );
      }
    }
  }

  void _showEditProfileModal(UserModel currentUser) {
    _userNameController.text = currentUser.name;
    _selectedImage = null;

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setModalState) {
            return EditProfileBottomSheet(
              formKey: _formKey,
              nameController: _userNameController,
              selectedImage: _selectedImage,
              currentImagePath: currentUser.image,
              onImagePick: _pickImageFromGallery,
              onUpdate: _updateUserProfile,
              setModalState: setModalState,
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final currentUser = Hive.box<UserModel>('user').getAt(0)!;

    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 40),
            CustomUserAvatar(
              size: 200,
              radius: 100,
              backgroundImage: currentUser.image != null
                  ? FileImage(File(currentUser.image!))
                  : null,
              color: Colors.deepPurple,
              iconColor: Colors.white,
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Divider(thickness: 2, color: Colors.grey.shade300),
            ),
            const SizedBox(height: 24),
            CustomProfileInfoRow(
              userName: currentUser.name,
              onEditTap: () => _showEditProfileModal(currentUser),
            ),
          ],
        ),
      ),
    );
  }
}
