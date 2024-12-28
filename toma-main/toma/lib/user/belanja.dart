import 'package:flutter/material.dart';
import 'package:app_merchandise/user/jersy.dart';
import 'package:app_merchandise/user/syal.dart';
import 'package:app_merchandise/user/aksesoris.dart';

class BelanjaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.red,
        automaticallyImplyLeading: false,
        title: Text('Belanja', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),),
        leading:  IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white, size: 30),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          // Bagian Logo dan Header
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Logo
                Image.asset(
                  'assets/logomalut.jpg',
                  height: 250,
                ),
                SizedBox(width: 15),
                // Teks Merchandise
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
          ),
          SizedBox(height: 90),
          // Bagian Konten
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.red[800],
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(30),
                ),
              ),
              padding: EdgeInsets.symmetric(vertical: 70),
              child: Column(
                children: [
                  // Baris Ikon
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildCategoryItem(
                        context: context,
                        icon: Icons.dry_cleaning,
                        label: 'Jersey',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => JerseyPage()),
                          );
                        },
                      ),
                      _buildCategoryItem(
                        context: context,
                        icon: Icons.all_inclusive,
                        label: 'Syal',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SyalPage()),
                          );
                        },
                      ),
                      _buildCategoryItem(
                        context: context,
                        icon: Icons.shopping_bag,
                        label: 'Aksesoris',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AksesorisPage()),
                          );
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  // Teks Penjelasan
                  Text(
                    'Temukan dan belanja merchandise',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                  Text(
                    'Malut United',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
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

  Widget _buildCategoryItem({
    required BuildContext context,
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
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
