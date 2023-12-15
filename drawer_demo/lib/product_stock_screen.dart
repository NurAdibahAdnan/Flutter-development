import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Screen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('Overview of Product Screen'),
      ),
    );
  }
}

class StockScreen extends StatelessWidget {
  const StockScreen({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stock Screen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('Overview of Stock Screen'),
      ),
    );
  }
}
