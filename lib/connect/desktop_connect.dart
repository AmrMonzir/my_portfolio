import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/constants.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/widgets/rounded_button.dart';
import 'package:my_portfolio/widgets/top_bar.dart';

import 'connect_action.dart';

class DesktopConnect extends StatefulWidget {
  final bool inHome;

  const DesktopConnect({required this.inHome});

  @override
  _ConnectDesktopState createState() => _ConnectDesktopState();
}

class _ConnectDesktopState extends State<DesktopConnect> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String? _name;
  String? _email;
  String? _message;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Column(
        children: [
          widget.inHome ? Container() : TopBar(navIndex: 3),
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  child: Column(
                    children: [
                      Flexible(
                        child: Container(
                            height: 150.h,
                            width: 2,
                            decoration: BoxDecoration(color: kAccentColor)),
                      ),
                      SizedBox(height: 20.5.h),
                      Flexible(
                        child: AutoSizeText(
                            "Let's Make Something great together",
                            minFontSize: 20,
                            maxFontSize: 60,
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 60),
                            maxLines: 2,
                            textAlign: TextAlign.center),
                      ),
                      SizedBox(height: 20.5.h),
                    ],
                  ),
                ),
                Container(
                    child: AutoSizeText(kContactText,
                        style: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 20),
                        textAlign: TextAlign.center,
                        maxLines: 2),
                    width: 1600.w,
                    height: 113.h),
                Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 594.w,
                            child: TextFormField(
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none),
                                  hintText: "Name"),
                              onChanged: (value) {
                                _name = value;
                              },
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Please enter your name";
                                }
                              },
                            ),
                          ),
                          SizedBox(width: 50.h),
                          Container(
                            width: 594.w,
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none),
                                  hintText: "Email"),
                              onChanged: (value) {
                                _email = value;
                              },
                              validator: (value) {
                                if (!value!.isEmail) {
                                  return "Please enter a correct email address";
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 50.h),
                      Container(
                        width: 1238.w,
                        child: TextFormField(
                          maxLines: 6,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please enter a message";
                            }
                          },
                          decoration: InputDecoration(
                              filled: true,
                              alignLabelWithHint: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                              hintText: "Message"),
                          onChanged: (value) {
                            _message = value;
                          },
                        ),
                      ),
                      SizedBox(height: 30.h),
                    ],
                  ),
                ),
                SizedBox(height: 20.h),
                Flexible(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 600.w,
                        child: RoundedButton(
                            text: "Hire Me",
                            onPress: () {
                              if (_formKey.currentState!.validate()) {
                                if (ConnectAction.connectWithParams(
                                    mail: _email!,
                                    name: _name!,
                                    message: _message!))
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(content: Text('Sending email')));
                              }
                            }),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 50.h),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
