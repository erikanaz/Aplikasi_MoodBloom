import 'package:flutter/material.dart';
import 'package:mood_bloom/utils/const.dart';
import 'package:mood_bloom/screens/landingpageTwo.dart';

class LandingPageOne extends StatelessWidget {
  Widget _buildIndicator({required bool isActive}) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 400),
      height: 6,
      width: isActive ? 28 : 6,
      decoration: BoxDecoration(
        color: isActive ? kButtonColor : Color(0xFFCAEAFF),
        borderRadius: BorderRadius.circular(16),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Bagian Gambar
          Expanded(
            flex: 3,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/landingpage.jpg'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(30)),
                  ),
                ),
                Positioned(
                  top: 60,
                  right: 20,
                  child: TextButton(
                    onPressed: () {
                      // Navigasi ke halaman berikutnya
                    },
                    child: Text(
                      "Skip",
                      style: TextStyle(
                        color: Color(0xFFCAEAFF),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Bagian Konten
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "Selamat Datang\ndi ",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontFamily: "ABeeZee",
                          ),
                        ),
                        TextSpan(
                          text: "MoodBloom!",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: orangeTextColor,
                            fontFamily: "ABeeZee",
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "Jelajahi pesona Taman Bunga Cianjur dan temukan rekomendasi pengalaman yang\n sesuai dengan suasana hatimu",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: grayTextColor,
                      fontFamily: "Actor",
                    ),
                  ),
                  //SizedBox(height: 32),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildIndicator(isActive: true),
                      SizedBox(width: 6),
                      _buildIndicator(isActive: false),
                      SizedBox(width: 6),
                      _buildIndicator(isActive: false),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Navigasi ke halaman utama
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LandingPageTwo()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: kButtonColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 110, vertical: 15),
                    ),
                    child: Text(
                      "Mari Kita Mulai",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
