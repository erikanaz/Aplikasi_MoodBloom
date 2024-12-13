import 'package:flutter/material.dart';
import 'package:mood_bloom/screens/cari-page.dart';
import 'package:mood_bloom/screens/homepage.dart';
import 'package:mood_bloom/screens/kuliner.dart';
import 'package:mood_bloom/screens/akun-page.dart';
import 'package:mood_bloom/screens/peta-page.dart';

void navigateToPage(int index, BuildContext context) {
  switch (index) {
    case 0:
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomePage()));
      break;
    case 1:
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Kuliner()));
      break;
    case 2:
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => CariPage()));
      break;
    case 3:
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => PetaPage()));
      break;
    case 4:
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => AkunPage()));
      break;
  }
}
