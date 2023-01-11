import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppBaslikText extends StatelessWidget {
  final String text;
  final Color renk;
  double size;

  AppBaslikText({
    Key? key,
    required this.text,
    this.renk = Colors.black,
    this.size = 30,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
            color: renk,
            fontSize: size,
            fontWeight: FontWeight.bold,
            backgroundColor: Colors.white));
  }
}
