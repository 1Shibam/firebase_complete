// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:firebase_complete/features/auth/view/widgets/app_text_style.dart';
import 'package:flutter/material.dart';



class CustomTextField extends StatelessWidget {
  final String hintText;
  final String labelText;
  final TextEditingController controller;
  final FocusNode focusNode;
  final Widget? suffixIcon;
  bool isObscured;

  CustomTextField(
      {super.key,
      required this.hintText,
      required this.labelText,
      required this.controller,
      required this.focusNode,
      this.suffixIcon,
      this.isObscured = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: TextFormField(
        validator: (value) {
          if (value!.trim().isEmpty) {
            return '$hintText can\'t be empty';
          }
          return null;
        },
        obscureText: isObscured,
        style: AppTextStyles.normal(),
        decoration: InputDecoration(
            hintText: hintText, labelText: labelText, suffix: suffixIcon),
      ),
    );
  }
}
