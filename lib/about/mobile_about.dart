import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/widgets/my_drawer.dart';
import 'package:my_portfolio/widgets/rounded_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MobileAbout extends StatelessWidget {
  final bool inHome;

  const MobileAbout({required this.inHome});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
          automaticallyImplyLeading: inHome ? false : true,
          elevation: inHome ? 0 : 4,
          toolbarHeight: inHome ? 0 : kToolbarHeight),
      drawer: MyDrawer(indexSelected: 1),
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              foregroundDecoration: BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  kPrimaryColor,
                  Colors.transparent.withOpacity(0.2),
                  kPrimaryColor,
                ],
              )),
              child: Image.asset(
                "assets/images/about.png",
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned.fill(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Expanded(
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
                        child: Divider(
                            height: 1,
                            color: kAccentColor,
                            indent: 200.w,
                            endIndent: 200.w),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Stack(
                    children: [
                      Positioned.fill(
                          child: Padding(
                        padding: EdgeInsets.all(45.w),
                        child: Container(
                          color: kPrimaryColor.withAlpha(150),
                        ),
                      )),
                      Positioned.fill(
                        left: 45.w,
                        top: 20.w,
                        child: Padding(
                          padding: EdgeInsets.all(45.0.w),
                          child: AutoSizeText(
                            kAboutText,
                            maxFontSize: 24,
                            style: TextStyle(
                                fontSize: 24,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 40.h),
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
        ],
      ),
    );
  }
}
