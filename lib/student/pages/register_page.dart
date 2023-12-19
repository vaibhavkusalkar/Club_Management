import 'package:ace/student/components/filled_button.dart';
import 'package:ace/student/components/register_with_button.dart';
import 'package:ace/student/pages/student_homepage.dart';
import 'package:flutter/material.dart';

import '../components/password_text_field.dart';
import '../components/text_field.dart';

class RegisterPage extends StatefulWidget {
  final Function()? onTap;
  const RegisterPage({
    super.key,
    required this.onTap
  });

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final emailTextController =TextEditingController();
  final passwordTextController =TextEditingController();
  final confirmPasswordTextController =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //create account
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top:30),
                    child: Text(
                      "Create Account",
                      style: TextStyle(
                        fontFamily: 'CircularStd',
                        fontWeight: FontWeight.w700,
                        fontSize: 30,
                        color: Theme.of(context).primaryColorDark
                      ),
                    ),
                  ),
                ),

                //description
                Padding(
                  padding: const EdgeInsets.only(top: 15, bottom: 30,left: 40, right: 40),
                  child: Text(
                    "Fill your information below or register with your social account.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'CircularStd',
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
                        color: Color.fromRGBO(150, 150, 157, 1.0)
                    ),
                  ),
                ),

                //Email Field
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    "Email",
                    style: TextStyle(
                        fontFamily: 'CircularStd',
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: Theme.of(context).primaryColorLight
                    ),
                  ),
                ),
                MyTextField(
                  controller: emailTextController,
                  hintText: "example@gmail.com",
                  capitalization: TextCapitalization.none,
                  keyboardType: TextInputType.emailAddress,
                ),

                //Password Field
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    "Password",
                    style: TextStyle(
                        fontFamily: 'CircularStd',
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: Theme.of(context).primaryColorLight
                    ),
                  ),
                ),
                MyPasswordTextField(
                  controller: passwordTextController,
                  hintText: "*************",
                ),

                //Password Again
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    "Confirm Password",
                    style: TextStyle(
                        fontFamily: 'CircularStd',
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: Theme.of(context).primaryColorLight
                    ),
                  ),
                ),
                MyPasswordTextField(
                  controller: confirmPasswordTextController,
                  hintText: "*************",
                ),

                //signup button
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: MyFilledButton(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => StudentHomepage())
                      );
                    },
                    label: "Sign Up",
                  ),
                ),

                //line with or signup with
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 0.8,
                        width: 100,
                        color: Color.fromRGBO(150, 150, 157, 1.0),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "or sign up with",
                        style: TextStyle(
                          fontFamily: 'CircularStd',
                          fontWeight: FontWeight.w300,
                          fontSize: 14,
                          color: Color.fromRGBO(150, 150, 157, 1.0)
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Container(
                        height: 0.8,
                        width: 100,
                        color: Color.fromRGBO(150, 150, 157, 1.0),
                      ),
                    ],
                  ),
                ),

                //row of apple,google,facebook login
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RegisterWithButton(
                        image: "lib/assets/google.png",
                      ),
                      RegisterWithButton(
                        image: "lib/assets/meta.png",
                      ),
                      RegisterWithButton(
                        image: "lib/assets/apple.png",
                      ),
                    ],
                  ),
                ),

                //already have account and sign in button
                Padding(
                  padding: const EdgeInsets.only(top: 35),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //already have account
                      Text(
                        "Already have an account",
                        style: TextStyle(
                          fontFamily: 'CircularStd',
                          fontWeight: FontWeight.w700,
                          fontSize: 13.5,
                          color: Colors.grey.shade700
                        ),
                      ),
                      SizedBox(
                        width: 1,
                      ),
                      Text(
                        "?",
                        style: TextStyle(
                            fontFamily: 'CircularStd',
                            fontWeight: FontWeight.w700,
                            fontSize: 13.5,
                            color: Colors.grey.shade700
                        ),
                      ),
                      SizedBox(
                        width: 1,
                      ),

                      //sign in button
                      GestureDetector(
                        onTap: widget.onTap,
                        child: Text(
                          "Sign In",
                          style: TextStyle(
                              fontFamily: 'CircularStd',
                              fontWeight: FontWeight.w900,
                              fontSize: 13.5,
                              color: Color.fromRGBO(207, 162, 161, 11)
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
