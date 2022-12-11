import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingfinalScreen extends StatelessWidget {
  const OnboardingfinalScreen({super.key});

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
              height: size.height / 1.8,
              width: size.width,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                          "assets/images/undraw_conversation_h12g 3.png"))),
            ),
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)),
                  child: Container(
                    color: const Color(0XFFFFFFFF),
                    height: size.height / 2.53838,
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
                              color: const Color(0XFF1E0368),
                              borderRadius: BorderRadius.circular(1000)),
                        ),
                        SizedBox(
                          width: size.width / 30,
                        ),
                        Container(
                          height: 15,
                          width: 15,
                          decoration: BoxDecoration(
                              color: const Color(0XFF1E0368),
                              borderRadius: BorderRadius.circular(1000)),
                        ),
                        SizedBox(
                          width: size.width / 30,
                        ),
                        Container(
                          height: 15,
                          width: 15,
                          decoration: BoxDecoration(
                              color: const Color(0XFF3600D0),
                              borderRadius: BorderRadius.circular(1000)),
                        )
                      ],
                    ),
                    SizedBox(height: size.height / 65),
                    Text(
                      "Psychotherapy",
                      style: TextStyle(
                          color: const Color(0XFF1C006A),
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          fontFamily: GoogleFonts.poppins().fontFamily,
                          shadows: const <Shadow>[
                            Shadow(
                                offset: Offset(0.5, 2),
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
                        "Psychotherapy is teaching new ways of thinking and behaving. It aims at changing habits that may cause depression. Connect with the experts to clear out your mind and get the right advices.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 21,
                            fontFamily: GoogleFonts.poppins().fontFamily),
                      ),
                    ),
                    SizedBox(
                      height: size.height / 70,
                    ),
                    getStartedButton(context)
                  ],
                )
              ],
            )
          ],
        )),
      ),
    );
  }

  Container getStartedButton(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 13.5,
      width: MediaQuery.of(context).size.width / 1.22,
      decoration: BoxDecoration(
          color: const Color(0XFF1E0368),
          borderRadius: BorderRadius.circular(50)),
      child: Center(
        child: Text(
          "Get Started",
          style: TextStyle(
              color: const Color(0XFFFFFFFF),
              fontSize: 24,
              fontWeight: FontWeight.bold,
              fontFamily: GoogleFonts.inter().fontFamily),
        ),
      ),
    );
  }
}
