import 'package:flutter/material.dart';

class AuthForm extends StatefulWidget {
  final TextEditingController authController;
  final String hint;
  final bool isPassword;

  const AuthForm({
    super.key,
    required this.authController,
    required this.hint,
    required this.isPassword,
  });

  @override
  State<AuthForm> createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return TextField(
      obscureText: widget.isPassword ? !isVisible : false,
      decoration: InputDecoration(
        suffixIcon:
            widget.isPassword
                ? IconButton(
                  onPressed: () {
                    setState(() {
                      isVisible = !isVisible;
                    });
                  },
                  icon: Icon(
                    isVisible ? Icons.visibility : Icons.visibility_off,
                    color: const Color.fromARGB(255, 168, 168, 168),
                  ),
                )
                : null,
        filled: true,
        fillColor: theme.hintColor.withOpacity(0.09),
        hintText: widget.hint,
        hintStyle: TextStyle(color: theme.hintColor.withOpacity(0.3)),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(8),
        ),
        hoverColor: Colors.transparent,
      ),
    );
  }
}
