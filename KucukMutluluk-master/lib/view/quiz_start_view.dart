import 'dart:math';
import 'package:englishPracticeApp/model/questions.dart';
import 'package:englishPracticeApp/service/service.dart';
import 'package:englishPracticeApp/view/quiz_view.dart';
import 'package:flutter/material.dart';

class QuizStartView extends StatefulWidget {
  QuizStartView({Key key, @required this.score}) : super(key: key);

  int score;

  @override
  _QuizStartViewState createState() => _QuizStartViewState(score);
}

class _QuizStartViewState extends State<QuizStartView> {
  List<String> list = new List();
  List<Questions> data = new List();
  int score = 0;
  _QuizStartViewState(int score);
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Questions>>(
        future: getPost(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            data = snapshot.data;
            var soru = snapshot.data.length;
            var rast = Random().nextInt(soru);
            list.add(snapshot.data[rast].englishTurkish.question.toString());

            for (var i = 0; i < 4; i++) {
              list.add(
                  snapshot.data[rast].englishTurkish.answers[i].toString());
            }
            list.add(snapshot.data[rast].englishTurkish.trueAnswer);
            // print(data.length);
            return QuizView(
              list: list,
              data: data,
              score: score,
            );
          } else
            return CircularProgressIndicator();
        });
  }
}
