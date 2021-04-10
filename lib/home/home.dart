import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/widgets/top_bar.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'desktop_home.dart';
import 'mobile_home.dart';
import 'tablet_home.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Column(
        children: [
          TopBar(),
          Expanded(
            child: ResponsiveBuilder(builder: (context, sizingInformation) {
              if (sizingInformation.deviceScreenType ==
                  DeviceScreenType.desktop) {
                return DesktopHomePage();
              }
              if (sizingInformation.deviceScreenType ==
                  DeviceScreenType.tablet) {
                return TabletHomePage();
              }
              return MobileHomePage();
            }),
          ),
        ],
      ),
    );
  }
}
