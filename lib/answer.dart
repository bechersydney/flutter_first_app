import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final VoidCallback answerFunction;
  const Answer(this.answerText, this.answerFunction, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(4.0),
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.purple, // background
          onPrimary: Colors.pink[200], // foreground
        ),
        onPressed: answerFunction,
        child: Text(
          answerText,
        ),
      ),
    );
  }
}
