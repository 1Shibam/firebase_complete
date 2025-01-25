
import 'package:firebase_complete/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';
import '../widgets/auth_widgets_export.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  //! Text controllers for text fields
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  // form key
  final formKey = GlobalKey<FormState>();

  //! Focus nodes for text fields
  final FocusNode nameFocusNode = FocusNode();
  final FocusNode emailFocusNode = FocusNode();
  final FocusNode passFocusNode = FocusNode();

  @override
  void dispose() {
    //! disposing controller and focus nodes

    nameController.dispose();
    emailController.dispose();
    passController.dispose();
    nameFocusNode.dispose();
    emailFocusNode.dispose();
    passFocusNode.dispose();
    formKey.currentState!.validate();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 100,
                ),
                Text(
                  'S I G N   U P',
                  style: AppTextStyles.bold(fontSize: 40),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  controller: nameController,
                  focusNode: nameFocusNode,
                  hintText: 'Name',
                  labelText: 'Name',
                ),
                CustomTextField(
                  controller: emailController,
                  focusNode: emailFocusNode,
                  hintText: 'Email',
                  labelText: 'Email',
                ),
                PassCustomTextField(
                    passController: passController,
                    passFocusNode: passFocusNode),
                const SizedBox(
                  height: 20,
                ),
                AuthGradientButton(
                  text: 'Sign Up', onTap: () {  },
                ),
                const SizedBox(
                  height: 20,
                ),
                RichText(
                    text: TextSpan(
                        text: 'Already have and account?',
                        style: AppTextStyles.normal(),
                        children: [
                      TextSpan(
                          text: ' Sign in',
                          style:
                              AppTextStyles.normal(color: Pallete.buttonColor))
                    ]))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
