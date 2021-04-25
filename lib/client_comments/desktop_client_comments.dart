import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/constants.dart';

class DesktopClientComments extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(94.w, 20.h, 94.w, 94.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 300.h,
            child: Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: AutoSizeText(
                      "What My Clients Say About me",
                      maxLines: 1,
                      style:
                          TextStyle(fontSize: 60, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                Container(
                  width: 345.w,
                  height: 2,
                  color: kAccentColor,
                ),
                SizedBox(height: 40.5.h),
                Expanded(
                  child: AutoSizeText(
                    kPortfolioText,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    style: TextStyle(fontWeight: FontWeight.w300, fontSize: 30),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 80.h),
          Expanded(
              child: Row(
            children: [
              Expanded(child: Image.asset("assets/images/clients.png")),
              SizedBox(width: 105.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 120.h),
                    Container(
                      height: 520.h,
                      width: double.infinity,
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Positioned(
                            child: Text(
                              '''"''',
                              style: TextStyle(
                                  fontSize: 200.sp,
                                  fontFamily: "Hat",
                                  color: kAccentColor),
                            ),
                          ),
                          Positioned(
                            top: 137.h,
                            child: Container(
                              height: 300.h,
                              width: 841.w,
                              child: Text(
                                kClientCommentText,
                                maxLines: 6,
                                style: TextStyle(
                                    fontSize: 30.sp,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            left: 318.w,
                            child: Text(
                              '''"''',
                              style: TextStyle(
                                  fontSize: 200.sp,
                                  fontFamily: "Hat",
                                  color: kAccentColor),
                            ),
                          )
                        ],
                      ),
                    ),
                    Text(
                      "- Ali Al-Zubaidi",
                      style: TextStyle(
                          fontSize: 30.sp, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Client For My Sources App",
                      style: TextStyle(
                          fontSize: 22.sp, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}
