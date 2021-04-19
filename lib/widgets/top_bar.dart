import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopBar extends StatelessWidget {
  final int navIndex;

  const TopBar({required this.navIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.h,
      width: double.infinity,
      color: kPrimaryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 84.w),
              child: AutoSizeText(
                "Portfolio",
                maxLines: 1,
                maxFontSize: 80,
                minFontSize: 20,
                style: TextStyle(
                    color: Colors.white, fontFamily: "Freestyle", fontSize: 80),
              ),
            ),
          ),
          SizedBox(width: 50.w),
          Row(
            children: [
              MaterialButton(
                  padding: EdgeInsets.all(8.w),
                  onPressed: () {
                    Navigator.of(context).pushNamed('/');
                  },
                  color: navIndex == 0 ? kAccentColor : null,
                  hoverColor: kAccentColor.withOpacity(0.3),
                  child: AutoSizeText("Home",
                      maxLines: 1, style: kAppBarButtonTextStyle)),
              MaterialButton(
                  padding: EdgeInsets.all(8.w),
                  onPressed: () {
                    if (ModalRoute.of(context)!.settings.name != "/about")
                      Navigator.of(context).pushNamed('/about');
                  },
                  color: navIndex == 1 ? kAccentColor : null,
                  hoverColor: kAccentColor.withOpacity(0.3),
                  child: AutoSizeText("About",
                      maxLines: 1, style: kAppBarButtonTextStyle)),
              SizedBox(width: 16.w),
              MaterialButton(
                  padding: EdgeInsets.all(8.w),
                  onPressed: () {
                    if (ModalRoute.of(context)!.settings.name != "/portfolio")
                      Navigator.of(context).pushNamed('/portfolio');
                  },
                  hoverColor: kAccentColor.withOpacity(0.3),
                  color: navIndex == 2 ? kAccentColor : null,
                  child: AutoSizeText("Portfolio",
                      maxLines: 1, style: kAppBarButtonTextStyle)),
              SizedBox(width: 16.w),
              MaterialButton(
                  padding: EdgeInsets.all(8.w),
                  onPressed: () {
                    Navigator.of(context).pushNamed("/contact");
                  },
                  hoverColor: kAccentColor.withOpacity(0.3),
                  color: navIndex == 3 ? kAccentColor : null,
                  child: AutoSizeText("Contact",
                      maxLines: 1, style: kAppBarButtonTextStyle)),
              SizedBox(width: 87.w),
            ],
          ),
        ],
      ),
    );
  }
}
