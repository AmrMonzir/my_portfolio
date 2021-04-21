import 'package:flutter/material.dart';
import 'package:my_portfolio/about/desktop_about.dart';
import 'package:my_portfolio/about/mobile_about.dart';
import 'package:responsive_builder/responsive_builder.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
        return DesktopAbout(inHome: false);
      }
      return MobileAbout(inHome: false);
    });
  }
}
