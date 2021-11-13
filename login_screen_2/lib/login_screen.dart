import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://images.pexels.com/photos/5945758/pexels-photo-5945758.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
              ),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 85, sigmaY: 85),
              child: Container(
                decoration:
                    BoxDecoration(color: Colors.white.withOpacity(0.05)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome",
                      style: GoogleFonts.montserrat(
                          color: Colors.white.withOpacity(.8), fontSize: 45),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "to this app",
                        style: GoogleFonts.montserrat(
                          color: Colors.white.withOpacity(.6),
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 60),
                Center(
                  child: Text(
                    "Login",
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontSize: 35,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                TextField(
                  style: TextStyle(color: Colors.white, fontSize: 22),
                  decoration: InputDecoration(
                    fillColor: Colors.transparent,
                    filled: true,
                    hintText: "Username/Email",
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  obscureText: true,
                  style: TextStyle(color: Colors.white, fontSize: 22),
                  decoration: InputDecoration(
                    fillColor: Colors.transparent,
                    filled: true,
                    hintText: "Password",
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    suffix: Text(
                      "Forget",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Checkbox(
                      fillColor: MaterialStateProperty.all(Colors.white),
                      checkColor: Colors.black,
                      activeColor: Colors.white,
                      value: isChecked,
                      onChanged: (value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                    Text(
                      "Remember me",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: MaterialButton(
                    color: Colors.black,
                    elevation: 25,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    onPressed: () {},
                    child: Text(
                      "Login",
                      style: GoogleFonts.montserrat(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: MaterialButton(
                    color: Colors.black,
                    elevation: 25,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "f  ",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "Log in with Facebook",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50, left: 10),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Don't have an account? Sign up",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
