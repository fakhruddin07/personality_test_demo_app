import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectAnswer;
  final String answerText;
  const Answer(this.selectAnswer, this.answerText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: selectAnswer,
        style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
        child: Text(answerText),
      ),
    );
  }
}
