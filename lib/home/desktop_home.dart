import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/about/desktop_about.dart';
import 'package:my_portfolio/client_comments/desktop_client_comments.dart';
import 'package:my_portfolio/home/fragments/my_info_column.dart';
import 'package:my_portfolio/portfolio/desktop_portfolio.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:my_portfolio/connect/desktop_connect.dart';

class DesktopHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: ListView(children: [
        Container(
          width: double.infinity,
          height: 1217.h,
          child: Row(
            children: [
              SizedBox(width: 84.w),
              Expanded(
                flex: 2,
                child: MyInfoColumn(
                  screenType: DeviceScreenType.desktop,
                ),
              ),
              Expanded(
                flex: 3,
                child: Image.asset("assets/images/me3.png"),
              )
            ],
          ),
        ),
        Container(
          child: DesktopConnect(),
          height: 1217.h,
        ),
        Container(
          child: DesktopAbout(),
          height: 1217.h,
        ),
        SizedBox(height: 40.h),
        Divider(color: Color(0xff707070)),
        SizedBox(height: 40.h),
        Container(
          child: DesktopPortfolio(
            includeTopBar: false,
          ),
          height: 1217.h,
        ),
        SizedBox(height: 80.h),
        Divider(color: Color(0xff707070)),
        SizedBox(height: 60.h),
        Container(
          child: DesktopClientComments(),
          height: 1217.h,
        ),
      ]),
    );
  }
}
