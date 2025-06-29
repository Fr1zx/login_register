import 'package:auth_app/widgets/auth_button.dart';
import 'package:auth_app/widgets/auth_form.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});
  final TextEditingController _emailContoller = TextEditingController();
  final TextEditingController _passwordContoller = TextEditingController();
  final TextEditingController _repeatPasswordContoller =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset("assets/register_logo.png", height: 210),
                const SizedBox(height: 15),
                const Text(
                  "Create an Account",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                AuthForm(
                  authController: _emailContoller,
                  hint: "Email",
                  isPassword: false,
                ),
                const SizedBox(height: 20),
                AuthForm(
                  authController: _passwordContoller,
                  hint: "Password",
                  isPassword: true,
                ),
                const SizedBox(height: 20),
                AuthForm(
                  authController: _repeatPasswordContoller,
                  hint: "Repeat Password",
                  isPassword: true,
                ),
            
                const SizedBox(height: 30),
                AuthButton(label: "Register"),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already have an account?",
                      style: TextStyle(fontSize: 14),
                    ),
                    const SizedBox(width: 7),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        "Login Now",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
