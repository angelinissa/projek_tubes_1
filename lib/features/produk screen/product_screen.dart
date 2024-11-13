import 'package:flutter/material.dart';
import '../../core/constants/string_constants.dart';
import '../../core/constants/color_constants.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
        backgroundColor: ColorConstants.primaryBlue,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildProductCard(StringConstants.relaxProduct, '250 mg', 25.50),
          const SizedBox(height: 16),
          _buildProductCard(StringConstants.sleepProduct, '500 mg', 30.00),
        ],
      ),
    );
  }

  Widget _buildProductCard(String productName, String content, double price) {
    int quantity = 1;

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              productName,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(content),
            Text('\$$price'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.remove),
                  onPressed: () {
                    if (quantity > 1) quantity--;
                  },
                ),
                Text('$quantity'),
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    quantity++;
                  },
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text(StringConstants.buyNow),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
