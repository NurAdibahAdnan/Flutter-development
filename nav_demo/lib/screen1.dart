import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Screen 1'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                foregroundColor: Colors.black,
              ),
              onPressed: () {
                Navigator.pushNamed(
                  context, '/first'
                );
              },
              child: Text('Go To Screen 2'), 
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.black,
              ),
              onPressed: () {
                Navigator.pushNamed(
                  context, '/second'
                );
              },
              child: Text('Go To Screen 3'), 
            ),
          ],
        ),
      ),
     
    );
  }
}//S61891 NUR ADIBAH BINTI ADNAN 10.18 AM 3/12/2023