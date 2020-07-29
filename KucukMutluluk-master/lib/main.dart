import 'package:englishPracticeApp/view/quiz_start_view.dart';
import 'package:englishPracticeApp/view/home_view.dart';
import 'package:englishPracticeApp/view/splash_view.dart';
import 'package:flutter/material.dart';
import 'view/quiz_view.dart';
import 'view/score_view.dart';
import 'view/splash_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: SplashScreen(),
    );
  }
}
