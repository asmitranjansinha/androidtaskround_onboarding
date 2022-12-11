// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Onboarding extends StatelessWidget {
  final image;
  final headText;
  final circleColor1;
  final circleColor2;
  final circleColor3;
  final descrpText;
  final ontap;
  const Onboarding(
      {super.key,
      this.image,
      this.headText,
      this.circleColor1,
      this.circleColor2,
      this.circleColor3,
      this.descrpText,
      this.ontap});

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
              decoration: BoxDecoration(
                  image: DecorationImage(fit: BoxFit.cover, image: image)),
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
                              color: circleColor1,
                              borderRadius: BorderRadius.circular(1000)),
                        ),
                        SizedBox(
                          width: size.width / 30,
                        ),
                        Container(
                          height: 15,
                          width: 15,
                          decoration: BoxDecoration(
                              color: circleColor2,
                              borderRadius: BorderRadius.circular(1000)),
                        ),
                        SizedBox(
                          width: size.width / 30,
                        ),
                        Container(
                          height: 15,
                          width: 15,
                          decoration: BoxDecoration(
                              color: circleColor3,
                              borderRadius: BorderRadius.circular(1000)),
                        )
                      ],
                    ),
                    SizedBox(height: size.height / 65),
                    Text(
                      headText,
                      style: TextStyle(
                          color: Color(0XFF1C006A),
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
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            descrpText,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 21,
                                fontFamily: GoogleFonts.poppins().fontFamily),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Column(
                              children: [
                                SizedBox(
                                  height: size.height / 5.1,
                                ),
                                InkWell(
                                    onTap: ontap,
                                    child: Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Image.asset(
                                        "assets/images/arrow_circle_right.png",
                                        scale: 1.12,
                                      ),
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ],
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
