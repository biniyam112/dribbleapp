import 'package:dribble_question_app/bloc/pageOptionsBloc/bloc_event.dart';
import 'package:dribble_question_app/bloc/pageOptionsBloc/page_options_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants.dart';

class CategoryScrollView extends StatefulWidget {
  const CategoryScrollView({
    Key key,
  }) : super(key: key);

  @override
  _CategoryScrollViewState createState() => _CategoryScrollViewState();
}

int activeIndex = 0;

class _CategoryScrollViewState extends State<CategoryScrollView> {
  List<String> categories = [
    'Courses',
    'Questions',
    'Online Support',
    'Chat Rooms',
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: ScrollPhysics(parent: BouncingScrollPhysics()),
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: 10),
          ...List.generate(
            categories.length,
            (index) {
              return CategoryItem(
                categoryName: categories[index],
                onPress: () {
                  setState(
                    () {
                      activeIndex = index;
                    },
                  );
                  BlocProvider.of<PageOptionsBloc>(context)
                      .add(SelectHomeContent(index));
                },
                isActive: index == activeIndex,
              );
            },
          ),
        ],
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    Key key,
    @required this.categoryName,
    @required this.onPress,
    this.isActive = false,
  }) : super(key: key);
  final String categoryName;
  final GestureTapCallback onPress;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 8),
      child: InkWell(
        onTap: onPress,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: darkFocusColor,
          ),
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 6, horizontal: 16),
              child: Text(
                categoryName,
                style: TextStyle(
                  fontSize: 14,
                  color: isActive ? orangeColor : Colors.white.withOpacity(.8),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
