import 'package:flutter/material.dart';

import 'screens/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Android Task Round',
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen(),
    );
  }
}