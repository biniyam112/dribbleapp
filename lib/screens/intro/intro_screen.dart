import 'package:dribble_question_app/size_config.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
