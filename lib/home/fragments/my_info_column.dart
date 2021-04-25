import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio/widgets/rounded_button.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

class MyInfoColumn extends StatelessWidget {
  final CrossAxisAlignment? crossAlignment;
  final MainAxisAlignment? mainAlignment;

  final DeviceScreenType screenType;

  const MyInfoColumn(
      {this.crossAlignment, this.mainAlignment, required this.screenType});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: crossAlignment ?? CrossAxisAlignment.start,
        mainAxisAlignment: mainAlignment ?? MainAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: crossAlignment ?? CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: AutoSizeText("Hello, I am",
                    maxLines: 1,
                    style:
                        TextStyle(fontSize: 41, fontWeight: FontWeight.w300)),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: AutoSizeText("Amr Monzir",
                    maxLines: 1,
                    style:
                        TextStyle(fontSize: 120, fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: AutoSizeText(
                    "A Mobile/Fullstack Developer with experience in Dart (Flutter), Java, C#, C++",
                    textAlign: crossAlignment != null ? TextAlign.center : null,
                    style:
                        TextStyle(fontSize: 26, fontWeight: FontWeight.w300)),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: crossAlignment ?? CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: AutoSizeText("Find me on",
                    maxLines: 1,
                    maxFontSize: 30,
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontFamily: "Raleway",
                        fontSize: 30)),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: crossAlignment != null
                      ? MainAxisAlignment.center
                      : MainAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {
                        launch("https://www.linkedin.com/in/amr-monzir/");
                      },
                      icon: SvgPicture.asset(
                        "assets/images/linkedin.svg",
                      ),
                    ),
                    SizedBox(width: 20.w),
                    IconButton(
                      onPressed: () {
                        launch("https://twitter.com/AmrMonzir");
                      },
                      icon: SvgPicture.asset("assets/images/twitter.svg",
                          color: Colors.white),
                    ),
                    SizedBox(width: 20.w),
                    IconButton(
                      onPressed: () {
                        launch(
                            "https://www.upwork.com/freelancers/~01184dd503ff38931f");
                      },
                      icon: SvgPicture.asset("assets/images/upwork.svg",
                          color: Colors.white),
                    ),
                    SizedBox(width: 20.w),
                    IconButton(
                      onPressed: () {
                        launch("https://github.com/AmrMonzir");
                      },
                      icon: Image.asset("assets/images/github.png",
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: crossAlignment != null
                      ? MainAxisAlignment.spaceBetween
                      : MainAxisAlignment.start,
                  children: [
                    Expanded(
                        child: RoundedButton(
                      text: "Hire Me",
                      onPress: () {
                        launch(
                            "https://www.upwork.com/o/profiles/users/~01184dd503ff38931f/");
                      },
                    )),
                    SizedBox(width: 25.w),
                    Expanded(
                        child: RoundedButton(
                      text: "Portfolio",
                      onPress: () {
                        if (ModalRoute.of(context)!.settings.name !=
                            "/portfolio")
                          Navigator.of(context).pushNamed('/portfolio');
                      },
                    )),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
        ],
      ),
    );
  }
}
