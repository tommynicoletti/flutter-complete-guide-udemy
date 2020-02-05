import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'Qual è il tuo colore preferito?',
        'answers': ['Nero', 'Rosso', 'Verde', 'Bianco']
      },
      {
        'questionText': 'Qual è il tuo animale preferito?',
        'answers': ['Cane', 'Coniglio', 'Serpente', 'Gatto']
      },
      {
        'questionText': 'Qual è il tuo cibo preferito?',
        'answers': ['Birra', 'Pizza', 'Pasta', 'Carne']
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first app'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex]['questionText'],
            ),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
          ],
        ),
      ),
    );
  }
}
