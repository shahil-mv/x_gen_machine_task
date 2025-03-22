import 'package:flutter/material.dart';

abstract class SignUpEvent {}

class SignUpButtonPressed extends SignUpEvent {
  final String name;
  final String email;
  final String password;
  final BuildContext context;
  SignUpButtonPressed({
    required this.name,
    required this.email,
    required this.password,
    required this.context,
  });
}
