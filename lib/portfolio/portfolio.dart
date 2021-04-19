import 'package:flutter/material.dart';
import 'package:my_portfolio/portfolio/desktop_portfolio.dart';
import 'package:my_portfolio/portfolio/mobile_portfolio.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Portfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.isDesktop)
          return DesktopPortfolio(includeTopBar: true);
        return MobilePortfolio(
          includeTopBar: true,
        );
      },
    );
  }
}
