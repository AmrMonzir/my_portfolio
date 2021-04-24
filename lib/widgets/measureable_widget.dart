import 'package:flutter/material.dart';

class WidgetMeasuredNotification extends Notification {
  final Size size;
  WidgetMeasuredNotification(this.size);
}

class MeasurableWidget extends StatefulWidget {
  const MeasurableWidget({required this.child});
  final Widget child;

  @override
  _MeasurableWidgetState createState() => _MeasurableWidgetState();
}

class _MeasurableWidgetState extends State<MeasurableWidget> {
  @override
  Widget build(BuildContext context) {
    Size size = (context.findRenderObject() as RenderBox).size;
    if (size != Size.zero) {
      WidgetMeasuredNotification(size).dispatch(context);
    }
    return widget.child;
  }
}
