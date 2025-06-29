import 'package:auth_app/screens/login_screen.dart';
import 'package:auth_app/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme
    ),
  );
}
