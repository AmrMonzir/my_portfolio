import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'desktop_client_comments.dart';
import 'mobile_client_comments.dart';

class ClientComments extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: ResponsiveBuilder(
        builder: (BuildContext context, SizingInformation sizingInformation) {
          if (sizingInformation.isDesktop) {
            return DesktopClientComments();
          } else {
            return MobileClientComments();
          }
        },
      ),
    );
  }
}
