import 'package:dribble_question_app/bloc/pageOptionsBloc/page_options_bloc.dart';
import 'package:dribble_question_app/screens/profile/components/status_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_icons/flutter_icons.dart';

import '../../../size_config.dart';
import 'badge_card.dart';
import 'in_page_options.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.screenHeight,
      width: SizeConfig.screenWidth,
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  SizedBox(height: 40),
                  Container(
                    height: 160,
                    width: 160,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/profile.jpg',
                        ),
                      ),
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white,
                        width: 4,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'B1n17AM 112',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              SizedBox(height: 30),
              LevelBadge(),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  StatusCard(
                    name: 'Rank',
                    value: '11',
                  ),
                  StatusCard(
                    name: 'Badge',
                    value: '23',
                  ),
                  StatusCard(
                    name: 'Followers',
                    value: '3k',
                  ),
                ],
              ),
              SizedBox(height: 40),
              InpageOptions(),
              SizedBox(height: 20),
              BlocBuilder<PageOptionsBloc, int>(
                builder: (context, pageoptionsstate) {
                  if (pageoptionsstate == 1) {
                    return Column(
                      children: [
                        ...List.generate(
                          4,
                          (index) => Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 8,
                              horizontal: 24,
                            ),
                            child: BadgeCard(
                              isActive: index == 0,
                            ),
                          ),
                        ),
                      ],
                    );
                  }
                  return Container();
                },
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class LevelBadge extends StatelessWidget {
  const LevelBadge({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 12,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              FlutterIcons.diamond_stone_mco,
              color: Color(0xffFDB23D),
            ),
            SizedBox(width: 10),
            Text(
              'Diamond level',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                color: Color(0xff4274BC),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
