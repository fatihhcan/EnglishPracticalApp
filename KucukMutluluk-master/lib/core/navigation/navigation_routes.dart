import 'package:englishPracticeApp/view/home_view.dart';
import 'package:englishPracticeApp/view/splash_view.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

import '../../view/quiz_start_view.dart';

void main() {
  runApp(MaterialApp(initialRoute: "/", routes: {
    "/": (context) => SplashScreen(),
    // "/quiz": (context) => Deneme(),
  }));
}
// Navigator.pushNamed(context, "/homeview")
