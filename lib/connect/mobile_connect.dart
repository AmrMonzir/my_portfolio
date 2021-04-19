import 'package:flutter/material.dart';
import 'package:my_portfolio/connect/desktop_connect.dart';

class MobileConnect extends StatefulWidget {
  @override
  _MobileConnectState createState() => _MobileConnectState();
}

class _MobileConnectState extends State<MobileConnect> {
  @override
  Widget build(BuildContext context) {
    return DesktopConnect();
  }
}
