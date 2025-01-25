
import 'package:firebase_complete/core/theme/app_pallete.dart';
import 'package:firebase_complete/features/auth/view/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//provider for password eye
final passVisibilityProvider = AutoDisposeStateProvider((ref) => true);

class PassCustomTextField extends StatelessWidget {
  const PassCustomTextField({
    super.key,
    required this.passController,
    required this.passFocusNode,
  });

  final TextEditingController passController;
  final FocusNode passFocusNode;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final visible = ref.watch(passVisibilityProvider);
        return CustomTextField(
            isObscured: visible,
            controller: passController,
            focusNode: passFocusNode,
            hintText: 'Password',
            labelText: 'Passowrd',
            suffixIcon: visible
                ? GestureDetector(
                    onTap: () {
                      ref.read(passVisibilityProvider.notifier).state =
                          !visible;
                    },
                    child: const Icon(
                      Icons.visibility_off,
                    ))
                : GestureDetector(
                    onTap: () {
                      ref.read(passVisibilityProvider.notifier).state =
                          !visible;
                    },
                    child: const Icon(
                      Icons.visibility,
                      color: Pallete.buttonColor,
                    )));
      },
    );
  }
}
