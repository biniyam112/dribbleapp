import 'package:dribble_question_app/bloc/pageOptionsBloc/page_options_bloc.dart';
import 'package:dribble_question_app/screens/intro/intro_screen.dart';
import 'package:dribble_question_app/theme_data.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_badger/flutter_app_badger.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:overlay_support/overlay_support.dart';

void main() {
  runApp(
    MyApp(),
  );
}

showNotificationBadge() async {
  if (await FlutterAppBadger.isAppBadgeSupported()) {
    FlutterAppBadger.updateBadgeCount(2);
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    showNotificationBadge();
    FirebaseMessaging.instance;
  }

  @override
  Widget build(BuildContext context) {
    Firebase.initializeApp();

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PageOptionsBloc(0),
        ),
      ],
      child: OverlaySupport(
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Questions App',
          themeMode: ThemeMode.system,
          darkTheme: darkTheme,
          theme: lightTheme,
          home: IntroScreen(),
        ),
      ),
    );
  }
}
