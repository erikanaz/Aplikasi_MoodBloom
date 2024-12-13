import 'package:flutter/material.dart';
import 'package:mood_bloom/utils/const.dart';
import 'package:mood_bloom/utils/navigation.dart';

class PetaPage extends StatefulWidget {
  const PetaPage({super.key});

  @override
  State<PetaPage> createState() => _PetaPageState();
}

class _PetaPageState extends State<PetaPage> {
  int _selectedIndex = 3; // Untuk melacak halaman bottom navigator yang dipilih
  int _selectedIndexPage = 0; // Untuk melacak tampilan Peta atau Keterangan

  // Fungsi untuk memilih tampilan yang akan ditampilkan
  void _onItemTappedPage(int index) {
    setState(() {
      _selectedIndexPage =
          index; // Mengubah tampilan berdasarkan tombol yang dipilih
    });
  }

  // Fungsi untuk navigasi bottom navigation bar
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Mengubah halaman bottom navigator yang dipilih
    });

    // Panggil fungsi navigasi dari file lain jika diperlukan
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
              Row(
                children: [
                  SizedBox(width: 8),
                  Text(
                    'Peta',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Icon(
                Icons.notifications,
                color: Colors.grey,
                size: 30,
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          // Tombol untuk memilih Peta dan Keterangan sebaris
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Tombol Peta
                Expanded(
                  child: GestureDetector(
                    onTap: () => _onItemTappedPage(0), // Memilih tampilan Peta
                    child: Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.blue.shade50,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.blue.shade200),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.map, color: Colors.blue, size: 30),
                          SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              'Peta',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10), // Jarak antar tombol
                // Tombol Keterangan
                Expanded(
                  child: GestureDetector(
                    onTap: () =>
                        _onItemTappedPage(1), // Memilih tampilan Keterangan
                    child: Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.green.shade50,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.green.shade200),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.info, color: Colors.green, size: 30),
                          SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              'Keterangan',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Tampilan berdasarkan pilihan yang dipilih (Peta atau Keterangan)
          Expanded(
            child: IndexedStack(
              index:
                  _selectedIndexPage, // Gunakan _selectedIndexPage untuk menampilkan Peta atau Keterangan
              children: [
                // Tampilan Peta
                Center(
                  child: Image.asset(
                    'assets/peta.jpeg', // Gantilah dengan gambar peta Anda
                    fit: BoxFit.cover,
                  ),
                ),
                // Tampilan Keterangan
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ListView(
                    children: [
                      Text(
                        'Keterangan:',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        '1. Gerbang Utama Taman Bunga Nusantara\n'
                        '2. Lokasi Parkir Taman Bunga Nusantara\n'
                        '3. Pintu masuk Taman Bunga Nusantara\n'
                        '4. Stasiun wira-wiri\n'
                        '5. Bursa bunga\n'
                        '6. Mushola\n'
                        '7. Toilet\n'
                        '8. Parkir Bus\n'
                        '9. Topiari merak\n'
                        '10. Lokasi piknik\n'
                        '11. Taman air\n'
                        '12. Rumah kaca\n'
                        '13. Display karpet bunga\n'
                        '14. Koleksi bambu\n'
                        '15. Jam tangan\n'
                        '16. Shelter\n'
                        '17. Taman mawar\n'
                        '18. Taman Perancis\n'
                        '19. Amphiteather\n'
                        '20. Danau angsa\n'
                        '21. Food Stall\n'
                        '22. Taman Mediterania\n'
                        '23. Taman Labirinth\n'
                        '24. Menara Pandang\n'
                        '25. Taman Bali\n'
                        '26. Taman Palem\n'
                        '27. Lokasi Pembibitan\n'
                        '28. Restoran\n'
                        '29. Taman Amerika\n'
                        '30. Dahlia Corner\n'
                        '31. Air Mancur Musikal\n'
                        '32. Taman Jepang\n'
                        '33. PT. Bina Usaha Flora\n'
                        '34. Restoran Saung Aki\n'
                        '35. Villa Saung Nini\n'
                        '36. CV. Agrotani\n'
                        '37. PT. ABN ( Produsen bunga krisan)',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex:
            _selectedIndex, // Indeks halaman utama untuk bottom navigation
        onTap: _onItemTapped, // Navigasi berdasarkan bottom navigation
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
