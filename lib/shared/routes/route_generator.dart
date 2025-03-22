import 'package:flutter/material.dart';
import 'package:xgen_machine_task/features/screens/home/home.dart';
import 'package:xgen_machine_task/features/screens/profile/profile.dart';
import 'package:xgen_machine_task/features/screens/sign_in/sign_in.dart';
import 'package:xgen_machine_task/features/screens/sign_up/sign_up.dart';
import 'package:xgen_machine_task/features/screens/splash.dart';
import 'package:xgen_machine_task/shared/routes/routes.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    // ignore: unused_local_variable
    final Object? args = routeSettings.arguments;

    switch (routeSettings.name) {
      case routeRoot:
        return MaterialPageRoute(builder: (_) => SplashScreen());
        
        case routeSignUp:
        return MaterialPageRoute(builder: (_) => SignUpPage());
        
        case routeSignIn:
        return MaterialPageRoute(builder: (_) => SignInPage());
        
        case routeHome:
        return MaterialPageRoute(builder: (_) => HomesPage());
 case routeProfile:
        return MaterialPageRoute(builder: (_) => ProfilePage());

                                                                          
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute({String? error, bool argsError = false}) {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(title: const Text('Error'), centerTitle: true),
        body: Center(
          child: Text(
            error ?? '${argsError ? 'Arguments' : 'Navigation'} Error',
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.black54,
            ),
          ),
        ),
      ),
    );
  }
}
