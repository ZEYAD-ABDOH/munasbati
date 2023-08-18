// ignore: file_names
import 'package:flutter/material.dart';
import '../Widtes/CostamesLogin.dart';
import '../Widtes/colors.dart';
import '../Widtes/costamesFormField.dart';
import 'package:lottie/lottie.dart';
import 'Animated/slider/slider.dart';
import 'Register.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: bkbrouwn,
        body:
            ListView(physics: NeverScrollableScrollPhysics(), //  NeverScrolla,
                children: [
              Padding(
                padding: const EdgeInsets.only(top: 50.0, left: 40.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CostmesLogin(
                        color: white,
                        textTitle: "تسجيل",
                        boldText: FontWeight.bold,
                        fontSize: 50.0),
                    CostmesLogin(
                      color: white,
                      textTitle: " ادخل معلوماتك",
                      fontSize: 20.0,
                      boldText: FontWeight.w500,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: size.height * .8,
                    decoration: BoxDecoration(
                        color: Colors.deepOrange[50],
                        borderRadius: const BorderRadius.horizontal(
                            left: const Radius.circular(30),
                            right: Radius.circular(30))),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 100),
                    child: Container(
                      margin: EdgeInsets.only(left: 10.0),
                      width: size.width * 12,
                      height: size.height * .20,
                      child: Lottie.asset("assets/animation/login.json"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 200, horizontal: 20),
                    child: Column(
                      children: [
                        costemFormField(
                            obscureText: false,
                            HintText: "ادخل الايميل الخاص:",
                            icon: (Icons.email),
                            keyboard: TextInputType.emailAddress,
                            textTitle: "الايميل :"),
                        SizedBox(
                          height: 50,
                        ),
                        costemFormField(
                            obscureText: true,
                            HintText: "ادخل كلمه السر :",
                            icon: (Icons.password),
                            keyboard: TextInputType.name,
                            textTitle: "كلمه السر :"),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              child: TextButton(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(left: 6, bottom: 4),
                                  child: Text(
                                    "نسيت كلمه السر",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: bkbrouwn,
                                        decoration: TextDecoration.underline),
                                  ),
                                ),
                                onPressed: () {},
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Column(
                          children: [
                            Align(
                              alignment: Alignment(0, size.height * 0.001),
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      fixedSize: Size(
                                          size.width * 1, size.height * .05),
                                      primary: bkbrouwn,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(50))),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => CarSlider(),
                                        ));
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    height: size.height * .10,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                          textAlign: TextAlign.center,
                                          "تسجيل دخول",
                                          style: TextStyle(
                                              color: white, fontSize: 20)),
                                    ),
                                  )),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CostmesLogin(
                              textTitle: "ليس عندي حساب ؟ ",
                              color: bkbrouwn,
                              fontSize: 20,
                            ),
                            Container(
                              child: TextButton(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(left: 6, bottom: 4),
                                  child: Text(
                                    "سجل  الان",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: bkbrouwn,
                                        decoration: TextDecoration.underline),
                                  ),
                                ),

                                //
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Register(),
                                      ));
                                },

                                //
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ]),
      ),
    );
  }
}
