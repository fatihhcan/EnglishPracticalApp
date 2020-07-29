import 'package:englishPracticeApp/components/style/color/colors.dart';
import 'package:englishPracticeApp/components/buttons/button.dart';
import 'package:englishPracticeApp/components/style/text/text_style.dart';
import 'package:flutter/material.dart';

class EndGameView extends StatefulWidget {
  EndGameView({Key key, @required this.nowScore})
      : super(
          key: key,
        );
  int nowScore;
  @override
  _EndGameViewState createState() => _EndGameViewState(nowScore);
}

class _EndGameViewState extends State<EndGameView> {
  //_EndGameViewState(nowScore);
  int nowScore;

  _EndGameViewState(int nowScore) {
    this.nowScore = nowScore;
  }
  get pageHeight => MediaQuery.of(context).size.height;
  get pageWidth => MediaQuery.of(context).size.width;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: temaAnaRenk,
          body: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: Colors.white),
            height: pageHeight - 50,
            margin:
                const EdgeInsets.only(left: 15, right: 15, top: 60, bottom: 60),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 25,
                ),
                Text(
                  nowScore.toString() + "/29",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                // StarImage(),
                buildButtons()
              ],
            ),
          )),
    );
  }
}

Padding buildButtons() {
  return Padding(
    padding: const EdgeInsets.only(left: 70, right: 50, bottom: 50, top: 100),
    child: Column(
      children: <Widget>[
        TryButton(),
        SizedBox(
          height: 15,
        ),
        ExitButton()
      ],
    ),
  );
}
