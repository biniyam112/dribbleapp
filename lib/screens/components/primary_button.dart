import 'package:flutter/material.dart';

import '../../constants.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key key,
    @required this.title,
    @required this.onPress,
    this.padding = const EdgeInsets.symmetric(
      horizontal: 16,
      vertical: 10,
    ),
  }) : super(key: key);
  final String title;
  final EdgeInsets padding;
  final GestureTapCallback onPress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: onPress,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: buttonGradient,
        ),
        child: Padding(
          padding: padding,
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
