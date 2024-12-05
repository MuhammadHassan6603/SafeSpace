import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:safe_space/utilities/helper.dart';
import 'package:safe_space/widgets/google_button.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool isChecked = false;
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _confirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        // resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
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
                              fontSize: getWidth(context) * 0.07,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                    padding: const EdgeInsets.only(
                        top: 35.0, left: 20.0, right: 20.0),
                    child: Column(
                      children: <Widget>[
                        TextField(
                          controller: _email,
                          decoration: InputDecoration(
                              labelText: 'EMAIL',
                              labelStyle: GoogleFonts.roboto(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                              focusedBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.green))),
                        ),
                        const SizedBox(height: 10.0),
                        TextField(
                          controller: _password,
                          decoration: InputDecoration(
                              labelText: 'PASSWORD ',
                              labelStyle: GoogleFonts.roboto(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                              focusedBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.green))),
                          obscureText: true,
                        ),
                        const SizedBox(height: 10.0),
                        TextField(
                          obscureText: true,
                          controller: _confirmPassword,
                          decoration: InputDecoration(
                              labelText: 'Confirm Password',
                              labelStyle: GoogleFonts.roboto(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                              focusedBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.green))),
                        ),
                        const SizedBox(height: 20.0),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Checkbox(
                              value: isChecked,
                              onChanged: (value) {
                                setState(() {
                                  isChecked = value!;
                                });
                              },
                              activeColor: const Color(0xFF2eaadf),
                            ),
                            Expanded(
                              child: RichText(
                                text: const TextSpan(
                                  text: "I agree to the ",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Mulish',
                                  ),
                                  children: [
                                    TextSpan(
                                      text: "Terms of Services",
                                      style: TextStyle(
                                        color: Color(0xFF2eaadf),
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    TextSpan(
                                      text: " & ",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    TextSpan(
                                      text: "Privacy Policy",
                                      style: TextStyle(
                                        color: Color(0xFF2eaadf),
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20.0),
                        Center(
                          child: Container(
                            height: 60,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(12)),
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: WidgetStateProperty.all(
                                    isChecked ?const Color(0xff2eaadf):Colors.grey),
                                shape: WidgetStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                              ),
                              onPressed: isChecked
                                  ? () {

                                    
                                  }
                                  : null,
                              child: Text(
                                'Create Account',
                                style: GoogleFonts.roboto(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        Text(
                          'OR',
                          style: GoogleFonts.roboto(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        const SizedBox(height: 20.0),
                        const GoogleButton(),
                        const SizedBox(height: 30.0),
                        SizedBox(
                          width: getWidth(context) * 0.9,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                child: Text(
                                  'Already have an account?',
                                  style: GoogleFonts.roboto(
                                      color: Colors.black, fontSize: 15),
                                ),
                              ),
                              // SizedBox(width: 5,),
                              TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/login');
                                  },
                                  child: Text(
                                    'Login',
                                    style: GoogleFonts.roboto(
                                      color: const Color(0xff2eaadf),
                                      fontSize: 15,
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      ],
                    )),
              ]),
        ));
  }
}
