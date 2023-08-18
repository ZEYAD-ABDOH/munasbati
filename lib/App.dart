import 'package:flutter/material.dart';
import 'Screen/Animated/SplashScreen.dart';
import 'Screen/Animated/slider/slider.dart';
import 'Screen/HomeScreen.dart';
import 'Screen/page_view.dart';
import 'Screen/start_munasbati.dart';
import 'Screen/fetchadata.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //
        locale: const Locale('ar'),
      supportedLocales: const [
        Locale('ar'),
        Locale('en'),
      ],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      theme: ThemeData(
        fontFamily: "Cairo",
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: "Splash",
      routes: {
        
        "Splash": (context) => SplashScreen(),
        "text": (context) => text(paath: ""),
        "Indrcion": (context) => Pview(),
        "HomeScreen": (context) => HomeScreen(),
        "CarSlider": (context) => CarSlider(),
        "startPage": (context) => startPage(),
       
      },
    );
  }
}