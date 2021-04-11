import 'package:flutter/material.dart';
import 'package:my_portfolio/home/fragments/my_info_column.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MobileHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
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
    );
  }
}
