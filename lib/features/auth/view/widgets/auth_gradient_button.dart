
import 'package:firebase_complete/core/theme/app_pallete.dart';
import 'package:firebase_complete/features/auth/view/widgets/app_text_style.dart';
import 'package:flutter/material.dart';

class AuthGradientButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const AuthGradientButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: Pallete.gradientBackground,
          borderRadius: BorderRadius.circular(8)),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          shadowColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          fixedSize: const Size(395, 60),
        ),
        child: Text(
          text,
          style: AppTextStyles.bold(),
        ),
      ),
    );
  }
}
