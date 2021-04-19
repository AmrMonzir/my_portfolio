import 'package:flutter/material.dart';
import 'package:my_portfolio/about/about.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/portfolio/portfolio.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'connect/connect.dart';
import 'home/home.dart';

void main() {
  setPathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(1920, 1217),
      builder: () => MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            primarySwatch: Colors.grey,
            primaryColor: kPrimaryColor,
            accentColor: kAccentColor,
            fontFamily: "Poppins",
            buttonTheme: ButtonThemeData(hoverColor: kAccentColor),
            cardTheme: CardTheme(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                elevation: 0),
            textTheme: TextTheme(
                bodyText1: TextStyle(color: Colors.white),
                bodyText2: TextStyle(color: Colors.white)),
            accentColorBrightness: Brightness.light),
        initialRoute: '/',
        routes: {
          '/': (context) => Home(),
          '/about': (context) => About(),
          '/portfolio': (context) => Portfolio(),
          '/contact': (context) => Connect(),
        },
      ),
    );
  }
}
