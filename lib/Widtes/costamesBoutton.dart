import 'package:flutter/material.dart';
import 'package:munasbati/Widtes/colors.dart';
class CostamesBoutten extends StatelessWidget {
  String textName;
  Color color;
  double Nwidth;
  double Nheight;

  CostamesBoutten(
      {required this.textName,
      required this.color,
      required this.Nheight,
      required this.Nwidth,
      Function()? onPressed});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Align(
          alignment: Alignment(0, size.height * 0.001),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(size.width * Nwidth, size.height * Nheight),
                  primary: bkbrouwn,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50))),
              onPressed: () {},
              child: Container(
                width: double.infinity,
                height: size.height * .10,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      textAlign: TextAlign.center,
                      textName,
                      style: TextStyle(color: white, fontSize: 20)),
                ),
              )),
        )
      ],
    );
  }
}
