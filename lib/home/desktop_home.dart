import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/home/fragments/my_info_column.dart';
import 'package:responsive_builder/responsive_builder.dart';

class DesktopHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: SingleChildScrollView(
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
    );
  }
}
