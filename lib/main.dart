import 'package:flutter/material.dart';
import 'package:safe_space/views/auth/login.dart';
import 'package:safe_space/views/auth/signup.dart';
import 'package:safe_space/views/auth/user_check.dart';
import 'package:safe_space/views/home/home.dart';
import 'package:safe_space/views/onBoarding/on_boarding.dart';
import 'package:safe_space/views/splash/splash.dart';


void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/splash',
        onGenerateRoute: (settings) {
          if (settings.name == '/splash') {
            return MaterialPageRoute(builder: (context) => const SplashScreen());
          } else if (settings.name == '/boarding') {
            return MaterialPageRoute(builder: (context) => const OnBoarding());
          } else if (settings.name == '/signup') {
            return MaterialPageRoute(builder: (context) => const SignupPage());
          } else if (settings.name == '/login') {
            return MaterialPageRoute(builder: (context) => const LoginPage());
          } else if (settings.name == '/home') {
            return MaterialPageRoute(builder: (context) => const HomeScreen());
          } else if (settings.name == '/usercheck') {
            return MaterialPageRoute(builder: (context) => const UserCheck());
          }
          return null;
        },
      );
  }
}
