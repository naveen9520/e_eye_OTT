import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:e_eye/botnavi.dart';
import 'package:e_eye/loginscreen.dart';
import 'package:e_eye/regscreen.dart';
import 'package:flutter/material.dart';

import 'homepage.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          height: double.infinity,
          color: Colors.red,
          child: AnimatedSplashScreen(
            centered: false,
            splash: Padding(
              padding: const EdgeInsets.fromLTRB(100,350,0,0),
              child: Icon(Icons.video_library,size: 200,color: Colors.white,),
            ),
            nextScreen: Register_page(),
            splashTransition: SplashTransition.scaleTransition,
            duration: 300,
            backgroundColor: Colors.black,

          ),
        )
    );
  }
}
