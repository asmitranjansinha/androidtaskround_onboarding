import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Color(0XFF0C002E),
              Color(0XFF1E0368),
              Color(0XFF3600D0),
            ])),
        child: SafeArea(
            child: Column(
          children: [
            Container(
              height: size.height / 1.7,
              width: size.width,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                          "assets/images/1575284384-removebg-preview 2.png"))),
            ),
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)),
                  child: Container(
                    color: const Color(0XFFFFFFFF),
                    height: size.height / 2.767999,
                  ),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: size.height / 48,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 15,
                          width: 15,
                          decoration: BoxDecoration(
                              color: Color(0XFF3600D0),
                              borderRadius: BorderRadius.circular(1000)),
                        ),
                        SizedBox(
                          width: size.width / 30,
                        ),
                        Container(
                          height: 15,
                          width: 15,
                          decoration: BoxDecoration(
                              color: Color(0XFF3600D0),
                              borderRadius: BorderRadius.circular(1000)),
                        ),
                        SizedBox(
                          width: size.width / 30,
                        ),
                        Container(
                          height: 15,
                          width: 15,
                          decoration: BoxDecoration(
                              color: Color(0XFF3600D0),
                              borderRadius: BorderRadius.circular(1000)),
                        )
                      ],
                    ),
                    SizedBox(height: size.height / 65),
                    Text(
                      "Feeling Stressed?",
                      style: TextStyle(
                          color: Color(0XFF1C006A),
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          fontFamily: GoogleFonts.poppins().fontFamily,
                          shadows: const <Shadow>[
                            Shadow(
                                offset: Offset(0.5, 3.2),
                                blurRadius: 3,
                                color: Colors.black38)
                          ]),
                    ),
                    SizedBox(
                      height: size.height / 80,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "Everyone feels stressed from time to time and don’t know how to deal with it. We have curated many different ways to help you cope up with stress. Find people with whom you can talk, experts to assist you and meditation tricks to ease up your mind",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 21,
                            fontFamily: GoogleFonts.poppins().fontFamily),
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        )),
      ),
    );
  }
}
