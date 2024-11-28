import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:safe_space/utilities/helper.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Login",
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
                          
                          
                          const SizedBox(height: 50.0),
                          GestureDetector(
                            onTap: () {
                              
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
                                      'LOGIN',
                                      style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ),
                                )),
                          ),
                          
                          const SizedBox(height: 30.0),
                          SizedBox(
                            width: getWidth(context)*0.9,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Flexible(
                                  child: Text(
                                    'Do not have an account?',
                                    style: GoogleFonts.montserrat(
                                        color: Colors.black,
                                        fontSize: 15),
                                  ),
                                ),
                                // SizedBox(width: 5,),
                                TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/signup');
                                  },
                                  child: Text('Signup',
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
