import 'dart:async';
import 'dart:io';

import 'package:englishPracticeApp/components/style/color/colors.dart';
import 'package:englishPracticeApp/components/style/text/text_style.dart';
import 'package:englishPracticeApp/model/questions.dart';
import 'package:englishPracticeApp/view/quiz_start_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../view/quiz_start_view.dart';
import '../style/color/colors.dart';

class StartButton extends StatelessWidget {
  const StartButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 250,
      child: RaisedButton(
        onPressed: () {},
        child: startText,
        color: temaTuruncuRenk,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}

class HighScoreButton extends StatelessWidget {
  const HighScoreButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 250,
      child: RaisedButton(
        onPressed: () {},
        child: highScoreText,
        color: temaSariRenk,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}

class ProfileButton extends StatelessWidget {
  const ProfileButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 250,
      child: RaisedButton(
        onPressed: () {},
        child: profileText,
        color: temaSariRenk,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}

class PlayButton extends StatelessWidget {
  const PlayButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40, right: 40),
      child: SizedBox(
        width: double.infinity,
        height: 60,
        child: RaisedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => QuizStartView()));
            },
            child: Text(
              "Oyna",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            color: temaBeyazRenk),
      ),
    );
  }
}

// ignore: must_be_immutable
class QuizButton extends StatefulWidget {
  QuizButton(
      {Key key, @required this.txt, @required this.answerTxt, this.onPressed})
      : super(key: key);

  final String txt;
  final String answerTxt;
  List<Questions> dataes;
  final Function(bool isOkey) onPressed;
  @override
  _QuizButtonState createState() => _QuizButtonState();
}

class _QuizButtonState extends State<QuizButton> {
  Color colortoshow = temaSariRenk;

  Color right = Colors.green;

  Color wrong = Colors.red;
  bool isOkey;
  void checkanswer() {
    setState(() {
      isOkey = widget.answerTxt == widget.txt;
    });
  }

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    //isOkey = widget.answerTxt == widget.txt;
  }

  Color get backgroundColor {
    if (isOkey == null) {
      return temaSariRenk;
    } else {
      return widget.answerTxt == widget.txt ? right : wrong;
    }
  }

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Colors.transparent,
      padding: EdgeInsets.zero,
      onPressed: () async {
        checkanswer();
        await Future.delayed(Duration(seconds: 1));
        this.widget.onPressed(isOkey);
        setState(() {
          isOkey = null;
        });
      },
      child: AnimatedContainer(
        height: MediaQuery.of(context).size.height * 0.08,
        width: MediaQuery.of(context).size.width * 0.5,
        duration: Duration(seconds: 1),
        decoration: BoxDecoration(
            color: backgroundColor, borderRadius: BorderRadius.circular(20)),
        child: Center(
          child: Text(
            widget.txt,
            style: TextStyle(
                color: temaBeyazRenk,
                fontSize: 17,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

class TryButton extends StatelessWidget {
  const TryButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 250,
      child: RaisedButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => QuizStartView()));
        },
        child: tryagainText,
        color: temaMaviRenk,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}

class ExitButton extends StatelessWidget {
  const ExitButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 250,
      child: RaisedButton(
        onPressed: () {
          SystemNavigator.pop();
        },
        child: exitText,
        color: temaMaviRenk,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}
