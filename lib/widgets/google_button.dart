import 'package:flutter/material.dart';
import 'package:safe_space/view_models/google_auth/google_auth.dart';
import 'package:safe_space/views/home/home.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({super.key});

  @override
  Widget build(BuildContext context) {
    final GoogleAuthService _googleAuthService = GoogleAuthService();
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      height: 40,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          elevation: 0,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: const BorderSide(color: Colors.black),
          ),
        ),
        onPressed: () async {
          final user = await _googleAuthService.signInWithGoogle();
          if (user != null) {
            print("User signed in: ${user.displayName}");
            Navigator.pushReplacementNamed(context, '/home',
                arguments: user.displayName);
            if (user != null) {
              await GoogleAuthService().storeUserData(user);
            }
          } else {
            print("Sign-In canceled");
          }
        },
        // try {
        //   final user = await UserController.loginWithGoogle();
        //   if (user != null) {
        //     Navigator.pushReplacementNamed(context, '/home');
        //   }
        // } on FirebaseAuthException catch (error) {
        //   // ignore: avoid_print
        //   print(error.message);
        //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        //       content: Text(error.message ?? 'Something Went Wrong')));
        // } catch (error) {
        //   // ignore: avoid_print
        //   print(error);
        //   ScaffoldMessenger.of(context)
        //       .showSnackBar(SnackBar(content: Text(error.toString())));
        // }

        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icons/google.png',
              height: 25,
              width: 25,
            ),
            const SizedBox(width: 5),
            const Text('Google',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat',
                    color: Colors.black)),
          ],
        ),
      ),
    );
  }
}
