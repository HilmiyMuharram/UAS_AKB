import 'package:flutter/material.dart';
import 'package:punyahilmiy_app/splashscreen.dart';
import 'package:punyahilmiy_app/walktrug.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Clean Code',
        home: AnimatedSplashScreen(
            duration: 3000,
            splash: SplashScreen(),
            nextScreen: walktrugku(),
            splashTransition: SplashTransition
                .scaleTransition, // Transisi animasi dari splash screen (berupa scaling)
            pageTransitionType: PageTransitionType.leftToRight,
            backgroundColor: Color.fromARGB(255, 255, 255, 255)));
  }
}
