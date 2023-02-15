import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/answer.dart';
import 'package:flutter_complete_guide/question.dart';
import 'package:flutter_complete_guide/quiz.dart';
import 'package:flutter_complete_guide/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // const MyApp({super.key});
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      "questionText": "What\'s your favourite color?",
      "answers": [
        {"text": "Black", "score": 10},
        {"text": "Green", "score": 3},
        {"text": "White", "score": 1},
        {"text": "Grey", "score": 7},
      ]
    },
    {
      "questionText": "What\'s your favourite animal?",
      "answers": [
        {"text": "Lion", "score": 1},
        {"text": "Wolf", "score": 7},
        {"text": "Panther", "score": 5},
        {"text": "Tiger", "score": 3},
      ]
    },
    {
      "questionText": "Who\'s your favourite instructor?",
      "answers": [
        {"text": "Max", "score": 2},
        {"text": "Joe Rogan", "score": 3},
        {"text": "Graham", "score": 5},
        {"text": "Jorder Peterson", "score": 6},
      ]
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
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print("Answer chosen!");
    if (_questionIndex < _questions.length) {
      print("We have more question");
    } else {
      print("No more question!");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(title: const Text("Personality Test App")),
          body: _questionIndex < _questions.length
              ? Quiz(
                  questionIndex: _questionIndex,
                  answerQuestion: _answerQuestion,
                  questions: _questions,
                )
              : Result(_totalScore, _resetQuiz),
        ),
      ),
    );
  }
}
