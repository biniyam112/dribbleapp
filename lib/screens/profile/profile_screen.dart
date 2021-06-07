import 'package:dribble_question_app/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';
import 'components/bottom_nav_bar.dart';
import 'components/build_appbar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppbar(context),
      bottomNavigationBar: bottomNavBar(),
      body: Body(),
    );
  }
}
