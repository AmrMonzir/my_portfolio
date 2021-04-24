import 'package:flutter/material.dart';
import 'package:my_portfolio/about/mobile_about.dart';
import 'package:my_portfolio/client_comments/mobile_client_comments.dart';
import 'package:my_portfolio/connect/mobile_connect.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/home/fragments/my_info_column.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/portfolio/mobile_portfolio.dart';
import 'package:my_portfolio/widgets/bottom_nav.dart';
import 'package:my_portfolio/widgets/my_drawer.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MobileHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
      ),
      drawer: MyDrawer(indexSelected: 0),
      body: ListView(children: [
        Column(
          children: [
            SizedBox(height: 30.h),
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/me3.png"),
              radius: 80,
            ),
            SizedBox(height: 30.h),
            MyInfoColumn(
              screenType: DeviceScreenType.mobile,
              crossAlignment: CrossAxisAlignment.center,
            ),
          ],
        ),
        SizedBox(height: 40.h),
        Container(
          height: 1217.h,
          child: MobileAbout(inHome: true),
        ),
        Divider(color: kAccentColor),
        SizedBox(height: 20.h),
        Container(
            child: MobilePortfolio(inHome: true), height: 840.h + 45.h + 290.h),
        Divider(color: kAccentColor),
        SizedBox(height: 40.h),
        Container(
          height: 1217.h,
          child: MobileClientComments(),
        ),
        Divider(color: kAccentColor),
        SizedBox(height: 40.h),
        Container(
          height: 1330.h,
          child: MobileConnect(inHome: true),
        ),
        Divider(color: kAccentColor),
        BottomNavigation(),
      ]),
    );
  }
}
