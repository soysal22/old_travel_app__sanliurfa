import 'package:flutter/material.dart';

class BarItemView extends StatelessWidget {
  const BarItemView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Eğitimler ",
        style: TextStyle(fontSize: 35),
      ),
    );
  }
}
