import 'package:flutter/material.dart';
import 'package:mood_bloom/auth/sign-in.dart';
import 'package:mood_bloom/utils/const.dart';
import 'package:mood_bloom/utils/navigation.dart';

class AkunPage extends StatefulWidget {
  const AkunPage({Key? key}) : super(key: key);

  @override
  _AkunPageState createState() => _AkunPageState();
}

class _AkunPageState extends State<AkunPage> {
  int _selectedIndex = 4; // Untuk melacak halaman yang dipilih

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
              Row(
                children: [
                  SizedBox(width: 8),
                  Text(
                    'Akun',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Icon(
                Icons.edit_note_rounded,
                color: kButtonColor,
                size: 30,
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.center, // Center the content horizontally
          children: [
            // Profile section
            Column(
              children: [
                Container(
                  width: 80.0,
                  height: 80.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    border: Border.all(
                      color: Colors.black, // Border color
                      width: 2.0, // Border width
                    ),
                  ),
                  child: CircleAvatar(
                    radius: 40.0,
                    backgroundImage: AssetImage(
                        'assets/avatar.jpg'), // Replace with actual avatar
                  ),
                ),
                SizedBox(height: 12.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Ilham Ikhsani',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      'ilham@gmail.com',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 32.0),

            // List options (Disimpan, Pengaturan, Bantuan, Keluar)
            // List options with custom icon, text colors, trailing arrow, and shadow
            Column(
              children: [
                _buildListTile(
                  icon: Icons.account_circle,
                  title: 'Akun',
                  onTap: () {},
                ),
                _buildListTile(
                  icon: Icons.bookmark,
                  title: 'Disimpan',
                  onTap: () {},
                ),
                _buildListTile(
                  icon: Icons.settings,
                  title: 'Pengaturan',
                  onTap: () {},
                ),
                _buildListTile(
                  icon: Icons.help,
                  title: 'Bantuan',
                  onTap: () {},
                ),
                _buildListTile(
                  icon: Icons.exit_to_app,
                  title: 'Keluar',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignInPage()),
                    );
                  },
                ),
              ],
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

  // Method to build ListTile with shadow
  Widget _buildListTile({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    Color iconColor;
    Color textColor;

    // Apply the condition using 'if' to determine the icon color
    if (title == 'Keluar') {
      iconColor = kButtonColor; // Blue color for 'Keluar' icon
      textColor = kButtonColor;
    } else {
      iconColor = Colors.grey; // Default color for other icons
      textColor = Colors.black;
    }

    return Container(
      margin: EdgeInsets.only(bottom: 8.0), // Space between tiles
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.black26, // Shadow color
        //     offset: Offset(0, 2), // Position of shadow
        //     blurRadius: 2.0, // Blur effect of shadow
        //   ),
        // ],
      ),
      child: ListTile(
        leading: Icon(
          icon,
          color: iconColor, // Change icon color
        ),
        title: Text(
          title,
          style: TextStyle(
            color: textColor, // Change text color
          ),
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          size: 18,
          color: iconColor, // Color of the arrow
        ),
        onTap: onTap,
      ),
    );
  }
}
