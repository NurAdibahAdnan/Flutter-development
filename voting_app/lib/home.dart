import 'package:flutter/material.dart';
import 'employee_detail.dart';
import 'voting_candidate.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ABC Sdn Bhd e-Voting'),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => EmployeeDetailsScreen()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    Colors.purple, 
              ),
              child: Text('Employee Details'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => VoteCandidateScreen()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    Colors.purple, 
              ),
              child: Text('Vote the Candidate'),
            ),
          ],
        ),
      ),
    );
  }
}//S61891 NUR ADIBAH BINTI ADNAN 9.19 PM 9/12/2023
