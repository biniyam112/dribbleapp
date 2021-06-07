import 'package:dribble_question_app/screens/components/search_bar.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'advertised_mesage_card.dart';
import 'courses_list.dart';
import 'popular_course_card.dart';

class CoursesScreen extends StatelessWidget {
  const CoursesScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.screenHeight,
      child: SafeArea(
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SearchBar(),
                SizedBox(height: 16),
                CoursesList(),
                SizedBox(height: 30),
                AdvertisedMessageCard(
                  title: 'Get your CCNA cirtificate',
                  message:
                      'Achieving CCNA certification is the first step in preparing for a career in IT technologies. To earn CCNA certification, you pass one exam that covers a broad range of fundamentals for IT careers, based on the latest networking technologies, software development skills, and job roles.',
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: new Text(
                        'Polular Courses',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  width: SizeConfig.screenWidth,
                  height: SizeConfig.screenHeight * .4,
                  child: PageView.builder(
                    itemCount: 5,
                    physics: BouncingScrollPhysics(
                      parent: ClampingScrollPhysics(
                        parent: FixedExtentScrollPhysics(),
                      ),
                    ),
                    itemBuilder: (context, index) => PopularCourseCard(),
                  ),
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
