
import 'package:e_eye/splashscreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'homepage.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyB48NtewA3hBIZwqFu-FadAwl57izR0Wbc",
          appId: "com.naveensolution.e_eye",
          messagingSenderId: "796908303570",
          projectId:"ottproject-96600"));
  runApp(MyApp());
}




class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:home(),
    );
  }
}
