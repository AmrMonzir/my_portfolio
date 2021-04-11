import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/widgets/rounded_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DesktopAbout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 90.w),
        Expanded(
          flex: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 2,
                      child: AutoSizeText(
                        "About Me",
                        maxFontSize: 60,
                        style: TextStyle(
                            fontSize: 60,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600),
                        maxLines: 1,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                          height: 2,
                          width: double.infinity,
                          color: kAccentColor),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Padding(
                  padding: EdgeInsets.only(right: 45.0.w),
                  child: AutoSizeText(
                    '''Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat

Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.''',
                    maxFontSize: 24,
                    maxLines: 8,
                    style: TextStyle(
                        fontSize: 24,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w300),
                  ),
                ),
              ),
              Container(
                  height: 100.h, child: RoundedButton(text: "Download CV")),
              SizedBox(height: 100.h),
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              SizedBox(height: 50.h),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/about.png"),
                          fit: BoxFit.cover),
                      border:
                          Border.all(color: Colors.grey[800]!, width: 56.w)),
                ),
              ),
              SizedBox(height: 50.h),
            ],
          ),
        ),
        SizedBox(width: 90.w),
      ],
    );
  }
}
