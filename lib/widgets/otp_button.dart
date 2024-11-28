import 'package:flutter/material.dart';

class OtpButton extends StatelessWidget {
  const OtpButton({super.key});

  @override
  Widget build(BuildContext context) {
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
            side: BorderSide(color: Colors.black),
          ),
        ),
        onPressed: () {
          Navigator.pushNamed(context, '/otp');
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icons/phone.png',
              height: 25,
              width: 25,
            ),
            const SizedBox(width: 5),
            const Text('Phone Number',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat',
                    color: Colors.black)
                ),
          ],
        ),
      ),
    );
  }
}
