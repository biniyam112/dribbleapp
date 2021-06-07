import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

Container bottomNavBar() {
  return Container(
    height: 70,
    width: SizeConfig.screenWidth,
    decoration: BoxDecoration(
      color: bottonNavColor,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          color: iconButtonColor,
          icon: Icon(
            CupertinoIcons.home,
          ),
          onPressed: () {},
        ),
        IconButton(
          color: iconButtonColor,
          icon: Icon(CupertinoIcons.heart_fill),
          onPressed: () {},
        ),
        IconButton(
          color: iconButtonColor,
          icon: Icon(CupertinoIcons.bell_fill),
          onPressed: () {},
        ),
        InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(20),
          child: Container(
            decoration: BoxDecoration(
              gradient: buttonGradient,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 8,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    FlutterIcons.bell_ent,
                    color: Colors.white,
                  ),
                  SizedBox(width: 4),
                  Text(
                    'User',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
