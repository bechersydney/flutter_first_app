import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultTotal;
  final VoidCallback resetScore;
  const Result(this.resultTotal, this.resetScore, {Key? key}) : super(key: key);

  String get resultPhase {
    String resultText;
    if (resultTotal >= 20) {
      resultText = 'You are fantastic good best';
    } else if (resultTotal >= 12) {
      resultText = 'You are better';
    } else {
      resultText = 'You are bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhase,
            style: TextStyle(
              color: Colors.green[900],
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              primary: Colors.yellow[900],
              side: const BorderSide(color: Colors.red)
            ),
            onPressed: resetScore,
            child: const Text(
              'Reset Score',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          )
        ],
      ),
    );
  }
}
