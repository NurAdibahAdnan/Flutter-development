import 'package:flutter/material.dart';
import 'product_stock_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo using Drawer'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('My Main Screen'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const SizedBox(
              height: 60.0,
              child: const DrawerHeader(
                decoration: BoxDecoration(color: Colors.purple),
                child: Text('Drawer Header'),
              ),
            ),
            ListTile(
              title: const Text('Products'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductScreen(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('Stocks'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => StockScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}//S61891 NUR ADIBAH BINTI ADNAN 10.06 PM 9/12/2023
