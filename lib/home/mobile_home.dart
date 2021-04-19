import 'package:flutter/material.dart';
import 'package:my_portfolio/about/mobile_about.dart';
import 'package:my_portfolio/client_comments/mobile_client_comments.dart';
import 'package:my_portfolio/home/fragments/my_info_column.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/portfolio/mobile_portfolio.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MobileHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Column(
        children: [
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
        child: MobileAbout(),
      ),
      SizedBox(height: 80.h),
      Container(
        height: 1217.h,
        child: MobilePortfolio(
          includeTopBar: false,
        ),
      ),
      SizedBox(height: 40.h),
      Container(
        height: 1217.h,
        child: MobileClientComments(),
      ),
      SizedBox(height: 40.h),
    ]);
  }
}
