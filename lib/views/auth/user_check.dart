import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:safe_space/utilities/helper.dart';

class UserCheck extends StatefulWidget {
  const UserCheck({super.key});

  @override
  State<UserCheck> createState() => _UserCheckState();
}

class _UserCheckState extends State<UserCheck> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: getWidth(context),
            child: Stack(
              children: [
                Image.asset('assets/images/bgimg.png'),
                Positioned(
                  left: 25,
                  top: 100,
                  child: Text(
                    'Get Started',
                    style: GoogleFonts.roboto(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              'I will use this device as...',
              style: GoogleFonts.roboto(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Expanded(
                  child: Container(
                height: 130,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 3,
                      offset: const Offset(0, 1),
                    ),
                  ],
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/parent.png',
                        width: 50,
                        height: 30,
                      ),
                      Text(
                        'Parent',
                        style: GoogleFonts.roboto(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff6A95B0)),
                      ),
                    ]),
              )),
              SizedBox(
                width: 20,
              ),
              Expanded(
                  child: Container(
                height: 130,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 3,
                      offset: const Offset(0, 1),
                    ),
                  ],
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/child.png',
                        width: 50,
                        height: 30,
                      ),
                      Text(
                        'Child',
                        style: GoogleFonts.roboto(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff6A95B0)),
                      ),
                    ]),
              )),
              SizedBox(
                width: 20,
              ),
            ],
          ),
          Spacer(),
          Center(
            child: Container(
              height: 60,
              margin: const EdgeInsets.all(25),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(12)),
              child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Color(0xff2eaadf)),
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              onPressed: () {},
              child: Text(
                'Continue',
                style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 18
                ),
              ),
            ),
            ),
          )
        ],
      ),
    );
  }
}
