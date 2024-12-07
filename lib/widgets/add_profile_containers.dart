import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget getAddProfileContainer(String text, String imgPath,BuildContext context) {
  return GestureDetector(
    onTap: () {
      if(text=='Devices inside same wifi network'){
        Navigator.pushNamed(context, '/sameWifiScreen');
      } else if(text=='Connect with Gmail ID'){
        Navigator.pushNamed(context, '/connectWithGmail');
      } else if(text=='Use setup code to connect'){
        Navigator.pushNamed(context, '/setupCode');
      } else {
        Navigator.pushNamed(context, '/deviceConnected');
      }
    },
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4,
            spreadRadius: 2,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: SizedBox(
        height: 60,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0),
          child: Row(
            children: [
              Image.asset(
                imgPath,
                width: 25,
                height: 25,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                text,
                style: GoogleFonts.roboto(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xff707274),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
