import 'package:flutter/material.dart';
import 'package:my_portfolio/about/desktop_about.dart';
import 'package:my_portfolio/about/mobile_about.dart';
import 'package:my_portfolio/widgets/top_bar.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../constants.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Column(
        children: [
          TopBar(navIndex: 1),
          Expanded(
            child: ResponsiveBuilder(builder: (context, sizingInformation) {
              if (sizingInformation.deviceScreenType ==
                  DeviceScreenType.desktop) {
                return DesktopAbout();
              }
              return MobileAbout();
            }),
          ),
        ],
      ),
    );
  }
}
