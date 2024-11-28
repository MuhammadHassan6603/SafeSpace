import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:safe_space/utilities/helper.dart';
import 'package:safe_space/widgets/google_button.dart';
import 'package:safe_space/widgets/otp_button.dart';
class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _confirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Signup",
                        style: GoogleFonts.montserrat(fontSize: 25, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Container(
                      padding:
                          const EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
                      child: Column(
                        children: <Widget>[
                          TextField(
                            controller: _email,
                            decoration:  InputDecoration(
                                labelText: 'EMAIL',
                                labelStyle: GoogleFonts.montserrat(
                                    
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
                                labelStyle: GoogleFonts.montserrat(
                                    
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
                                labelStyle: GoogleFonts.montserrat(
                                    
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                                focusedBorder: const UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.green))),
                          ),
                          const SizedBox(height: 50.0),
                          GestureDetector(
                            onTap: () {
                              // if (_password.text == _confirmPassword.text) {
                              //   AuthService()
                              //       .accountSignUp(_email.text, _password.text);
                              //   VxToast.show(context,
                              //       msg: 'Signup Successful!',
                              //       textColor: Colors.white,
                              //       bgColor: Colors.green);
                              // } else {
                              //   VxToast.show(context,
                              //       msg: 'Passwords does not match!',
                              //       textColor: Colors.white,
                              //       bgColor: Colors.red);
                              // }
                            },
                            child: SizedBox(
                                height: 40.0,
                                child: Material(
                                  borderRadius: BorderRadius.circular(20.0),
                                  // shadowColor: Colors.greenAccent,
                                  color: Colors.deepPurpleAccent,
                                  // elevation: 7.0,
                                  child: Center(
                                    child: Text(
                                      'SIGNUP',
                                      style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ),
                                )),
                          ),
                          const SizedBox(height: 20.0),
                          Text(
                            'OR',
                            style: GoogleFonts.montserrat(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          const SizedBox(height: 20.0),
                          const GoogleButton(),
                          const SizedBox(height: 10.0),
                          const OtpButton(),
                          const SizedBox(height: 30.0),
                          SizedBox(
                            width: getWidth(context)*0.9,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Flexible(
                                  child: Text(
                                    'Already have an account?',
                                    style: GoogleFonts.montserrat(
                                        color: Colors.black,
                                        fontSize: 15),
                                  ),
                                ),
                                // SizedBox(width: 5,),
                                TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/login');
                                  },
                                  child: Text('Login',
                                  style: GoogleFonts.montserrat(
                                        color: Colors.deepPurpleAccent,
                                        fontSize: 15,),)
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                ]),
          ),
        ));
  }
}
