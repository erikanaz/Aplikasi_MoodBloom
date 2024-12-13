import 'package:flutter/material.dart';
import 'package:mood_bloom/models/destination_model.dart';
import 'package:mood_bloom/utils/const.dart';
import 'package:mood_bloom/utils/navigation.dart';
//import 'package:mood_bloom/utils/destination_data.dart'; // Impor file data destinasi

class CariPage extends StatefulWidget {
  @override
  _CariPageState createState() => _CariPageState();
}

class _CariPageState extends State<CariPage> {
  int _selectedIndex = 2; // Untuk melacak halaman yang dipilih

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Mengubah halaman yang dipilih
    });

    // Panggil fungsi navigasi dari file lain
    navigateToPage(index, context);
  }

  List<Map<String, dynamic>> searchResults = []; // Awalnya kosong

  // Fungsi pencarian
  void _searchDestinations(String query) {
    // Jika input kosong, kosongkan hasil pencarian
    if (query.isEmpty) {
      setState(() {
        searchResults = [];
      });
      return;
    }

    // Filter data berdasarkan input
    final results = destinationList
        .where((destination) =>
            destination.title.toLowerCase().contains(query.toLowerCase()))
        .map((destination) => {
              'image': destination.imagePath,
              'name': destination.title,
              'rating': destination.rating,
            })
        .toList();

    // Perbarui state dengan hasil pencarian
    setState(() {
      searchResults = results;
    });
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
              Row(
                children: [
                  SizedBox(width: 8),
                  Text(
                    'Cari',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text(
                  'Kembali',
                  style: TextStyle(color: orangeTextColor),
                ),
              ),
              //Icon(Icons.notifications, color: Colors.black),
            ],
          ),
        ),
        // actions: [
        //   TextButton(
        //     onPressed: () => Navigator.pop(context),
        //     child: Text(
        //       'Kembali',
        //       style: TextStyle(color: Colors.orange),
        //     ),
        //   ),
        // ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search Bar
            Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        // fillColor: lightGray, // Warna latar belakang
                        // filled: true, // Mengaktifkan latar belakang
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                        hintText: 'Cari Tempat',
                        hintStyle: TextStyle(color: Colors.grey),
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(
                              left:
                                  0), // Menyesuaikan ruang kiri jika diperlukan
                          child: Icon(Icons.search, color: Colors.grey),
                        ),
                        border: InputBorder.none,
                        // isDense: true,
                      ),
                      onChanged: _searchDestinations, // Fungsi pencarian
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      // Implementasi voice search jika diperlukan
                    },
                    icon: Icon(Icons.mic, color: Colors.grey),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            // Hasil Pencarian
            Text(
              searchResults.isEmpty ? 'Tidak Ada Hasil' : 'Hasil Pencarian',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 8),
            // List Hasil Pencarian
            Expanded(
              child: searchResults.isEmpty
                  ? Center(
                      child: Text(
                        'Mulai mencari destinasi dengan mengetik...',
                        style: TextStyle(color: Colors.grey),
                      ),
                    )
                  : ListView.builder(
                      itemCount: searchResults.length,
                      itemBuilder: (context, index) {
                        final item = searchResults[index];
                        return Card(
                          color: lightGray,
                          elevation: 3,
                          margin: EdgeInsets.symmetric(vertical: 8),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: ListTile(
                            leading: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                item['image'],
                                // width: 70,
                                // height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            title: Text(item['name']),
                            subtitle: Row(
                              children: [
                                Icon(Icons.star, color: Colors.amber, size: 16),
                                SizedBox(width: 4),
                                Text('${item['rating']}'),
                              ],
                            ),
                            onTap: () {
                              // Implementasi navigasi ke detail tempat
                              print('Navigasi ke detail: ${item['name']}');
                            },
                          ),
                        );
                      },
                    ),
            ),
          ],
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
