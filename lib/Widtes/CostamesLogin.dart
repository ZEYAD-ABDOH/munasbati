import 'package:flutter/material.dart';
class CostmesLogin extends StatelessWidget {
  String textTitle;
  FontWeight? boldText;
  double? fontSize;
  Color? color;
  CostmesLogin(
      {required this.textTitle, this.boldText, this.fontSize, this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        textTitle,
        style: TextStyle(
            color: color,
            fontWeight: boldText,
            fontSize: fontSize,
            height: 1.3,
            wordSpacing: 2),
      ),
    );
  }
}
