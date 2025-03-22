// ignore_for_file: use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:xgen_machine_task/shared/auth/auth_service.dart';
import 'package:xgen_machine_task/shared/routes/routes.dart';

class SplashScreen extends StatelessWidget {
  final AuthService _authService = AuthService();

  SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () async {
      User? user = _authService.getCurrentUser();
      if (user != null) {
        Navigator.of(context).pushReplacementNamed(routeHome);
      } else {
        Navigator.of(context).pushReplacementNamed(routeSignUp);
      }
    });

    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}