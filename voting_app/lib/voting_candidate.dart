import 'package:flutter/material.dart';
import 'home.dart';

class VoteCandidateScreen extends StatefulWidget {
  @override
  _VoteCandidateScreenState createState() => _VoteCandidateScreenState();
}

class _VoteCandidateScreenState extends State<VoteCandidateScreen> {
  String selectedCandidate = '';
  String voteMessage = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vote the Candidate'),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Please choose the desired candidate'),
            SizedBox(height: 20),
            // Radio buttons for candidate selection
            ListTile(
              title: const Text('Candidate A : Adibah'),
              leading: Radio<String>(
                value: 'Candidate A',
                groupValue: selectedCandidate,
                onChanged: (String? value) {
                  setState(() {
                    selectedCandidate = value!;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('Candidate B : Rabiatul'),
              leading: Radio<String>(
                value: 'Candidate B',
                groupValue: selectedCandidate,
                onChanged: (String? value) {
                  setState(() {
                    selectedCandidate = value!;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('Candidate C : Afiqah'),
              leading: Radio<String>(
                value: 'Candidate C',
                groupValue: selectedCandidate,
                onChanged: (String? value) {
                  setState(() {
                    selectedCandidate = value!;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('Candidate D : Ilham'),
              leading: Radio<String>(
                value: 'Candidate D',
                groupValue: selectedCandidate,
                onChanged: (String? value) {
                  setState(() {
                    selectedCandidate = value!;
                  });
                },
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Display a message after choosing a candidate
                if (selectedCandidate.isNotEmpty) {
                  setState(() {
                    voteMessage = 'You voted for $selectedCandidate.';
                  });
                } else {
                  // Display an error message if no candidate is selected
                  setState(() {
                    voteMessage =
                        'Please select a candidate before proceeding!';
                  });
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    Colors.purple, // Set the button background color to purple
              ),
              child: Text('Submit Vote'),
            ),
            SizedBox(height: 20),
            // Display the vote message
            Text(
              voteMessage,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.green),
            ),
            SizedBox(height: 20),
            // Button to return to the home screen
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    Colors.purple, // Set the button background color to purple
              ),
              child: Text('Home Screen'),
            ),
          ],
        ),
      ),
    );
  }
}//S61891 NUR ADIBAH BINTI ADNAN 9.19 PM 9/12/2023
