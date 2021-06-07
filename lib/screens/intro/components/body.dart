import 'package:dribble_question_app/screens/home/home_screen.dart';
import 'package:dribble_question_app/size_config.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class Body extends StatefulWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

int activePageIndex = 0;

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    precacheImage(new AssetImage('assets/images/questions.jpg'), context);
    precacheImage(new AssetImage('assets/images/peer_support.jpg'), context);
    precacheImage(new AssetImage('assets/images/study.jpg'), context);
    return SingleChildScrollView(
      child: Container(
        height: SizeConfig.screenHeight,
        width: SizeConfig.screenWidth,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 22),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeScreen(),
                          ),
                        );
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4),
                        child: Text(
                          'skip',
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 60),
                Text(
                  'Dribble questions'.toUpperCase(),
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white70,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SplashScreenContent(
                  onPageChanged: (index) {
                    setState(() {
                      activePageIndex = index;
                    });
                    print(activePageIndex.toString());
                  },
                ),
                PageIndexRow(
                  pageIndex: activePageIndex,
                ),
                SizedBox(height: 40),
                if (activePageIndex == 2)
                  ElevatedButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SplashScreenContent extends StatefulWidget {
  const SplashScreenContent({
    Key key,
    @required this.onPageChanged,
  }) : super(key: key);
  final Function(int index) onPageChanged;

  @override
  _SplashScreenContentState createState() => _SplashScreenContentState();
}

class _SplashScreenContentState extends State<SplashScreenContent> {
  List<String> splashImages = [
    'assets/images/questions.jpg',
    'assets/images/peer_support.jpg',
    'assets/images/study.jpg',
  ];
  List<String> splashTexts = [
    'Welcome to Dribble Questions',
    'Get into supportive community',
    'Educate your self everyday',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth,
      height: SizeConfig.screenHeight * .6,
      child: PageView.builder(
        itemCount: 3,
        physics: BouncingScrollPhysics(),
        onPageChanged: (index) {
          setState(() {
            widget.onPageChanged(index);
          });
        },
        itemBuilder: (context, index) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: SizeConfig.screenWidth * .6,
              width: SizeConfig.screenWidth * .6,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white,
                  width: 4,
                ),
                boxShadow: [
                  BoxShadow(
                    color: primaryColorDark,
                    blurRadius: 3,
                    spreadRadius: 2,
                  ),
                ],
                image: DecorationImage(
                  image: AssetImage(splashImages[index]),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                splashTexts[index],
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline5.copyWith(
                      color: Colors.white60,
                      fontWeight: FontWeight.w400,
                      fontSize: 24,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PageIndexRow extends StatelessWidget {
  const PageIndexRow({
    Key key,
    @required this.pageIndex,
  }) : super(key: key);
  final int pageIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(
          3,
          (index) => Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: AnimatedContainer(
              duration: Duration(milliseconds: 200),
              height: 4,
              width: index == pageIndex ? 16 : 5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: index == activePageIndex
                    ? orangeColor
                    : orangeColor.withOpacity(.5),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
