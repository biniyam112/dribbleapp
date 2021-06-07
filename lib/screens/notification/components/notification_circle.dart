import 'package:flutter/material.dart';

class NotificationCircle extends StatefulWidget {
  NotificationCircle({
    Key key,
    @required this.notificationCount,
  }) : super(key: key);
  final int notificationCount;
  @override
  _NotificationCircleState createState() => _NotificationCircleState();
}

class _NotificationCircleState extends State<NotificationCircle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text('${widget.notificationCount}'),
      ),
    );
  }
}
