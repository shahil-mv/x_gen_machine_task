import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:xgen_machine_task/features/common_widgets/common_snackbar.dart';
import 'package:xgen_machine_task/features/screens/sign_in/bloc/sign_in_event.dart';
import 'package:xgen_machine_task/features/screens/sign_in/bloc/sign_in_state.dart';
import 'package:xgen_machine_task/shared/auth/auth_service.dart';
import 'package:xgen_machine_task/shared/constant/colors.dart';
import 'package:xgen_machine_task/shared/routes/routes.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc() : super(SignInState()) {
    on<SignInButtonPressed>(_onSignInButtonPressed);
  }
  void _onSignInButtonPressed(event, emit) async {
    print("_onSignInButtonPressed");
    // TODO: implement event handler
    AuthService authService = AuthService();
    final userResult = await authService.signInWithEmailAndPassword(
      email: event.email,
      password: event.password,
    );
    print("EXIT ");
    if (userResult == null) {
      kSnackBar(content: "User Name or Password is incorrect", color: kRed);
    } else {
      kSnackBar(content: "Sign In Successfully", color: kGreen);
      Navigator.pushNamed(event.context, routeHome);
    }
  }
}
