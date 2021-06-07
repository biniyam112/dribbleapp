import 'package:dribble_question_app/screens/components/primary_button.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class PopularCourseCard extends StatelessWidget {
  const PopularCourseCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(20),
        child: Container(
          width: SizeConfig.screenWidth - 20,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: darkFocusColor,
          ),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
                child: Image.asset(
                  'assets/images/networking.jpg',
                  width: double.infinity,
                  height: 140,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'CISCO CCNA Networking',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      '12 active students',
                      style: TextStyle(
                        color: Colors.white60,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 4),
                    RichText(
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        children: [
                          TextSpan(
                            text: '\$2199.99',
                            style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              color: Colors.white60,
                            ),
                          ),
                          TextSpan(
                            text: '  \$1999.99',
                            style: TextStyle(
                              color: Colors.green[500],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    PrimaryButton(
                      onPress: () {},
                      title: 'Enroll',
                      padding: EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
