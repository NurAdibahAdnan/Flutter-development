import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Screen 3'),
      ),
      body: Center(
          child:ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.black,
              ),
              onPressed: () {
                Navigator.pushNamed(
                  context, '/'
                );
              },
              child: Text('Go Back To Screen 1'), 
            ),
        ),
      );
  }
}//S61891 NUR ADIBAH BINTI ADNAN 10.25 AM 3/12/2023