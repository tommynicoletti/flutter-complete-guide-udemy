import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  String get resultPhrase {
    var resultText = 'Hai finito! ';
    if(resultScore <= 8) {
      resultText = 'Fantastico!';
    } else if(resultScore <= 12) {
      resultText = 'Quasi piacevole!';
    } else if(resultScore <= 16) {
      resultText = 'Sei strano';
    } else {
      resultText = 'Sei cattivissimo';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
