import "package:flutter/material.dart";

class QuizCard extends StatelessWidget {
  String urlImage;
  QuizCard({Key key, @required this.urlImage}) : super(key: key);
  final String url =
      "https://images-na.ssl-images-amazon.com/images/I/71ZCJYuOqIL.png";
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 250,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
        child: Image.network(urlImage),
      ),
    );
  }
}
