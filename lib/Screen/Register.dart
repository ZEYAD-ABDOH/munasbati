import 'package:flutter/material.dart';
import '../Widtes/CostamesLogin.dart';
import '../Widtes/colors.dart';
import '../Widtes/costamesBoutton.dart';
import '../Widtes/costamesFormField.dart';
import 'HomeScreen.dart';
class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}
class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: bkbrouwn,
        body: ListView(physics: NeverScrollableScrollPhysics(),
            //  NeverScrolla,

            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50.0, left: 40.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 40,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.deepOrange[50],
                          borderRadius: BorderRadius.circular(15)),
                      child: IconButton(
                          icon: Icon(Icons.arrow_back),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomeScreen(),
                                ));
                          }),
                    ),
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
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
                    padding: const EdgeInsets.symmetric(
                        vertical: 80, horizontal: 20),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          costemFormField(
                              obscureText: false,
                              HintText: "ادخل اسمك الاول:",
                              icon: (Icons.person),
                              keyboard: TextInputType.name,
                              textTitle: "اسمك الاول :"),
                          SizedBox(
                            height: 40,
                          ),
                          costemFormField(
                              obscureText: false,
                              HintText: "ادخل اسمك الاخير:",
                              icon: (Icons.person),
                              keyboard: TextInputType.name,
                              textTitle: "الاسم الاخير :"),
                          SizedBox(
                            height: 40,
                          ),
                          costemFormField(
                              obscureText: false,
                              HintText: "ادخل رقمك شخصي:",
                              icon: (Icons.phone),
                              keyboard: TextInputType.phone,
                              textTitle: "تلفونك :"),
                          SizedBox(
                            height: 40,
                          ),
                          costemFormField(
                              obscureText: false,
                              HintText: "ادخل ايميلك:",
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
                            height: 20,
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
                                            builder: (context) => HomeScreen(),
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
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ]),
      ),
    );
  }
}
