import 'package:firebase_complete/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';
import '../widgets/auth_widgets_export.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<LoginPage> {
  //! Text controllers for text fields

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  // form key
  final formKey = GlobalKey<FormState>();

  //! Focus nodes for text fields

  final FocusNode emailFocusNode = FocusNode();
  final FocusNode passFocusNode = FocusNode();

  @override
  void dispose() {
    //! disposing controller and focus nodes

    emailController.dispose();
    passController.dispose();

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
                  height: 160,
                ),
                Text(
                  'S I G N   I N',
                  style: AppTextStyles.bold(fontSize: 40),
                ),
                const SizedBox(
                  height: 20,
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
                  text: 'SIGN  IN',
                  onTap: () {},
                ),
                const SizedBox(
                  height: 20,
                ),
                RichText(
                    text: TextSpan(
                        text: 'Don\'t have an account?',
                        style: AppTextStyles.normal(),
                        children: [
                      TextSpan(
                          text: ' Sign In',
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
