import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RoundedButton extends StatefulWidget {
  final String text;

  const RoundedButton({required this.text});

  @override
  _RoundedButtonState createState() => _RoundedButtonState();
}

class _RoundedButtonState extends State<RoundedButton> {
  Color color = Colors.white;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          color = Colors.black;
        });
      },
      onExit: (event) {
        setState(() {
          color = Colors.white;
        });
      },
      child: MaterialButton(
          height: 150.h,
          minWidth: 200.w,
          padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 80.w),
          onPressed: () {},
          child: AutoSizeText(widget.text,
              maxLines: 1,
              maxFontSize: 30,
              minFontSize: 20,
              style: TextStyle(color: color, fontWeight: FontWeight.w400)),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(60),
              side: BorderSide(color: Colors.white))),
    );
  }
}
