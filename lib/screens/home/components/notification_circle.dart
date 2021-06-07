import 'package:dribble_question_app/screens/notification/notification_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import '../../../constants.dart';

class NotificationCircle extends StatefulWidget {
  const NotificationCircle({
    Key key,
  }) : super(key: key);

  @override
  _NotificationCircleState createState() => _NotificationCircleState();
}

class _NotificationCircleState extends State<NotificationCircle> {
  int notificationCount = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(40),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return NotificationScreen();
            },
          ),
        );
      },
      child: Stack(
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white10,
            ),
            child: Center(
              child: Icon(
                FlutterIcons.bell_circle_mco,
                color: darkFocusColor,
                size: 40,
              ),
            ),
          ),
          Container(
            height: 16,
            width: 16,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.red[900],
            ),
            child: Center(
              child: Text(
                notificationCount > 9 ? '9+' : '$notificationCount',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 8,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
