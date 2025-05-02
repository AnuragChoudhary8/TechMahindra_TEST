import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  MyText(String t) {
    text = t;
  }
  String type = "";
  String text = "";
  String bgcolor = "";
  String txtcolor = "";
  Widget build(BuildContext context) {
    return Text(
      '${text}',
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w600,
        fontSize: 45,
      ),
    );
  }
}

class MyText1 extends StatelessWidget {
  MyText(String t, String c) {
    text = t;
    color = c;
  }

  String color = "";
  String text = "";
  Widget build(BuildContext context) {
    return Text(
      '${text}',
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w600,
        fontSize: 45,
      ),
    );
  }
}
