import 'package:flutter/material.dart';
import 'package:safe_space/views/add_profile_screens/gmail_id/gmail_id.dart';
import 'package:safe_space/views/add_profile_screens/same_wifi_screen.dart';
import 'package:safe_space/views/add_profile_screens/setup_code/setup_code.dart';
import 'package:safe_space/views/auth/login.dart';
import 'package:safe_space/views/auth/signup.dart';
import 'package:safe_space/views/user_check/user_check.dart';
import 'package:safe_space/views/child/child_screen.dart';
import 'package:safe_space/views/home/home.dart';
import 'package:safe_space/views/onBoarding/on_boarding.dart';
import 'package:safe_space/views/parent/add_profile/parent_screen.dart';
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
          } else if (settings.name == '/parentScreen') {
            return MaterialPageRoute(builder: (context) => const ParentScreen());
          } else if (settings.name == '/childScreen') {
            return MaterialPageRoute(builder: (context) => const ChildScreen());
          } else if (settings.name == '/sameWifiScreen') {
            return MaterialPageRoute(builder: (context) => const SameWifiScreen());
          } else if (settings.name == '/connectWithGmail') {
            return MaterialPageRoute(builder: (context) => const GmailScreen());
          } else if (settings.name == '/setupCode') {
            return MaterialPageRoute(builder: (context) => const SetupCodeScreen());
          }
          return null;
        },
      );
  }
}
