import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/about/desktop_about.dart';
import 'package:my_portfolio/client_comments/desktop_client_comments.dart';
import 'package:my_portfolio/home/fragments/my_info_column.dart';
import 'package:my_portfolio/portfolio/desktop_portfolio.dart';
import 'package:my_portfolio/widgets/bottom_nav.dart';
import 'package:my_portfolio/widgets/measureable_widget.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:my_portfolio/connect/desktop_connect.dart';

import '../constants.dart';

class DesktopHomePage extends StatefulWidget {
  @override
  _DesktopHomePageState createState() => _DesktopHomePageState();
}

class _DesktopHomePageState extends State<DesktopHomePage> {
  double heightOfPortfolio = 1000.h;

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: ListView(children: [
        Container(
          height: 1217.h,
          child: Row(
            children: [
              SizedBox(width: 84.w),
              Expanded(
                flex: 2,
                child: MyInfoColumn(
                  screenType: DeviceScreenType.desktop,
                  mainAlignment: MainAxisAlignment.spaceEvenly,
                ),
              ),
              Expanded(
                flex: 3,
                child: Image.asset("assets/images/me3.png"),
              )
            ],
          ),
        ),
        Divider(color: Color(0xff707070)),
        SizedBox(height: 40.h),
        Container(
          child: DesktopAbout(inHome: true),
          height: 1217.h,
        ),
        SizedBox(height: 40.h),
        Divider(color: Color(0xff707070)),
        SizedBox(height: 40.h),
        DesktopPortfolio(
          includeTopBar: false,
        ),
        SizedBox(height: 80.h),
        Divider(color: Color(0xff707070)),
        SizedBox(height: 60.h),
        Container(
          child: DesktopClientComments(),
          height: 1217.h,
        ),
        Divider(color: kAccentColor),
        SizedBox(height: 40.h),
        Container(
          child: DesktopConnect(inHome: true),
          height: 1000.h,
        ),
        Divider(color: kAccentColor),
        BottomNavigation(),
      ]),
    );
  }
}
