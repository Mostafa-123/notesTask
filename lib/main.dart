import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:task3/notes.dart';
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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AnimatedSplashScreen(
          duration: 3000,
          animationDuration: Duration(milliseconds: 3000),
          pageTransitionType: PageTransitionType.leftToRight,
          splashTransition: SplashTransition.fadeTransition,
          splashIconSize: 300,
          splash: Image.asset('assets/images/Group 12.png'),
          nextScreen: const notes()),
    );
  }
}
