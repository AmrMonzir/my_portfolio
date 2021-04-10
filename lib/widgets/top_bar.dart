import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.h,
      width: double.infinity,
      color: kPrimaryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 84.w),
            child: AutoSizeText("Portfolio",
                maxLines: 1,
                maxFontSize: 80,
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Freestyle",
                    fontSize: 80)),
          ),
          Row(
            children: [
              MaterialButton(
                  padding: EdgeInsets.all(8.w),
                  onPressed: () {},
                  hoverColor: kAccentColor,
                  child: AutoSizeText("About",
                      maxLines: 1, style: kAppBarButtonTextStyle)),
              SizedBox(width: 16.w),
              MaterialButton(
                  padding: EdgeInsets.all(8.w),
                  onPressed: () {},
                  hoverColor: kAccentColor,
                  child: AutoSizeText("Portfolio",
                      maxLines: 1, style: kAppBarButtonTextStyle)),
              SizedBox(width: 16.w),
              MaterialButton(
                  padding: EdgeInsets.all(8.w),
                  onPressed: () {},
                  hoverColor: kAccentColor,
                  child: AutoSizeText("Contact",
                      maxLines: 1, style: kAppBarButtonTextStyle)),
              SizedBox(width: 87.w),
            ],
          ),
        ],
      ),
    );
  }
}
