import 'package:dribble_question_app/bloc/pageOptionsBloc/page_options_bloc.dart';
import 'package:dribble_question_app/constants.dart';
import 'package:dribble_question_app/screens/home/components/chat_rooms_list.dart';
import 'package:dribble_question_app/screens/home/components/courses_screen.dart';
import 'package:dribble_question_app/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'components/category_scroll_view.dart';
import 'components/notification_circle.dart';
import 'components/user_profile_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> globalKey = GlobalKey();
    precacheImage(new AssetImage('assets/images/profile.jpg'), context);
    precacheImage(AssetImage('assets/images/machine_learning.jpg'), context);
    precacheImage(
        AssetImage('assets/images/mobile_app_development.jpg'), context);

    SizeConfig().init(context);
    return Scaffold(
      key: globalKey,
      drawer: Drawer(
        child: Container(
          height: SizeConfig.screenHeight,
          decoration: BoxDecoration(
            color: primaryColorDark,
          ),
        ),
      ),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) =>
            [
          SliverAppBar(
            pinned: false,
            floating: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Padding(
                padding: EdgeInsets.only(
                  top: 110,
                  right: 20,
                  left: 20,
                ),
                child: CategoryScrollView(),
              ),
            ),
            expandedHeight: 130,
            collapsedHeight: 70,
            centerTitle: true,
            leading: IconButton(
              splashRadius: 26,
              icon: Icon(
                Icons.menu,
                size: 28,
                color: Colors.white.withOpacity(.9),
              ),
              onPressed: () {
                if (!globalKey.currentState.isDrawerOpen)
                  globalKey.currentState.openDrawer();
              },
            ),
            actions: [
              UserProfileCard(),
              Padding(
                padding: EdgeInsets.only(
                  top: 6,
                  right: 12,
                ),
                child: NotificationCircle(),
              ),
            ],
          ),
        ],
        body: Body(),
      ),
    );
  }
}

class Body extends StatefulWidget {
  Body({Key key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int activeCategoryIndex = 0;

  Widget getTheBody({activeIndex = 0}) {
    if (activeIndex == 0) {
      return CoursesScreen();
    }
    if (activeIndex == 3) {
      return ChatRoomsList();
    }
    return CoursesScreen();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PageOptionsBloc, int>(
      builder: (context, state) {
        if (state == 0) {
          return CoursesScreen();
        }
        if (state == 3) {
          return ChatRoomsList();
        }
        return Container();
      },
    );
  }
}
