import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/constants.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/widgets/rounded_button.dart';

class DesktopConnect extends StatefulWidget {
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
    return Column(
      children: [
        Container(
            height: 187.h,
            width: 2,
            decoration: BoxDecoration(color: kAccentColor)),
        SizedBox(height: 47.5.h),
        Container(
            child: AutoSizeText("Let's Make Something great together",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 60),
                maxLines: 2,
                textAlign: TextAlign.center),
            width: 666.w,
            height: 163.h),
        SizedBox(height: 33.h),
        Container(
            child: Center(
              child: AutoSizeText(
                  "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et t enim ad minim veniam, quis nostrud exercitation.",
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 20),
                  textAlign: TextAlign.center,
                  maxLines: 2),
            ),
            width: 1600.w,
            height: 113.h),
        SizedBox(height: 40.h),
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
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none),
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
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none),
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
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      hintText: "Message"),
                  onChanged: (value) {
                    _message = value;
                  },
                ),
              ),
              SizedBox(height: 30.h),
              RoundedButton(
                  text: "Hire Me",
                  onPress: () {
                    if (_formKey.currentState!.validate()) {
                      // If the form is valid, display a snackbar. In the real world,
                      // you'd often call a server or save the information in a database.
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Processing Data')));
                    }
                  })
            ],
          ),
        )
      ],
    );
  }
}
