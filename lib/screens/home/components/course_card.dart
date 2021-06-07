import 'package:dribble_question_app/screens/course_details/course_details_screen.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class CourseCard extends StatelessWidget {
  const CourseCard({
    Key key,
    @required this.imagePath,
    @required this.title,
    @required this.university,
    this.oldPrice,
    @required this.newPrice,
  }) : super(key: key);
  final String imagePath, title, university, oldPrice, newPrice;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 12),
      child: Container(
        width: SizeConfig.screenWidth / 2,
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
                imagePath,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  new Text(
                    title,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white.withOpacity(.8),
                    ),
                  ),
                  new Text(
                    university,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white.withOpacity(.7),
                    ),
                  ),
                  SizedBox(height: 2),
                  new RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '\$$oldPrice',
                          style: TextStyle(
                            decoration: TextDecoration.lineThrough,
                            color: Colors.white60.withOpacity(.8),
                            fontSize: 16,
                          ),
                        ),
                        TextSpan(
                          text: '  $newPrice',
                          style: TextStyle(
                            color: Colors.green[500],
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                  Center(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return CourseDetailsScreen();
                            },
                          ),
                        );
                      },
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: buttonGradient,
                        ),
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                          child: new Text(
                            'Apply',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
