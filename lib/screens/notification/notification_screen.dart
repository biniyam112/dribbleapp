import 'package:dribble_question_app/screens/notification/components/notification_circle.dart';
import 'package:dribble_question_app/size_config.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:overlay_support/overlay_support.dart';

import 'components/push_notification.dart';

class NotificationScreen extends StatefulWidget {
  NotificationScreen({Key key}) : super(key: key);

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  int _totalNotifications;
  PushNotification _notificationInfo;

  List<String> notificationTitle = [];
  List<String> notificationContent = [];

  void registerNotification() async {
    // 1. Initialize the Firebase app
    await Firebase.initializeApp();

    // 2. Instantiate Firebase Messaging
    FirebaseMessaging _messaging = FirebaseMessaging.instance;

    // 3. On iOS, this helps to take the user permissions
    NotificationSettings settings = await _messaging.requestPermission(
      alert: true,
      badge: true,
      provisional: false,
      sound: true,
    );

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      print('User granted permission');

      // For handling the received notifications
      FirebaseMessaging.onMessage.listen((RemoteMessage message) {
        // Parse the message received
        PushNotification notification = PushNotification(
          title: message.notification?.title,
          body: message.notification?.body,
        );

        setState(
          () {
            _notificationInfo = notification;
            _totalNotifications++;
          },
        );
        if (_notificationInfo != null) {
          // For displaying the notification as an overlay
          showSimpleNotification(
            Text(
              _notificationInfo.title,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            leading: NotificationCircle(notificationCount: _totalNotifications),
            subtitle: Text(
              _notificationInfo.body,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            background: Colors.cyan.shade700,
            duration: Duration(seconds: 2),
          );
        }
      });
    } else {
      print('User declined or has not accepted permission');
    }
  }

  @override
  void initState() {
    super.initState();
    registerNotification();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(
        notificationInfo: _notificationInfo,
        totalNotifications: _totalNotifications,
      ),
    );
  }
}

class Body extends StatefulWidget {
  Body({
    Key key,
    @required this.totalNotifications,
    @required this.notificationInfo,
  }) : super(key: key);
  final int totalNotifications;
  final PushNotification notificationInfo;

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.screenHeight,
      width: SizeConfig.screenWidth,
      child: widget.notificationInfo != null
          ? Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'TITLE: ${widget.notificationInfo.title}',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'BODY: ${widget.notificationInfo.body}',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            )
          : Container(),
    );
  }
}
