import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:xgen_machine_task/features/screens/home/bloc/home_bloc.dart';
import 'package:xgen_machine_task/features/screens/sign_in/bloc/sign_in_bloc.dart';
import 'package:xgen_machine_task/features/screens/sign_up/bloc/sign_up_bloc.dart';
import 'package:xgen_machine_task/shared/routes/navigator.dart';
import 'package:xgen_machine_task/shared/routes/route_generator.dart';
import 'package:xgen_machine_task/shared/routes/routes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SignUpBloc>(create: (context) => SignUpBloc()),
        BlocProvider<SignInBloc>(create: (context) => SignInBloc()),

        BlocProvider<HomeBloc>(create: (context) => HomeBloc()),
      ],
      child: ScreenUtilInit(
        child: MaterialApp(
          title: 'xGen Machine test',
          debugShowCheckedModeBanner: false,
          navigatorKey: navigatorKey,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          ),
          initialRoute: routeRoot,
          onGenerateRoute: RouteGenerator.generateRoute,
        ),
      ),
    );
  }
}
