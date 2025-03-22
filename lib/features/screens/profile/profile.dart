import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:xgen_machine_task/shared/auth/auth_service.dart';
import 'package:xgen_machine_task/shared/routes/routes.dart';

class ProfilePage extends StatelessWidget {
  final AuthService _authService = AuthService();

  ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final User? user = _authService.getCurrentUser();

    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () async {
              await _authService.signOut();
              Navigator.of(context).pushReplacementNamed(routeSignUp);
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Email: ${user?.email ?? 'N/A'}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () async {
                await _authService.signOut();
                Navigator.of(context).pushReplacementNamed(routeSignUp);
              },
              child: Text('Log Out'),
            ),
          ],
        ),
      ),
    );
  }
}