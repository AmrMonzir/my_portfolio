import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';

class MobileClientComments extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
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
              "assets/images/clients.png",
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned.fill(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 300.h,
                child: Column(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(16.0, 16, 16, 0),
                        child: AutoSizeText(
                          "What My Clients Say About me",
                          maxLines: 1,
                          style: TextStyle(
                              fontSize: 60, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                          height: 1,
                          color: kAccentColor,
                          indent: 200.w,
                          endIndent: 200.w),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: AutoSizeText(
                          kPortfolioText,
                          maxLines: 2,
                          minFontSize: 15,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.w300, fontSize: 30),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 750.h,
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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Stack(
                                      children: [
                                        Positioned.fill(
                                          child: Text(
                                            '''"''',
                                            style: TextStyle(
                                                fontSize: 80,
                                                fontFamily: "Hat",
                                                color: kAccentColor),
                                          ),
                                        ),
                                        Positioned.fill(
                                          top: 50,
                                          left: 0,
                                          child: Container(
                                            width: 1820.w,
                                            height: 274.h,
                                            child: Text(
                                              kClientCommentText,
                                              maxLines: 6,
                                              style: TextStyle(
                                                  fontSize: 75.sp,
                                                  fontWeight: FontWeight.w300),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          top: 360.h,
                                          child: Text(
                                            '''            "''',
                                            style: TextStyle(
                                                fontSize: 80,
                                                fontFamily: "Hat",
                                                color: kAccentColor),
                                          ),
                                        ),
                                        Positioned(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "- Ali Al-Zubaidi",
                                                  style: TextStyle(
                                                      fontSize: 30,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                Text(
                                                  "Client For My Sources App",
                                                  style: TextStyle(
                                                      fontSize: 22,
                                                      fontWeight:
                                                          FontWeight.w300),
                                                ),
                                              ],
                                            ),
                                            bottom: 60.h,
                                            left: 0)
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 40.5.h),
            ],
          ),
        ),
      ],
    );
  }
}
