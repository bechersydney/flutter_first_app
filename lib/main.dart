import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite food',
      'answers': [
        {'text': 'humba', 'score': 5},
        {'text': 'sinigang', 'score': 4},
        {'text': 'sinugba', 'score': 3},
        {'text': 'pakbet', 'score': 1}
      ]
    },
    {
      'questionText': 'What\'s your favorite color',
      'answers': [
        {'text': 'green', 'score': 5},
        {'text': 'red', 'score': 4},
        {'text': 'blue', 'score': 3},
        {'text': 'black', 'score': 1}
      ]
    },
    {
      'questionText': 'What\'s your favorite pet',
      'answers': [
        {'text': 'dog', 'score': 5},
        {'text': 'cat', 'score': 4},
        {'text': 'bird', 'score': 3},
        {'text': 'monkey', 'score': 1}
      ]
    },
    {
      'questionText': 'What\'s your favorite place',
      'answers': [
        {'text': 'sampig', 'score': 5},
        {'text': 'mantalongon', 'score': 4},
        {'text': 'dalaguete', 'score': 3},
        {'text': 'cebu', 'score': 1}
      ]
    }
  ];
  var _questionIndex = 0;
  var _totalScore = 0;
  void _answerQuestion(int score) {
    _totalScore += score;
    if (_questionIndex < _questions.length) {
      setState(() {
        _questionIndex += 1;
      });
    }
  }

  void _resetScore() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('First app'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questionIndex: _questionIndex,
                questions: _questions,
                answerQuestion: _answerQuestion,
              )
            : Result(_totalScore, _resetScore),
      ),
    );
  }
}
