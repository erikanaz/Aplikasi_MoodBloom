import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mood_bloom/auth/sign-in.dart';
import 'package:mood_bloom/utils/const.dart';
import 'package:mood_bloom/screens/homepage.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignUpPage> {
  // State untuk mengontrol visibilitas password
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // Ikon arrow back lebih ke bawah
                Align(
                  alignment: Alignment.centerLeft,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignInPage(),
                        ),
                      ); // Navigasi kembali
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 20), // Jarak dari atas layar
                      width: 50, // Lebar lingkaran
                      height: 50, // Tinggi lingkaran
                      decoration: BoxDecoration(
                        color: lightGray, // Warna latar belakang
                        shape: BoxShape.circle, // Membuat lingkaran
                      ),
                      child: Icon(
                        Icons.arrow_back, // Ikon kembali
                        color: Colors.black, // Warna ikon
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  "Daftar",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    fontFamily: "ABeeZee",
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "Isi detail dan buat akun",
                  style: TextStyle(
                    color: grayTextColor,
                    fontSize: 16,
                    fontFamily: "ABeeZee",
                  ),
                ),
                SizedBox(height: 40),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Nama',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                ),
                SizedBox(height: 32),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                ),
                SizedBox(height: 32),
                TextFormField(
                  obscureText:
                      !_isPasswordVisible, // Kontrol visibilitas password
                  decoration: InputDecoration(
                    labelText: 'Password',
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isPasswordVisible
                            ? Icons.visibility // Mata terbuka
                            : Icons.visibility_off, // Mata tertutup
                      ),
                      onPressed: () {
                        setState(() {
                          _isPasswordVisible =
                              !_isPasswordVisible; // Toggle visibilitas
                        });
                      },
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                ),
                SizedBox(height: 8),
                // Align(
                //   alignment: Alignment.centerLeft,
                //   child: TextButton(
                //     onPressed: () {
                //       // Logika "Lupa Password?"
                //     },
                //     child: Text(
                //       "Password harus 8 karakter",
                //       style: TextStyle(
                //         color: grayTextColor,
                //         fontSize: 14,
                //         fontFamily: "ABeeZee",
                //       ),
                //     ),
                //   ),
                // ),
                SizedBox(height: 30),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // Logika tombol
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignInPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                      backgroundColor: kButtonColor,
                    ),
                    child: Text(
                      "Daftar",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 32),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Sudah punya akun?",
                      style: TextStyle(fontSize: 14, color: grayTextColor),
                    ),
                    TextButton(
                      onPressed: () {
                        // Logika untuk navigasi ke halaman daftar
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignInPage()),
                        );
                      },
                      child: Text(
                        "Masuk",
                        style: TextStyle(fontSize: 14, color: orangeTextColor),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 6),
                Text(
                  "Atau hubungkan",
                  style: TextStyle(fontSize: 14, color: grayTextColor),
                ),
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(FontAwesomeIcons.facebook,
                        color: Colors.blue, size: 30), // Facebook
                    SizedBox(width: 20),
                    Icon(FontAwesomeIcons.instagram,
                        color: Colors.pink, size: 30), // Instagram
                    SizedBox(width: 20),
                    Icon(FontAwesomeIcons.twitter,
                        color: Colors.lightBlue, size: 30), // Twitter
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
