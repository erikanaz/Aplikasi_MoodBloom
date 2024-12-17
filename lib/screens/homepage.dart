import 'package:flutter/material.dart';
import 'package:mood_bloom/models/destination_model.dart';
import 'package:mood_bloom/moods/bahagia.dart';
import 'package:mood_bloom/moods/melankolis.dart';
import 'package:mood_bloom/moods/petualang.dart';
import 'package:mood_bloom/moods/romantis.dart';
import 'package:mood_bloom/moods/santai.dart';
import 'package:mood_bloom/screens/detail_destination.dart';
import 'package:mood_bloom/utils/const.dart';
import 'package:mood_bloom/screens/kuliner.dart';
import 'package:mood_bloom/utils/navigation.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0; // Untuk melacak halaman yang dipilih

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Mengubah halaman yang dipilih
    });

    // Panggil fungsi navigasi dari file lain
    navigateToPage(index, context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        toolbarHeight: 65,
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'MoodBloom',
                style: TextStyle(
                  color: kButtonColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(Icons.notifications, color: grayTextColor),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 14),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "Temukan tempat yang sesuai\ndengan ",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontFamily: "ABeeZee",
                      ),
                    ),
                    TextSpan(
                      text: "suasana hatimu!",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: orangeTextColor,
                        fontFamily: "ABeeZee",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _buildMoodOption(Icons.sunny, "Bahagia", Colors.yellow),
                    SizedBox(width: 16),
                    _buildMoodOption(Icons.cloud, "Santai", Colors.blue),
                    SizedBox(width: 16),
                    _buildMoodOption(Icons.favorite, "Romantis", Colors.pink),
                    SizedBox(width: 16),
                    _buildMoodOption(Icons.explore, "Petualang", Colors.green),
                    SizedBox(width: 16),
                    _buildMoodOption(
                        Icons.nightlight, "Melankolis", Colors.indigo),
                  ],
                ),
              ),
              SizedBox(height: 24),
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.orange.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Informasi Penting",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange,
                      ),
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Icon(Icons.access_time, color: Colors.orange),
                        SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            "Jam Operasional: Setiap hari, 09.00 - 17.00 WIB",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Icon(Icons.attach_money, color: Colors.orange),
                        SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            "Harga Tiket Masuk: Rp 25.000 untuk anak-anak, Rp 40.000 untuk dewasa.",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Icon(Icons.local_parking, color: Colors.orange),
                        SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            "Fasilitas: Area parkir luas, taman bermain anak, kafe, dan spot foto instagramable.",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 18),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Destinasi Populer",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Lihat Semua",
                      style: TextStyle(
                        fontSize: 16,
                        color: orangeTextColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: destinationList.map((destination) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: _buildDestinationCard(
                        destination.title,
                        destination.imagePaths,
                        destination.rating,
                        destination, // Kirim objek ke fungsi
                      ),
                    );
                  }).toList(),
                ),
              ),
              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Event dan Promo",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Lihat Semua",
                      style: TextStyle(
                        fontSize: 16,
                        color: orangeTextColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _buildEventPromoCard(
                        "Festival Bunga", "assets/taman_mawar.jpeg"),
                    SizedBox(width: 16),
                    _buildEventPromoCard(
                        "Diskon Kuliner", "assets/gado-gado.jpg"),
                    SizedBox(width: 16),
                    _buildEventPromoCard(
                        "Promo Tiket", "assets/taman_bali.jpg"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: kButtonColor,
        unselectedItemColor: grayTextColor,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.restaurant),
            label: 'Kuliner',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Cari',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Peta',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Akun',
          ),
        ],
      ),
    );
  }

  Widget _buildMoodOption(IconData icon, String label, Color color) {
    return GestureDetector(
      onTap: () {
        // Navigasi ke halaman sesuai suasana hati
        if (label == "Bahagia") {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    BahagiaPage()), // Ganti dengan halaman yang sesuai
          );
        } else if (label == "Santai") {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    SantaiPage()), // Ganti dengan halaman yang sesuai
          );
        } else if (label == "Romantis") {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    RomantisPage()), // Ganti dengan halaman yang sesuai
          );
        } else if (label == "Petualang") {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    PetualangPage()), // Ganti dengan halaman yang sesuai
          );
        } else if (label == "Melankolis") {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    MelankolisPage()), // Ganti dengan halaman yang sesuai
          );
        }
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: color.withOpacity(0.2),
            child: Icon(icon, size: 30, color: color),
          ),
          SizedBox(height: 8),
          Text(
            label,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDestinationCard(String title, List<String> imagePaths,
      double rating, DestinationItem destination) {
    return GestureDetector(
      onTap: () {
        // Navigasi ke halaman detail dengan data destinasi
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(destination: destination),
          ),
        );
      },
      child: Container(
        width: 240,
        height: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            image: AssetImage(imagePaths[0]), // Use the first image in the list
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.5),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.yellow, size: 16),
                        SizedBox(width: 4),
                        Text(
                          rating.toString(),
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEventPromoCard(String title, String imagePath) {
    return Container(
      width: 240,
      height: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
              ),
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
