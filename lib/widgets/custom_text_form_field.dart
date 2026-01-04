import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    required this.label,
    this.errorText,
    this.validator,
    this.maxLines = 1,
    this.icon,
    this.controller,
    this.onTap,
    this.readOnly = false,
  });
  final String hintText;
  final bool readOnly;
  final String label;
  final String? errorText;
  final String? Function(String?)? validator;
  final int maxLines;
  final IconData? icon;
  final TextEditingController? controller;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "This is req";
        }
        return null;
      },

      onTap: onTap,

      readOnly: readOnly,
      controller: controller,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: label,
        labelStyle: const TextStyle(
          color: Color(0xff673ab7),
          fontWeight: FontWeight.w500,
        ),

        hintStyle: const TextStyle(color: Color(0xffbdbdbd)),
        filled: true,
        fillColor: const Color(0xfffafafa),
        suffixIcon: icon != null
            ? Icon(icon, color: const Color(0xff673ab7), size: 22)
            : null,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Color(0xff673ab7), width: 2),
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Color(0xffe0e0e0)),
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 18,
        ),
      ),
    );
  }
}
