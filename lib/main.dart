import 'package:flutter/material.dart';
import 'package:mood_bloom/auth/sign-in.dart';
import 'package:mood_bloom/auth/sign-up.dart';
import 'package:mood_bloom/screens/akun-page.dart';
import 'package:mood_bloom/screens/cari-page.dart';
import 'package:mood_bloom/screens/homepage.dart';
import 'package:mood_bloom/screens/kuliner.dart';
import 'package:mood_bloom/screens/landingpageOne.dart';
import 'package:mood_bloom/screens/landingpageThree.dart';
import 'package:mood_bloom/screens/landingpageTwo.dart';
import 'package:mood_bloom/screens/peta-page.dart';
import 'package:mood_bloom/screens/splashscreen.dart';

void main() {
  runApp(MoodBloomApp());
}

class MoodBloomApp extends StatelessWidget {
  const MoodBloomApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
