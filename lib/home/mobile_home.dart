import 'package:flutter/material.dart';
import 'package:my_portfolio/home/fragments/my_info_column.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MobileHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: SingleChildScrollView(
        child: Column(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/me3.png"),
              radius: 80,
            ),
            SizedBox(height: 30.h),
            MyInfoColumn(
              crossAlignment: CrossAxisAlignment.center,
            ),
          ],
        ),
      ),
    );
  }
}
