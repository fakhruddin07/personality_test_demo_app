import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetQuiz;
  const Result(this.resultScore, this.resetQuiz, {super.key});

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = "You are awesome and innocent";
    } else if (resultScore <= 12) {
      resultText = "You are pretty likeable";
    } else if (resultScore <= 16) {
      resultText = "You are strange!";
    } else if (resultScore <= 16) {
      resultText = "You are strange!";
    } else {
      resultText = "You are strange!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          resultPhrase,
          style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        TextButton(
          onPressed: resetQuiz,
          child: const Text("Restart Quiz"),
        )
      ]),
    );
  }
}
