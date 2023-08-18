import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:munasbati/Screen/page_view.dart';
import 'package:page_transition/page_transition.dart';
import '../../Widtes/colors.dart';
import '../HomeScreen.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AnimatedSplashScreen(
        duration: 1000,
        backgroundColor: bkbrouwn,
        splashIconSize: 300,
        splashTransition: SplashTransition.rotationTransition,
        pageTransitionType: PageTransitionType.rightToLeft,
        splash: CircleAvatar(
          backgroundColor: Colors.deepOrange[50],
          child: Lottie.asset("assets/animation/animation_ll0g1mum.json",
              width: 200, height: 200),
          radius: 90,
        ),
        nextScreen: Pview());
  }
}
