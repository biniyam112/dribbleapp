import 'package:flutter/material.dart';

import 'course_card.dart';

class CoursesList extends StatelessWidget {
  const CoursesList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> courseImagePaths = [
      'assets/images/machine_learning.jpg',
      'assets/images/data_science.jpg',
      'assets/images/mobile_app_development.jpg',
    ];
    List<String> courseUnivName = [
      'ALU university',
      'Harvard University',
      'Course Era',
    ];
    List<String> courseName = [
      'Data Science',
      'Machine Learning',
      'Mobile app development',
    ];
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(width: 10),
            ...List.generate(
              courseName.length,
              (index) {
                return CourseCard(
                  imagePath: courseImagePaths[index],
                  university: courseUnivName[index],
                  title: courseName[index],
                  oldPrice: '12.99',
                  newPrice: 'FREE',
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
