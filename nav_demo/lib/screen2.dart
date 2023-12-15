import 'package:flutter/material.dart';
import 'screen3.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Screen 2'),
      ),
      body: Center(
          child:ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.black,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return Screen3();
                  })
                );
              },
              child: Text('Go To Screen 3'), 
            ),
        ),
      ); 
  }
}//S61891 NUR ADIBAH BINTI ADNAN 10.22 AM 3/12/2023