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
        focusColor: Colors.deepPurple,
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          borderSide: BorderSide(color: Colors.deepPurple),
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          borderSide: BorderSide(color: Colors.grey),
        ),
        labelText: label,
        suffixIcon: Icon(icon),
      ),
      validator: validator,
    );
  }
}
