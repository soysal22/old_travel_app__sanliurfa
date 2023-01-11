import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ResponsiveButton extends StatelessWidget {
  bool isResponsive;
  double? witdh;

  ResponsiveButton({Key? key, this.isResponsive = false, this.witdh})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: witdh,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.red,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(
            Icons.arrow_right_alt_outlined,
            size: 30,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
