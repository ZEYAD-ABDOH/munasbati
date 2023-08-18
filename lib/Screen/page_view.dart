import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../Widtes/colors.dart';
import 'Indecator.dart';
int pageIndex = 0;
class Pview extends StatefulWidget {
  @override
  State<Pview> createState() => _PviewState();
}
class _PviewState extends State<Pview> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged: (value) {
              setState(() {
                pageIndex = value;
              });
            },
            children: pagev.map((e) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.deepOrange[50],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Lottie.asset(
                      e.Img,
                      height: size.height * .7,
                      animate: true,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(11.0),
                      child: Text(
                        textAlign: TextAlign.center,
                        e.title,
                        style: TextStyle(
                            color: Colors.brown[600],
                            fontWeight: FontWeight.bold,
                            fontSize: 20.2,
                            wordSpacing: 2),
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
          Indecator(index: pageIndex),
          Align(
            alignment: Alignment(0, size.height * 0.001),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(size.width * .8, size.height * .06),
                    primary: bkbrouwn,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50))),
                onPressed: () {
                  if (pageIndex == 2) {
                    Future.delayed(Duration(seconds: 1),
                        () => Navigator.pushNamed(context, "HomeScreen"));
                  }
                },
                child: Container(
                  width: double.infinity,
                  height: 40,
                  child: Text(
                      textAlign: TextAlign.center,
                      "حيا بك معنا",
                      style: TextStyle(color: white, fontSize: 20)),
                )),
          )
        ],
      ),
    );
  }
}

class Data {
  final String title;
  final String Img;
  final IconData? Icon;

  Data({required this.title, required this.Img, this.Icon});
}

List<Data> pagev = [
  Data(
    title:
        " مرحبا بكم في تطبيقنا مناسبتي من خلال تطبيق يمكنك تنظيم حفلاتك",
    Img: "assets/animation/animation_ll0g9102.json",
  ),
  Data(
      title: " من خلال تطبيق مناسبتك يمكنك تنظيم وحجز مناسبه الخاصه فيك  من البيت ",
      Img: "assets/animation/animation_ll0gey6g.json"),
  Data(
      title:
          " تطبيق مناسبتي يساعدك في تجهيز  مناسباتك بوقت قصير ",
      Img: "assets/animation/looking-for-the-best-coffee.json")
];
