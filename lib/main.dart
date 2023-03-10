import 'package:flutter/material.dart';
import 'package:notes/home_screen.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() {
  runApp(const Notes_Screen());
}

class Notes_Screen extends StatelessWidget {
  const Notes_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splashIconSize: 900,
        splash: Container(
            child: Image.asset('image/download.png', fit: BoxFit.cover, )
        ),
        nextScreen: const home_screen(),
        duration: 2500,
      ),
    );
  }
}
