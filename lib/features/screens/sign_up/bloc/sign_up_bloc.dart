import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:xgen_machine_task/features/common_widgets/common_snackbar.dart';
import 'package:xgen_machine_task/features/screens/sign_up/bloc/sign_up_event.dart';
import 'package:xgen_machine_task/features/screens/sign_up/bloc/sign_up_state.dart';
import 'package:xgen_machine_task/shared/auth/auth_service.dart';
import 'package:xgen_machine_task/shared/constant/colors.dart';
import 'package:xgen_machine_task/shared/routes/routes.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  
  SignUpBloc() : super(SignUpState()) {
    on<SignUpButtonPressed>(_onSignUpButtonPressed);
  }
  void _onSignUpButtonPressed(event, emit) async {
    // TODO: implement event handler

   final userResult = await AuthService().registerWithEmailAndPassword(
          email: event.email,
          password: event.password,
        );

        if (userResult == null) {
      kSnackBar(content: "Somthimg went wrong", color: kRed);
    } else {
      kSnackBar(content: "Successfully regisred", color: kGreen);
       Navigator.pushNamed(event.context, routeSignIn);

    }
  }
  }

