import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget { 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ImageSwitchScreen(),
    );
  }
}

class ImageSwitchScreen extends StatefulWidget {// widget to handle image switch
  @override
  _ImageSwitchScreenState createState() => _ImageSwitchScreenState();
}

class _ImageSwitchScreenState extends State<ImageSwitchScreen> {
  String image1 = 'images/cat1.jpg'; 
  String image2 = 'images/cat2.jpg';
  String currentImage = 'images/cat1.jpg'; // Initial image

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[500],//setting background of the app
      appBar: AppBar(
        title: Text('My Application'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[900],// appbar color
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,//align body to center
          children: <Widget>[
            Image(
              image: AssetImage(currentImage),
            ),
            SizedBox(height: 20),//constraint child size
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,//spaceEvenly divides the free horizontal space evenly between, before, and after each image.
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    // Set the image to the first image
                    setState(() {
                      currentImage = image1;
                    });
                  },
                  child: Text('Image 1'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Set the image to the second image
                    setState(() {
                      currentImage = image2;
                    });
                  },
                  child: Text('Image 2'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}//S61891 NUR ADIBAH BINTI ADNAN 10.45 PM 2/11/2023
