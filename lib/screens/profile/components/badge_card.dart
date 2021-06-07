import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'hexagon_painter.dart';

class BadgeCard extends StatelessWidget {
  const BadgeCard({
    Key key,
    this.isActive = false,
  }) : super(key: key);
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(20),
      splashColor: buttonColor,
      child: Container(
        decoration: BoxDecoration(
          gradient: isActive
              ? buttonGradient
              : LinearGradient(
                  colors: [
                    darkFocusColor,
                    darkFocusColor,
                  ],
                ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 14),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 40,
                width: 40,
                child: CustomPaint(
                  painter: HexagonPainter(),
                ),
              ),
              SizedBox(width: 40),
              Text(
                'Happy Friends',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
