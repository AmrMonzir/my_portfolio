import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/widgets/top_bar.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'desktop_connect.dart';
import 'mobile_connect.dart';

class Connect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ResponsiveBuilder(
        builder: (context, sizingInformation) {
          if (sizingInformation.isDesktop) return DesktopConnect(inHome: false);
          return MobileConnect(inHome: false);
        },
      ),
    );
  }
}
