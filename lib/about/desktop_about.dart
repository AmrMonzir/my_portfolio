import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/widgets/rounded_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/widgets/top_bar.dart';

class DesktopAbout extends StatelessWidget {
  final bool inHome;

  const DesktopAbout({required this.inHome});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Column(
        children: [
          inHome ? Container() : TopBar(navIndex: 1),
          Expanded(
            child: Row(
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
                            kAboutText,
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
                          height: 100.h,
                          child: RoundedButton(
                            text: "Download CV",
                            onPress: () {},
                          )),
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
                              border: Border.all(
                                  color: Colors.grey[800]!, width: 56.w)),
                        ),
                      ),
                      SizedBox(height: 50.h),
                    ],
                  ),
                ),
                SizedBox(width: 90.w),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
