import 'package:dribble_question_app/screens/components/primary_button.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class AdvertisedMessageCard extends StatelessWidget {
  const AdvertisedMessageCard({
    Key key,
    @required this.title,
    @required this.message,
  }) : super(key: key);
  final String title, message;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 12,
      ),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: darkFocusColor,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 30,
            horizontal: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: Colors.white60,
                ),
              ),
              SizedBox(height: 10),
              Text(
                message,
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  height: 1.2,
                  fontSize: 16,
                  color: Colors.white70,
                ),
              ),
              SizedBox(height: 20),
              PrimaryButton(
                onPress: () {},
                title: 'Enroll',
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
