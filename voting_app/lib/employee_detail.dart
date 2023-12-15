import 'package:flutter/material.dart';
import 'package:voting_app/home.dart';
import 'voting_candidate.dart';

class Employee {
  final String name;
  final int staffNumber;
  final String department;

  Employee(
      {required this.name,
      required this.staffNumber,
      required this.department});
}

class EmployeeDetailsScreen extends StatelessWidget {
  final List<Employee> employees = [
    Employee(name: 'Adibah', staffNumber: 12345, department: 'IT'),
    Employee(name: 'Rabiatul', staffNumber: 67890, department: 'HR'),
    Employee(name: 'Afiqah', staffNumber: 89032, department: 'IT'),
    Employee(name: 'Ilham', staffNumber: 90123, department: 'QA'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Employee Details'),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Employee Details ',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: employees.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      employees[index].name,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      'Staff Number: ${employees[index].staffNumber}, Department: ${employees[index].department}',
                      style: TextStyle(fontSize: 14),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors
                        .purple, // Set the button background color to purple
                  ),
                  child: Text('Home Screen'),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => VoteCandidateScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors
                        .purple, // Set the button background color to purple
                  ),
                  child: Text('Vote the Candidate'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}//S61891 NUR ADIBAH BINTI ADNAN 9.19 PM 9/12/2023
