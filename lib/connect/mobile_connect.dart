import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/constants.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/widgets/my_drawer.dart';
import 'package:my_portfolio/widgets/rounded_button.dart';

import 'connect_action.dart';

class MobileConnect extends StatefulWidget {
  final bool inHome;

  const MobileConnect({required this.inHome});
  @override
  _MobileConnectState createState() => _MobileConnectState();
}

class _MobileConnectState extends State<MobileConnect> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String? _name;
  String? _email;
  String? _message;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
          automaticallyImplyLeading: widget.inHome ? false : true,
          elevation: widget.inHome ? 0 : 4,
          toolbarHeight: widget.inHome ? 0 : kToolbarHeight),
      drawer: MyDrawer(indexSelected: 3),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Flexible(
            child: Column(
              children: [
                Flexible(
                  child: Container(
                      height: 100.h,
                      width: 2,
                      decoration: BoxDecoration(color: kAccentColor)),
                ),
                SizedBox(height: 30.h),
                Flexible(
                  child: Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: AutoSizeText(
                            "Let's Make Something great together",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 60),
                            maxLines: 2,
                            textAlign: TextAlign.center),
                      ),
                      height: 163.h),
                ),
              ],
            ),
          ),
          Flexible(
            child: Container(
                child: Center(
                  child: AutoSizeText(kContactText,
                      style:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 20),
                      textAlign: TextAlign.center,
                      maxLines: 3),
                ),
                width: 1600.w,
                height: 113.h),
          ),
          Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
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
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
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
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    child: TextFormField(
                      maxLines: 4,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter a message";
                        }
                      },
                      decoration: InputDecoration(
                          filled: true,
                          alignLabelWithHint: true,
                          fillColor: Colors.white,
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none),
                          hintText: "Message"),
                      onChanged: (value) {
                        _message = value;
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 1000.w,
            child: Row(
              children: [
                Expanded(
                  child: RoundedButton(
                      text: "Hire Me",
                      onPress: () {
                        if (_formKey.currentState!.validate()) {
                          if (ConnectAction.connectWithParams(
                              mail: _email!, name: _name!, message: _message!))
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text('Sending email')));
                        }
                      }),
                ),
              ],
            ),
          ),
          SizedBox(height: 30.h),
        ],
      ),
    );
  }
}
