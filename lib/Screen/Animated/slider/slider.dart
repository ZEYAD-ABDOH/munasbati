import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:lottie/lottie.dart';

import '../../../Widtes/colors.dart';
import '../../start_munasbati.dart';


class CarSlider extends StatelessWidget {
  List imge = [
    "assets/animation/looking-for-the-best-coffee.json",
    "assets/animation/coffee-shop-barista.json",
    "assets/animation/a-cup-of-coffee.json",
  ];

  //
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        body: ListView.builder(
      itemBuilder: (context, index) {
        return InkWell(
          onTap:(){
            Navigator.push(
                          context,
                          MaterialPageRoute(
                           builder: (context) => startPage (),
                      ));
                                  
            
          },
          child: Column(children: [
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              width: size.width * 1,
              height: size.height * .2,
              decoration: BoxDecoration(
                  color: bkbrouwn,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Image.asset(
                          Ceffice[index].img,
                          width: 100,
                          height: 100,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: size.height * .2,
                        width: size.width / 2,
                        decoration: BoxDecoration(
                            color: Colors.deepOrange[50],
                            borderRadius:
                                BorderRadius.only(topLeft: Radius.circular(50))),
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Text(Ceffice[index].title),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              textAlign: TextAlign.center,
                              Ceffice[index].des,
                              style: TextStyle(fontSize: 16),
                            ),
                          )
                        ]),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ]),
        );
      },
      itemCount: Ceffice.length,
    ));
  }
}

////
///
///
class Product {
  final String title;
  final String des;
  final String? price;
  final String img;

  Product(
      {required this.title, required this.des, required this.img, this.price});
}

List<Product> Ceffice = [
  Product(
      title: "تفاصيل مناسبتك",
      des: "من هنا يمكنك معرفه متى وكيف عملية الحجز,",
      price: "خليك في البيت وانا بحجزلك",
      img: "assets/img/Black Coffee.png"),
  Product(
      title: "مناسبتك علينا",
      des: "يمكنك ان تطلع على جيمع تفاصيل التطبيق من عنا,",
      price: "هيا بنا",
      img: "assets/img/Espresso.png"),
  Product(
      title: "مناسبتك غاليه علينا",
      des: "من هنا يمكنك معرفت ماهي نوع الاخدمات التي يقدمه تطبيقنا",
      price: "حيابك",
      img: "assets/img/Cold Coffee.png"),
  Product(
      title: "مناسبتك",
      des: "حجز وترفيه ودلع علينا كله من خلال تطبيق مناسبتك",
      price: "مرحبا بكم ",
      img: "assets/img/Latte.png"),
];
/* 
 children: [
          // FRSIT CarSlider
          SizedBox(
            height: 20.0,
          ),
          CarouselSlider(
              items: imge.map((e) {
                return Container(
                  child: Lottie.asset(e),
                );
              }).toList(),
              options: CarouselOptions(
                autoPlay: true,
                height: 180,
              )),
          ...Ceffice.map((e) {
            return Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              width: size.width * 1,
              height: size.height * .2,
              decoration: BoxDecoration(
                  color: bkbrouwn,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Image.asset(
                          e.img,
                          width: 100,
                          height: 100,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: size.height * .2,
                        width: size.width / 2,
                        decoration: BoxDecoration(
                            color: Colors.deepOrange[50],
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50))),
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Text(e.title),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(e.des),
                          )
                        ]),
                      ),
                    ],
                  )
                ],
              ),
            );
          }).toList(),
        ]
        
         */
