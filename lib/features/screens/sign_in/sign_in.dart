import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:xgen_machine_task/features/common_widgets/common_text_field.dart';
import 'package:xgen_machine_task/features/screens/sign_in/bloc/sign_in_bloc.dart';
import 'package:xgen_machine_task/features/screens/sign_in/bloc/sign_in_event.dart';
import 'package:xgen_machine_task/features/screens/sign_in/bloc/sign_in_state.dart';

class SignInPage extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sign In')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BlocListener<SignInBloc, SignInState>(
          listener: (context, state) {
            // if (state is SignInFailure) {
            //   ScaffoldMessenger.of(context).showSnackBar(
            //     SnackBar(content: Text(state.error)),
            //   );
            // } else if (state is SignInSuccess) {
            //   Navigator.of(context).pop();
            // }
          },
          child: BlocBuilder<SignInBloc, SignInState>(
            builder: (context, state) {
              // if (state is SignInLoading) {
              //   return Center(child: CircularProgressIndicator());
              // }

              return Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextFeildWidget(
                      controller: _emailController,
                      hintText: 'Email',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        }
                        if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                          return 'Please enter a valid email';
                        }
                        return null;
                      },
                    ),
                    5.verticalSpace,
                    TextFeildWidget(
                      controller: _passwordController,
                      hintText: 'Password',
                      obscureText: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        if (value.length < 6) {
                          return 'Password must be at least 6 characters long';
                        }
                        return null;
                      },
                    ),

                    15.verticalSpace,
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          BlocProvider.of<SignInBloc>(context).add(
                            SignInButtonPressed(
                              email: _emailController.text,
                              password: _passwordController.text,
                              name: _nameController.text,
                              context: context,
                            ),
                          );
                        }
                      },
                      child: Text('Sign In'),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
