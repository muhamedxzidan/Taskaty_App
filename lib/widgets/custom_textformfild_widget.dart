import 'package:flutter/material.dart';

class CustomTextformfildWidget extends StatelessWidget {
  const CustomTextformfildWidget({
    super.key,
    required this.hintText,
    required this.label,
    this.errorText,
    this.initialValue,
    this.validator,
    this.maxLines = 1,
    this.icon,
  });
  final String hintText;
  final String label;
  final String? errorText;
  final String? initialValue;
  final String? Function(String?)? validator;
  final int maxLines;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: label,
        labelStyle: const TextStyle(
          color: Colors.deepPurple,
          fontWeight: FontWeight.w500,
        ),
        hintStyle: TextStyle(color: Colors.grey.shade400),
        filled: true,
        fillColor: Colors.grey.shade50,
        suffixIcon: icon != null
            ? Icon(icon, color: Colors.deepPurple, size: 22)
            : null,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Colors.deepPurple, width: 2),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 18,
        ),
      ),
      validator: validator,
    );
  }
}
