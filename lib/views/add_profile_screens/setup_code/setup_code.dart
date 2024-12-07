import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:safe_space/providers/countdown_provider.dart';
import 'package:safe_space/utilities/helper.dart';

class SetupCodeScreen extends StatefulWidget {
  const SetupCodeScreen({super.key});

  @override
  _SetupCodeScreenState createState() => _SetupCodeScreenState();
}

class _SetupCodeScreenState extends State<SetupCodeScreen> {
  bool isLoading = false;
  bool isCodeVisible = false;

  String generateSetupCode() {
    const characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
    final random = Random();
    return List.generate(
        6, (index) => characters[random.nextInt(characters.length)]).join();
  }

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
            const SizedBox(height: 120),
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
                          'Enter this code in your child\'s phone',
                          style: GoogleFonts.roboto(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      Center(
                        child: isCodeVisible
                            ? Column(
                                children: [
                                  Container(
                                    width: getWidth(context) * 0.9,
                                    padding: const EdgeInsets.all(16),
                                    decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(color: Colors.grey),
                                    ),
                                    child: Center(
                                      child: Text(
                                        generateSetupCode(),
                                        style: GoogleFonts.roboto(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Consumer<CountdownProvider>(builder:
                                      (context, countdownProvider, child) {
                                    final minutes =
                                        countdownProvider.timeLeft ~/ 60;
                                    final seconds =
                                        countdownProvider.timeLeft % 60;
                                    return Text(
                                      'Time Left: ${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}',
                                      style: TextStyle(fontSize: 18),
                                    );
                                  })
                                ],
                              )
                            : isLoading
                                ? const CircularProgressIndicator(
                                    color: Color(0xff2eaadf),
                                  )
                                : ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        isLoading = true;
                                      });
                                      Future.delayed(const Duration(seconds: 1),
                                          () {
                                        setState(() {
                                          isLoading = false;
                                          isCodeVisible = true;
                                        });
                                        Provider.of<CountdownProvider>(context, listen: false)
                                                .startCountdown();
                                      });
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xff2eaadf),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 15,
                                      ),
                                    ),
                                    child: SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.5,
                                      child: Center(
                                        child: Text(
                                          'Get Code',
                                          style: GoogleFonts.roboto(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 120),
          ],
        ),
      ),
    );
  }
}
