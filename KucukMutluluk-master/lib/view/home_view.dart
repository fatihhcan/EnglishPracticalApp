import 'package:flutter/material.dart';

import '../components/buttons/button.dart';
import '../components/cards/moreoption.dart';
import '../components/style/color/colors.dart';
import '../components/style/text/text_style.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int puan1 = 123;
  bool isokay = false;
  get pageHeight => MediaQuery.of(context).size.height;
  get pageWidth => MediaQuery.of(context).size.width;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: temaAnaRenk,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            buildHeader(),
            buildScoreTable(),
            buildQuizCard("Türkçeden İngilizceye"),
            PlayButton(),
          ],
        ),
      ),
    );
  }

  Widget buildHeader() {
    return Container(
      padding: EdgeInsets.only(bottom: 30, top: 25),
      decoration: BoxDecoration(
          color: temaMaviRenk,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          FlutterLogo(
            size: 70,
          ),

          //     VBT Quiz App

          topHeader,
          PopupMenuButton(
            onSelected: popaction,
            itemBuilder: (context) {
              return MoreOption.choices.map((e) {
                return PopupMenuItem<String>(
                  value: e,
                  child: Text(e),
                );
              }).toList();
            },
            icon: Icon(
              Icons.account_circle,
              size: 36,
            ),
          )
        ],
      ),
    );
  }

  Widget buildScoreTable() {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            color: temaTuruncuRenk),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            scoreTableTextStyleTurtoEng,
            Container(
                //Dik Çizgi
                width: 2,
                height: 80,
                decoration: BoxDecoration(color: Colors.black)),
            scoreTableTextStyleEngToTur
          ],
        ),
      ),
    );
  }

  Widget buildQuizCard(String txt) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          setState(() {
            isokay = !isokay;
          });
        },
        child: Container(
            padding: EdgeInsets.only(bottom: 20, left: 40, right: 40, top: 20),
            child: // Türkçeden İngilizceye
                Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(txt, style: langTextStyle, textAlign: TextAlign.center),
                Icon(
                  isokay ? Icons.check_circle : Icons.check_circle_outline,
                  color: Colors.white,
                )
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: temaMaviRenk,
            )),
      ),
    );
  }

  void popaction(String choice) {
    if (choice == "Sign out") {
      //logout
      print("çıktı");
    }
  }
}
