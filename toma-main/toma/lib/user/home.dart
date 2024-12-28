import 'package:flutter/material.dart';
import 'package:app_merchandise/user/belanja.dart';
import 'package:app_merchandise/user/keranjang.dart';
import 'package:app_merchandise/user/status.dart';

class HomeUserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 80),
            // Header dengan Logo di Leading dan Teks di Kanan
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                children: [
                  // Logo
                  Image.asset(
                    'assets/logomalut.jpg',
                    height: 250,
                  ),
                  SizedBox(width: 15),
                  // Teks Header
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Selamat datang di Home',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          color: Colors.red[800],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Merchandise',
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.red[800],
                            ),
                          ),
                          Text(
                            'Malut',
                            style: TextStyle(
                              fontSize: 45,
                              fontWeight: FontWeight.bold,
                              color: Colors.red[800],
                            ),
                          ),
                          Text(
                            'United',
                            style: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                              color: Colors.red[800],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 100),
            // Menu
            Expanded(
              child: Container(
                padding: EdgeInsets.only(top: 70),
                decoration: BoxDecoration(
                  color: Colors.red[800],
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    // Baris 1 Menu
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(padding: EdgeInsets.only(right: 10)),
                        _buildMenuItem(
                          icon: Icons.shopping_bag_outlined,
                          label: 'Belanja',
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => BelanjaPage()),
                            );
                          },
                        ),
                        Padding(padding: EdgeInsets.only(left: 10)),
                        _buildMenuItem(
                          icon: Icons.shopping_cart_checkout,
                          label: 'Keranjang',
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => KeranjangPage()),
                            );
                          },
                        ),
                        Padding(padding: EdgeInsets.only(left: 10)),
                        _buildMenuItem(
                          icon: Icons.receipt_long,
                          label: 'Status Pesanan',
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => StatusPage()),
                            );
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: 50),
                    // Tombol Keluar
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                      ),
                      child: Text(
                        'Keluar',
                        style: TextStyle(
                          color: Colors.red[800],
                          fontSize: 16,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem({required IconData icon, required String label, required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: Icon(
              icon,
              color: Colors.red[800],
              size: 40,
            ),
          ),
          SizedBox(height: 10),
          Text(
            label,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
