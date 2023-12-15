import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class City {
  String code, cityName;

  City({required this.code,required this.cityName});
}

class MyApp extends StatelessWidget {

String cityDetail = "";
  List<City> city = [
    City(code: "KUL", cityName: "Kuala Lumpur"),
    City(code: "AKL", cityName: "Auckland"),
    City(code: "DTM", cityName: "Dortmund"),
    City(code: "LPL", cityName: "Liverpool"),
    City(code: "IBZ", cityName: "Ibiza"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyApp',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Fetch records into ListView.builder'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: city.length,
          itemBuilder: (context, index) {
            return Card(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: ListTile(
                  leading: CircleAvatar(
                    child: Text(
                      city[index].code,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  title: Text(
                    city[index].cityName,
                      style: TextStyle(
                        fontSize: 15,
                      ),
                  ),
                  trailing: Icon(Icons.more_vert),
                  onTap: () {
                    cityDetail = city[index].cityName;
                    print('You tapped on $cityDetail');
                  },
                ),
              ),
            );
          },
        ),
      ),    
    );
  }

}//S61891 NUR ADIBAH BINTI ADNAN 12.15 PM 25/11/2023
