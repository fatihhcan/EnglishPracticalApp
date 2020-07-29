import 'package:englishPracticeApp/components/style/color/colors.dart';
import 'package:flutter/material.dart';

import 'home_view.dart';
import 'home_view.dart';
import 'score_view.dart';
import 'score_view.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String assetImage = "assets/splash.gif";
  @override
  void initState() {
    super.initState();
    Future.delayed(
        Duration(
          seconds: 5,
        ), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: temaAnaRenk,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 140, left: 100),
            child: Image.asset(assetImage),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100, left: 100),
            child: CircularProgressIndicator(),
          ),
        ],
      ),
    );
  }
}

/**
 * int score;
 * 
 * @required this.score
 * kurucu score
 * widget score diye cagır
 * builder : Scorecscreen(score)
 */
