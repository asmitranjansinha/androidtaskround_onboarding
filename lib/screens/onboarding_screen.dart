import 'package:androidtaskround_onboarding/widgets/onboarding_widget.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class OnboardingScreen1 extends StatelessWidget {
  const OnboardingScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Onboarding(
      image: AssetImage("assets/images/1575284384-removebg-preview 2.png"),
      circleColor1: Color(0XFF3600D0),
      circleColor2: Color(0XFF1E0368),
      circleColor3: Color(0XFF1E0368),
      headText: "Feeling Stressed?",
      descrpText:
          "Everyone feels stressed from time to time and don’t know how to deal with it. We have curated many different ways to help you cope up with stress. Find people with whom you can talk, experts to assist you and meditation tricks to ease up your mind",
    );
  }
}

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
