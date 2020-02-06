import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'Qual è il tuo colore preferito?',
      'answers': [
        {'text': 'Nero', 'score': 10},
        {'text': 'Rosso', 'score': 5},
        {'text': 'Verde', 'score': 3},
        {'text': 'Bianco', 'score': 1},
      ],
    },
    {
      'questionText': 'Qual è il tuo animale preferito?',
      'answers': [
        {'text': 'Cane', 'score': 10},
        {'text': 'Coniglio', 'score': 5},
        {'text': 'Serpente', 'score': 3},
        {'text': 'Gatto', 'score': 1},
      ]
    },
    {
      'questionText': 'Qual è il tuo cibo preferito?',
      'answers': [
        {'text': 'Birra', 'score': 10},
        {'text': 'Pizza', 'score': 5},
        {'text': 'Pasta', 'score': 3},
        {'text': 'Carne', 'score': 1},
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState( () {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first app'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
