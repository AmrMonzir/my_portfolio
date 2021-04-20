import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class BottomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              height: 83.h,
              width: 2,
              decoration: BoxDecoration(color: kAccentColor)),
          SizedBox(height: 22.5.h),
          Text(
            "Portfolio",
            maxLines: 1,
            style: TextStyle(
                color: Colors.white, fontFamily: "Freestyle", fontSize: 95),
          ),
          SizedBox(height: 45.h),
          Wrap(alignment: WrapAlignment.center, children: [
            Text(
              "Amr Monzir Abdallatif |",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Text(
              " Gaza - Palestine |",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            SelectableText(
              " amrmonzir@gmail.com",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ]),
          SizedBox(height: 50.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  launch("https://www.linkedin.com/in/amr-monzir/");
                },
                icon: SvgPicture.asset(
                  "assets/images/linkedin.svg",
                ),
              ),
              SizedBox(width: 20.w),
              IconButton(
                onPressed: () {
                  launch("https://twitter.com/AmrMonzir");
                },
                icon: SvgPicture.asset("assets/images/twitter.svg",
                    color: Colors.white),
              ),
              SizedBox(width: 20.w),
              IconButton(
                onPressed: () {
                  launch(
                      "https://www.upwork.com/freelancers/~01184dd503ff38931f");
                },
                icon: SvgPicture.asset("assets/images/upwork.svg",
                    color: Colors.white),
              ),
              SizedBox(width: 20.w),
              IconButton(
                onPressed: () {
                  launch("https://github.com/AmrMonzir");
                },
                icon: Image.asset("assets/images/github.png",
                    color: Colors.white),
              ),
            ],
          ),
          SizedBox(height: 90.h),
        ],
      ),
    );
  }
}
