import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:safe_space/utilities/helper.dart';
import 'package:safe_space/widgets/add_profile_containers.dart';

class SameWifiScreen extends StatelessWidget {
  const SameWifiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
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
                      'Add Profile',
                      style: GoogleFonts.roboto(
                        fontSize: getWidth(context) * 0.07,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 120,),
            IntrinsicHeight(
              child: SizedBox(
                width: getWidth(context),
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Devices inside same wifi network',
                          style: GoogleFonts.roboto(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      getAddProfileContainer('Pixel 2XL', 'assets/icons/phoneIcon.png',context),
                      const SizedBox(
                        height: 10,
                      ),
                      getAddProfileContainer('Pixel 6A', 'assets/icons/phoneIcon.png',context),
                      const SizedBox(
                        height: 10,
                      ),
                      getAddProfileContainer('Samsung A15', 'assets/icons/phoneIcon.png',context),
                      const SizedBox(
                        height: 10,
                      ),
                      getAddProfileContainer('Huawei Mate 10 Lite', 'assets/icons/phoneIcon.png',context),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 120,)
          ],
        ),
      ),
    );
  }
}
