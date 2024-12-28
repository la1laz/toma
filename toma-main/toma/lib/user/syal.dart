import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:app_merchandise/model/model.dart';

class SyalPage extends StatelessWidget {
  final List<Product> products = [
    Product(
      name: 'Jersey Malut United',
      image: 'assets/syel1.png',
      price: 'Rp. 200.000',
      description: 'Jersey di samping merupakan original, tersedia ukuran M, L, dan XL.',
      availableSizes: ['M', 'L', 'XL'],
    ),
    Product(
      name: 'Jersey Malut United',
      image: 'assets/syel2.png',
      price: 'Rp. 200.000',
      description: 'Jersey di samping merupakan original, tersedia ukuran M, L, dan XL.',
      availableSizes: ['M', 'L', 'XL'],
    ),
    Product(
      name: 'Jersey Malut United',
      image: 'assets/syel3.png',
      price: 'Rp. 200.000',
      description: 'Jersey di samping merupakan original, tersedia ukuran M, L, dan XL.',
      availableSizes: ['M', 'L', 'XL'],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        automaticallyImplyLeading: false,
        title: Text(
          'Belanja',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white, size: 30),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: 30),
                Image.asset(
                  'assets/logomalut.jpg',
                  height: 250,
                ),
                SizedBox(width: 30),
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
                      'Malut United',
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
          Expanded(
            child: Container(
              color: Colors.red[800],
              child: ListView.builder(
                padding: EdgeInsets.all(16),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  Product product = products[index];

                  return Container(
                    margin: EdgeInsets.only(bottom: 20),
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 250,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage(product.image),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                product.name,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                product.price,
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Detail:\n${product.description}',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 10),
                              DropdownButtonFormField<String>(
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                items: product.availableSizes
                                    .map((size) => DropdownMenuItem(
                                          value: size,
                                          child: Text(size),
                                        ))
                                    .toList(),
                                onChanged: (value) {},
                                hint: Text('Pilih ukuran'),
                              ),
                              SizedBox(height: 10),
                              ElevatedButton.icon(
                                onPressed: () {
                                  // Menambahkan produk ke keranjang
                                  Provider.of<CartModel>(context, listen: false).addProduct(product);

                                  // Menampilkan pesan menggunakan SnackBar
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text('${product.name} berhasil dimasukkan ke keranjang!'),
                                    ),
                                  );
                                },
                                icon: Icon(Icons.shopping_cart, size: 30, color: Colors.black),
                                label: Text('Masukkan Keranjang'),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.red[800],
                                  foregroundColor: Colors.white,
                                  padding: EdgeInsets.symmetric(vertical: 13),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
