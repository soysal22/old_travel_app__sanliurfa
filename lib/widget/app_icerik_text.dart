import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppIcerikText extends StatelessWidget {
  final String text;
  final Color renk;
  double size;

  AppIcerikText(
      {Key? key, required this.text, this.renk = Colors.black, this.size = 30})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
            fontSize: size,
            color: renk,
            fontWeight: FontWeight.bold,
            backgroundColor: Colors.white));
  }
}
