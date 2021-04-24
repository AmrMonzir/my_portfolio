import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PortfolioCard extends StatelessWidget {
  final String imageURL;
  final String? urlToLaunch;

  const PortfolioCard({required this.imageURL, this.urlToLaunch});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 420.h,
          width: double.infinity,
          child: Card(
            clipBehavior: Clip.hardEdge,
            child: InkWell(
                onTap: () {
                  if (urlToLaunch != null) launch(urlToLaunch!);
                },
                child: Image.asset(imageURL,
                    fit: imageURL.contains("portfolio")
                        ? BoxFit.cover
                        : BoxFit.fitWidth)),
          ),
        ),
        SizedBox(height: 25.h),
      ],
    );
  }
}
