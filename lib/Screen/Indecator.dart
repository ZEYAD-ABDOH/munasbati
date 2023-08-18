import 'package:flutter/material.dart';


import '../Widtes/colors.dart';

class Indecator extends StatelessWidget {
   Indecator( {required this.index});
  int index;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Align(
      alignment: Alignment(1, size.height * .0008),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildContainer(index == 0 ? Colors.white : bkbrouwn),
          buildContainer(index == 1 ? Colors.white : bkbrouwn),
          buildContainer(index == 2 ? Colors.white : bkbrouwn),
          
        ],
      ),
    );
  }

  Container buildContainer(Color color) {
    return Container(
      margin: EdgeInsets.only(left: 20.0),
      width: 15,
      height: 15,
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
    );
  }
}
