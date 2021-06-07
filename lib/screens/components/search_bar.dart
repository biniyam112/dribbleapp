import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import '../../constants.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: darkFocusColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 4),
          child: Center(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                hintStyle: TextStyle(
                  color: Colors.white60,
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
                prefixIcon: Icon(
                  MaterialIcons.search,
                  color: Colors.white60,
                ),
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                border: InputBorder.none,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
