import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {// main program
  runApp(const MyApp());
}

class MyApp extends StatefulWidget { //
  const MyApp({super.key});
  State<StatefulWidget> createState() {
    return _MyAppState();
    throw UnimplementedError();
  }
}

class _MyAppState extends State<MyApp> {

  final _questions = const [
    //key:value
    {//First record
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'Blue', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Cat', 'score': 1},
        {'text': 'Tiger', 'score': 10},
        {'text': 'Lion', 'score': 8},
        {'text': 'Rabbit', 'score': 3},
      ],
    },
    {
      'questionText': 'What\'s your favorite instructor?',
      'answers': [
        {'text': 'Alan', 'score': 8},
        {'text': 'David', 'score': 5},
        {'text': 'Richard', 'score': 1},
        {'text': 'Steven', 'score': 3},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }


  void _answerQuestion(int score) {
    //print('Answer choosen!');

    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    
    print('Question...');
    print(_questionIndex);

    //populate the questions..
    if (_questionIndex < _questions.length) {
      print('We have more questions..!');
    } else {
      print('No more questions');
    }
  }

  //This widget is the root of your application
  @override
  Widget build(BuildContext context) { // mandatory
    return MaterialApp(
      home: Scaffold(// entire page
          appBar: AppBar(
            title: Text("My Quiz App"),
            centerTitle: true,
          ),
          body: _questionIndex < _questions.length //verify the number of questions
              ?Quiz(
                questions: _questions, 
                answerQuestion: _answerQuestion, 
                questionIndex: _questionIndex,
                )
              :Result(_totalScore,_resetQuiz)
      ),
    );
  }
}