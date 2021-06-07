import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

AppBar buildAppbar(BuildContext context) {
  return AppBar(
    leading: IconButton(
      icon: Icon(
        Ionicons.ios_arrow_round_back,
        size: 32,
        color: Colors.white70,
      ),
      onPressed: () => Navigator.pop(context),
    ),
    title: Text(
      'Profile',
      style: Theme.of(context).textTheme.headline6.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
    ),
    centerTitle: true,
    actions: [
      IconButton(
        icon: Icon(
          Icons.menu,
          color: Colors.white70,
        ),
        onPressed: () {},
      ),
    ],
  );
}
