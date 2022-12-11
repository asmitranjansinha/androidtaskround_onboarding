import 'package:androidtaskround_onboarding/screens/onboarding_screen_second.dart';
import 'package:androidtaskround_onboarding/widgets/onboarding_widget.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class OnboardingScreen1 extends StatelessWidget {
  const OnboardingScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Onboarding(
      image:
          const AssetImage("assets/images/1575284384-removebg-preview 2.png"),
      circleColor1: const Color(0XFF3600D0),
      circleColor2: const Color(0XFF1E0368),
      circleColor3: const Color(0XFF1E0368),
      headText: "Feeling Stressed?",
      descrpText:
          "Everyone feels stressed from time to time and don’t know how to deal with it. We have curated many different ways to help you cope up with stress. Find people with whom you can talk, experts to assist you and meditation tricks to ease up your mind",
      ontap: () {
        Get.to(() => const OnboardingScreen2(),
            transition: Transition.rightToLeftWithFade);
      },
    );
  }
}
