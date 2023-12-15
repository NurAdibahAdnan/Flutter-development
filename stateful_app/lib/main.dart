//S61891 NUR ADIBAH BINTI ADNAN 6.48 PM 11/11/2023

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyStatefulApp(),
    );
  }
}

class MyStatefulApp extends StatefulWidget {
  @override
  _MyStatefulApp createState() => _MyStatefulApp();
}

class _MyStatefulApp extends State<MyStatefulApp> {
  String _inputText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Statefull App'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(hintText: "Enter text here...!"),
              onChanged: (value) {
                setState(() {
                  _inputText = value;
                });
              },
            ),
            SizedBox(height: 16),
            Text( // if  text exceed 500, shows exceeded credit Limit
              _inputText.isNotEmpty
                  ? _inputText.length > 500
                      ? 'Exceeded Credit Limit' //if
                      : 'Processing' //else
                  : '',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        alignment: Alignment.center,
        height: 50,
        child: Text('Your text is: $_inputText'),
      ),
    );
  }
}