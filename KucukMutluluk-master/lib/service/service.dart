import 'dart:convert';

import 'package:englishPracticeApp/model/questions.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

String url = 'http://10.0.2.2:8081/quiz/v1/question/random/29';
Future<List<Questions>> getPost() async {
  List<Questions> _questions = [];
  var response = await http.get(url);
  final bodyResponse = jsonDecode(response.body);
  if (bodyResponse is List) {
    _questions = bodyResponse.map((e) => Questions.fromJson(e)).toList();
  }
  return _questions;
}
