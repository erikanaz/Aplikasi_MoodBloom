import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mood_bloom/screens/landingpageOne.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      //note: 1 putaran logo 5 detik
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LandingPageOne()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff24BAEC),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Lottie.network(
              'https://lottie.host/3171a0f2-e64f-4fce-b30e-b956b98954db/GxwkLePH9F.json',
              width: 200,
              height: 200,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 650,
                ),
                Text(
                  'MoodBloom',
                  style: TextStyle(
                    fontSize: 30,
                    // fontWeight: FontWeight.bold,
                    color: Color(0xffFFFFFF),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
