import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.asset(
                  "assets/animation1.json",
                  repeat: true,
                ),

                // Welcome Text.
                Text(
                  "Welcome back!",
                  style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  "We need to register your phone number.",
                  style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                      color: Colors.black54,
                      fontSize: 14,
                    ),
                  ),
                ),

                const SizedBox(
                  height: 30,
                ),

                // phone no.
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Phone Number",
                    style: GoogleFonts.lato(
                      textStyle: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),

                const SizedBox(
                  height: 10,
                ),

                Container(
                  height: 65,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.amber.shade100),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextFormField(
                      decoration:
                          const InputDecoration(border: InputBorder.none),
                    ),
                  ),
                ),

                const SizedBox(
                  height: 15,
                ),

                Text(
                  "A 6 digit OTP sent via SMS to verify your mobile number!",
                  style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                      color: Colors.black54,
                      fontSize: 14,
                    ),
                  ),
                ),

                const SizedBox(
                  height: 40,
                ),

                SizedBox(
                  height: 55,
                  width: double.infinity,
                  child: ElevatedButton(
                    autofocus: true,
                    onPressed: () {},
                    child: Text(
                      "Get OTP",
                      style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
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
