import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

class MyInfoColumn extends StatelessWidget {
  final CrossAxisAlignment? crossAlignment;
  final MainAxisAlignment? mainAlignment;

  const MyInfoColumn({this.crossAlignment, this.mainAlignment});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAlignment ?? CrossAxisAlignment.start,
      mainAxisAlignment: mainAlignment ?? MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: AutoSizeText("Hello, I am",
              maxFontSize: 41,
              style: TextStyle(fontSize: 41, fontWeight: FontWeight.w300)),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: AutoSizeText("Amr Monzir",
              maxLines: 1,
              style: TextStyle(fontSize: 120, fontWeight: FontWeight.bold)),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: AutoSizeText(
              "A Mobile Front-End/Fullstack Developer with experience in Dart (Flutter), Java, C#, C++",
              maxLines: 2,
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.w300)),
        ),
        SizedBox(height: 20.h),
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
                icon: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: SvgPicture.asset(
                      "assets/images/linkedin.svg",
                    )),
              ),
              SizedBox(width: 20.w),
              IconButton(
                onPressed: () {
                  launch("https://twitter.com/AmrMonzir");
                },
                icon: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: SvgPicture.asset("assets/images/twitter.svg",
                      color: Colors.white),
                ),
              ),
              SizedBox(width: 20.w),
              IconButton(
                onPressed: () {
                  launch(
                      "https://www.upwork.com/freelancers/~01184dd503ff38931f");
                },
                icon: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: SvgPicture.asset("assets/images/upwork.svg",
                      color: Colors.white),
                ),
              ),
              SizedBox(width: 20.w),
              IconButton(
                splashRadius: 30,
                onPressed: () {
                  launch("https://github.com/AmrMonzir");
                },
                icon: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Image.asset("assets/images/github.png",
                      color: Colors.white),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 50.h),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: crossAlignment != null
                ? MainAxisAlignment.center
                : MainAxisAlignment.start,
            children: [
              Expanded(
                child: MaterialButton(
                  padding:
                      EdgeInsets.symmetric(vertical: 30.h, horizontal: 80.w),
                  onPressed: () {},
                  child: AutoSizeText(
                    "Hire Me",
                    maxLines: 1,
                    maxFontSize: 30,
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(60),
                      side: BorderSide(color: Colors.white)),
                ),
              ),
              SizedBox(width: 25.w),
              Expanded(
                child: MaterialButton(
                    padding:
                        EdgeInsets.symmetric(vertical: 30.h, horizontal: 80.w),
                    onPressed: () {},
                    child: AutoSizeText("Portfolio",
                        maxLines: 1,
                        maxFontSize: 30,
                        style: TextStyle(color: Colors.white, fontSize: 30)),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(60),
                        side: BorderSide(color: Colors.white))),
              ),
            ],
          ),
        ),
        SizedBox(height: 80.h),
      ],
    );
  }
}
