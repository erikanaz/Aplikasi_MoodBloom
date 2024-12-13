import 'package:flutter/material.dart';
import 'package:mood_bloom/utils/const.dart';
import 'package:mood_bloom/screens/homepage.dart';
import 'package:mood_bloom/utils/navigation.dart';

class Kuliner extends StatefulWidget {
  @override
  State<Kuliner> createState() => _KulinerState();
}

class _KulinerState extends State<Kuliner> {
  int _selectedIndex = 1; // Untuk melacak halaman yang dipilih

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Mengubah halaman yang dipilih
    });

    // Panggil fungsi navigasi dari file lain
    navigateToPage(index, context);
  }

  // Data untuk daftar kuliner
  final List<Map<String, String>> kulinerList = [
    {
      'name': 'Nasi Timbel Komplit',
      'image': 'assets/nasi_timbel.jpg',
      'price': 'Rp 25.000',
    },
    {
      'name': 'Nasi Goreng Ayam',
      'image': 'assets/nasi_goreng.jpg',
      'price': 'Rp 20.000',
    },
    {
      'name': 'Soto Mie',
      'image': 'assets/soto_mie.jpg',
      'price': 'Rp 17.000',
    },
    {
      'name': 'Gado - Gado',
      'image': 'assets/gado-gado.jpg',
      'price': 'Rp 15.000',
    },
    {
      'name': 'Mie Aceh',
      'image': 'assets/mie_aceh.jpg',
      'price': 'Rp 15.000',
    },
    {
      'name': 'Bakso',
      'image': 'assets/bakso.jpg',
      'price': 'Rp 15.000',
    },
    {
      'name': 'Ricebowl',
      'image': 'assets/ricebowl.jpg',
      'price': 'Rp 20.000',
    },
  ];

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
              Row(
                children: [
                  SizedBox(width: 8),
                  Text(
                    'Kuliner',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Icon(Icons.notifications, color: grayTextColor),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        // Tambahkan SingleChildScrollView di sini
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hidangan Lezat di Antara ',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              Text(
                'Harumnya Bunga!',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: orangeTextColor,
                ),
              ),
              SizedBox(height: 14),
              // Daftar kuliner
              ListView.builder(
                shrinkWrap:
                    true, // Pastikan ListView dapat menyesuaikan ukuran dengan konten
                physics:
                    NeverScrollableScrollPhysics(), // Menonaktifkan scroll pada ListView karena sudah di-scroll oleh SingleChildScrollView
                itemCount: kulinerList.length,
                itemBuilder: (context, index) {
                  return Card(
                    color: lightGray,
                    elevation: 5,
                    margin: EdgeInsets.symmetric(vertical: 8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Container(
                      height: 150, // Mengubah tinggi card kuliner
                      padding: EdgeInsets.all(16),
                      child: Row(
                        children: [
                          Container(
                            width: 120,
                            height: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                  16), // Menambahkan radius pada gambar
                              image: DecorationImage(
                                image: AssetImage(kulinerList[index]['image']!),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                              width:
                                  16), // Memberikan jarak antara gambar dan teks
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  kulinerList[index]['name']!,
                                  style: TextStyle(
                                    fontSize: 16, // Menambah ukuran font judul
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  'Harga: ${kulinerList[index]['price']}',
                                  style: TextStyle(
                                    fontSize: 14, // Menambah ukuran font harga
                                    //fontWeight: FontWeight.w500,
                                    color: grayTextColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
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
}
