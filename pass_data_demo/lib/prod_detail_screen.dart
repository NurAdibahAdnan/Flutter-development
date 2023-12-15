import 'package:flutter/material.dart';
import 'product.dart';

class ProductDetailScreen extends StatelessWidget {
  final Product products;
  const ProductDetailScreen({Key? key, required this.products})
  :super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(products.code),
      ),
      body: Center(
        child: Text(products.description),
      ),
    );
  }
}//S61891 NUR ADIBAH BINTI ADNAN 11.47 PM 8/12/2023