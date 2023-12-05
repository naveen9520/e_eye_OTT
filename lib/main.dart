import 'package:e_eye/profilepage.dart';
import 'package:e_eye/regscreen.dart';
import 'package:e_eye/reorder.dart';
import 'package:e_eye/searchpage.dart';
import 'package:e_eye/splashscreen.dart';
import 'package:e_eye/videoplayer.dart';
import 'package:e_eye/welcomepage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'New & Hot.dart';
import 'ReorderableListView.dart';
import 'botnavi.dart';
import 'e_eye.dart';
import 'homepage.dart';
import 'loginscreen.dart';

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
      home:reorderlist(),
    );
  }
}
