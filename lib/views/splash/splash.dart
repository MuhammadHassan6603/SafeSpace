import 'dart:async';
import 'package:flutter/material.dart';
import 'package:safe_space/utilities/helper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // FirebaseAuth.instance.authStateChanges().listen((user) {
    //   if (user != null) {
    //     Navigator.of(context).pushReplacementNamed('/home');
    //   } else {
    //     Navigator.of(context).pushReplacementNamed('/boarding');
    //   }
    // });

    // You can use a delay here if you want to show a splash screen for a fixed time
    Timer(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacementNamed('/boarding');
      // The listener will automatically handle the navigation after authentication state change
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2eaadf),
      body: Center(
        child: SizedBox(
          width: getWidth(context)*0.8,
          height: 700,
          child: Image.asset('assets/images/whitelogo.png',fit: BoxFit.cover,)),
      )
    );
  }
}
