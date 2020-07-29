import 'dart:async';
import 'dart:math';
import 'package:englishPracticeApp/model/questions.dart';
import 'package:flutter/material.dart';
import '../components/cards/quiz_card.dart';
import '../components/buttons/button.dart';
import 'score_view.dart';

class QuizView extends StatefulWidget {
  List<String> list;
  List<Questions> data;
  int score;
  QuizView(
      {Key key, @required this.list, @required this.data, @required this.score})
      : super(key: key);
  @override
  _QuizViewState createState() => _QuizViewState(list, data, score);
}

class _QuizViewState extends State<QuizView> {
  int _counter = 30;

  var random_array;
  int index = 1;
  int j = 1;
  List<String> list;
  List<Questions> data;
  int score = 0;
  _QuizViewState(List<String> list, List<Questions> data, int score) {
    this.list = list;
    this.data = data;
    this.score = score;
  }

  genrandomarray() {
    var distinctIds = [];
    var rand = new Random();
    for (int i = 0;;) {
      distinctIds.add(rand.nextInt(data.length));
      random_array = distinctIds.toSet().toList();
      if (random_array.length < data.length) {
        continue;
      } else {
        break;
      }
    }
    index = random_array[0];
  }

  void nextquestion() {
    setState(() {
      if (j < data.length) {
        index = random_array[j];
        j++;
      } else {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => EndGameView(
                      nowScore: this.score,
                    )));
      }
    });
  }

  @override
  void initState() {
    super.initState();
    genrandomarray();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        home: SafeArea(
          child: Scaffold(
            backgroundColor: const Color(0xff11172f),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Center(
                    child: Text("Score : " + score.toString(), //FIXME
                        style: TextStyle(fontSize: 24, color: Colors.white)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: Text(
                    data[index].englishTurkish.question,
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                ),
                QuizCard(
                  urlImage: data[index].imageUrl,
                ),
                QuizButton(
                  txt: data[index].englishTurkish.answers[0].toString(),
                  answerTxt: data[index].englishTurkish.trueAnswer,
                  onPressed: (isOkey) {
                    nextquestion();
                    isOkey ? score++ : null;
                  },
                ),
                QuizButton(
                  txt: data[index].englishTurkish.answers[1].toString(),
                  answerTxt: data[index].englishTurkish.trueAnswer,
                  onPressed: (isOkey) {
                    nextquestion();
                    isOkey ? score++ : null;
                  },
                ),
                QuizButton(
                  txt: data[index].englishTurkish.answers[2].toString(),
                  answerTxt: data[index].englishTurkish.trueAnswer,
                  onPressed: (isOkey) {
                    nextquestion();
                    isOkey ? score++ : null;
                  },
                ),
                QuizButton(
                  txt: data[index].englishTurkish.answers[3].toString(),
                  answerTxt: data[index].englishTurkish.trueAnswer,
                  onPressed: (isOkey) {
                    nextquestion();
                    isOkey ? score++ : null;
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
