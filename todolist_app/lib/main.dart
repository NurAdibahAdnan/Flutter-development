import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyMainPage()));

class MyMainPage extends StatefulWidget {
  const MyMainPage({Key? key}) : super(key: key);

  @override
  State<MyMainPage> createState() => _MyMainPage();
}

class _MyMainPage extends State<MyMainPage> {
  List<String> _todoRecords = ['Task 1', 'Task 2', 'Task 3', 'Task 4'];

  void _addingToDO() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        String newToDo = '';

        return AlertDialog(
          title: Text('Enter New Task Below:'),
          content: TextField(
            onChanged: (value) {
              newToDo = value;
            },
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                'Cancel',
                style: TextStyle(color: Colors.red), // Set Cancel button color
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _todoRecords.add(newToDo);
                  print('A task has been added');
                });
                Navigator.of(context).pop();
              },
              child: Text(
                'Submit',
                style: TextStyle(color: Colors.green), // Set Submit button color
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.green, // Set the app bar color directly
        ),
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.green), // Change the accent color
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(Colors.green), // Set default text button color
          ),
        ),
        fontFamily: 'Roboto', // Use a custom font
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('To-Do List'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: _todoRecords.length,
          itemBuilder: (context, index) {
            final toDo = _todoRecords[index];

            return ListTile(
              title: Text(
                toDo,
                style: TextStyle(
                  fontSize: 20.0, // Increase font size to 20
                  fontWeight: FontWeight.bold,
                  shadows: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
              ),
              onTap: () {
                setState(() {
                  _todoRecords.removeAt(index);
                  print('A task has been deleted');
                });
              },
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: _addingToDO,
        ),
      ),
    );
  }
}//S61891 NUR ADIBAH BINTI ADNAN 3.52 AM 1/12/2023
