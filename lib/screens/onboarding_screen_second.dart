import 'package:flutter/material.dart';

import '../widgets/onboarding_widget.dart';

class OnboardingScreen2 extends StatelessWidget {
  const OnboardingScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Onboarding(
      image: AssetImage(
          "assets/images/woman-doing-meditation-in-metaverse-5342825-4491860 3.png"),
      circleColor1: Color(0XFF1E0368),
      circleColor2: Color(0XFF3600D0),
      circleColor3: Color(0XFF1E0368),
      headText: "Healthy body, Healthy mind",
      descrpText:
          "A balance between body and mind is the key to happy life. take some moment to meditate or to self evaluate your mental health with the resources curated by us",
    );
  }
}
