import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/constants.dart';

class MyDrawer extends StatelessWidget {
  final int indexSelected;

  const MyDrawer({required this.indexSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryColor,
      child: Column(
        children: [
          SizedBox(height: 60.h),
          Padding(
            padding: EdgeInsets.only(left: 84.w, right: 84.w),
            child: AutoSizeText(
              "Portfolio",
              maxLines: 1,
              maxFontSize: 80,
              minFontSize: 20,
              style: TextStyle(
                  color: Colors.white, fontFamily: "Freestyle", fontSize: 80),
            ),
          ),
          SizedBox(height: 60.h),
          MaterialButton(
              padding: EdgeInsets.all(8.w),
              onPressed: () {
                Navigator.of(context).pushNamed('/');
              },
              color: indexSelected == 0 ? kAccentColor : null,
              hoverColor: kAccentColor.withOpacity(0.3),
              child: AutoSizeText("Home",
                  maxLines: 1, style: kAppBarButtonTextStyle)),
          SizedBox(height: 20.h),
          MaterialButton(
              padding: EdgeInsets.all(8.w),
              onPressed: () {
                if (ModalRoute.of(context)!.settings.name != "/about")
                  Navigator.of(context).pushNamed('/about');
              },
              color: indexSelected == 1 ? kAccentColor : null,
              hoverColor: kAccentColor.withOpacity(0.3),
              child: AutoSizeText("About",
                  maxLines: 1, style: kAppBarButtonTextStyle)),
          SizedBox(height: 20.h),
          MaterialButton(
              padding: EdgeInsets.all(8.w),
              onPressed: () {
                if (ModalRoute.of(context)!.settings.name != "/portfolio")
                  Navigator.of(context).pushNamed('/portfolio');
              },
              hoverColor: kAccentColor.withOpacity(0.3),
              color: indexSelected == 2 ? kAccentColor : null,
              child: AutoSizeText("Portfolio",
                  maxLines: 1, style: kAppBarButtonTextStyle)),
          SizedBox(height: 20.h),
          MaterialButton(
              padding: EdgeInsets.all(8.w),
              onPressed: () {
                Navigator.of(context).pushNamed("/contact");
              },
              hoverColor: kAccentColor.withOpacity(0.3),
              color: indexSelected == 3 ? kAccentColor : null,
              child: AutoSizeText("Contact",
                  maxLines: 1, style: kAppBarButtonTextStyle)),
        ],
      ),
    );
  }
}
