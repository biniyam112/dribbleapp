import 'package:dribble_question_app/screens/profile/profile_screen.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class UserProfileCard extends StatelessWidget {
  const UserProfileCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10, right: 16),
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProfileScreen(),
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: darkFocusColor,
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 8.0,
              horizontal: 12,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 2,
                    ),
                  ),
                  child: CircleAvatar(
                    backgroundColor: darkFocusColor,
                    foregroundImage: AssetImage(
                      'assets/images/profile.jpg',
                    ),
                    maxRadius: 16,
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  'Biniyam',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    fontSize: 12,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
