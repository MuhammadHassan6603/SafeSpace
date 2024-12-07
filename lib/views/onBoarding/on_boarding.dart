import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:safe_space/utilities/helper.dart';
import 'package:safe_space/views/auth/signup.dart';
import 'package:safe_space/views/onBoarding/content_model.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFfafcfd),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              // physics: const NeverScrollableScrollPhysics(),
              controller: _controller,
              itemCount: contents.length,
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (_, i) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            // SizedBox(
                            //   width: getWidth(context)*0.7,
                            //   height: 70,
                            //   child: Image.asset('assets/images/bluelogo.png',fit: BoxFit.cover,),
                            // ),
                            SizedBox(
                                width: getWidth(context) * 0.7,
                                height: 300,
                                child: Image.asset(contents[i].image)),
                            const SizedBox(height: 20,),
                            SizedBox(
                              width: getWidth(context) * 0.7,
                              child: Text(
                                textAlign: TextAlign.center,
                                contents[i].title,
                                style: GoogleFonts.roboto(
                                    color: Colors.black, fontSize: 20,fontWeight: FontWeight.w600),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              width: getWidth(context) * 0.9,
                              child: Text(
                                textAlign: TextAlign.center,
                                contents[i].description,
                                style: GoogleFonts.roboto(
                                    color: Colors.black, fontSize: 15),
                              ),
                            ),
                          ],
                        ))
                  ],
                );
              },
            ),
          ),
          Container(
            height: 60,
            margin: const EdgeInsets.all(25),
            width: double.infinity,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(const Color(0xff2eaadf)),
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              onPressed: () {
                if (currentIndex < contents.length - 1) {
                  _controller.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeIn,
                  );
                } else {
                  Navigator.pushReplacementNamed(context, '/signup');
                }
              },
              child: Text(
                currentIndex == contents.length - 1 ? 'Get Started' : 'Next',
                style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 18
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
