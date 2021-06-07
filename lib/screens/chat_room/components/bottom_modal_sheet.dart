import 'package:dribble_question_app/constants.dart';
import 'package:dribble_question_app/screens/components/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

Future showBottomModalSheet(context) {
  return showModalBottomSheet(
    context: context,
    backgroundColor: darkFocusColor,
    builder: (context) {
      return Column(
        children: [
          SizedBox(height: 22),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.black54,
                width: 3,
              ),
            ),
            child: CircleAvatar(
              foregroundImage: AssetImage('assets/images/cake.jpg'),
              radius: 60,
            ),
          ),
          SizedBox(height: 6),
          Text(
            'The Coockers',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w800,
            ),
          ),
          SizedBox(height: 22),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 10),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: groupMembercountDisplay(22349928),
                          style: TextStyle(
                            color: Colors.white.withOpacity(.9),
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'members',
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 16,
                      color: Colors.white70,
                    ),
                  ),
                  SizedBox(height: 20),
                  GroupDescription(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: PrimaryButton(
                      onPress: () {},
                      title: 'Join',
                      padding: EdgeInsets.symmetric(vertical: 10),
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      );
    },
  );
}

class GroupDescription extends StatelessWidget {
  const GroupDescription({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Features',
            style: TextStyle(
              color: Colors.white60,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      FlutterIcons.dot_circle_o_faw,
                      size: 10,
                      color: Colors.white38,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Learn how to cook',
                      style: TextStyle(color: Colors.white38),
                    )
                  ],
                ),
                SizedBox(height: 4),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      FlutterIcons.dot_circle_o_faw,
                      size: 10,
                      color: Colors.white38,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Exchange Ideas',
                      style: TextStyle(color: Colors.white38),
                    )
                  ],
                ),
                SizedBox(height: 4),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      FlutterIcons.dot_circle_o_faw,
                      size: 10,
                      color: Colors.white38,
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        'Meet new people who are passinate about cooking',
                        style: TextStyle(color: Colors.white38),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Text(
            'Guidelines',
            style: TextStyle(
              color: Colors.white60,
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                FlutterIcons.dot_circle_o_faw,
                size: 10,
                color: Colors.white38,
              ),
              SizedBox(width: 10),
              Expanded(
                child: Text(
                  'Meet new people who are passinate about cooking',
                  style: TextStyle(color: Colors.white38),
                ),
              )
            ],
          ),
          SizedBox(height: 4),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                FlutterIcons.dot_circle_o_faw,
                size: 10,
                color: Colors.white38,
              ),
              SizedBox(width: 10),
              Text(
                'Exchange Ideas',
                style: TextStyle(color: Colors.white38),
              )
            ],
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

String groupMembercountDisplay(int groupMembersCount) {
  if (groupMembersCount.toString().length > 5) {
    return '${groupMembersCount.toString().substring(0, 1)}.${groupMembersCount.toString().substring(1, 2)} M';
  }
  if (groupMembersCount.toString().length > 4) {
    return '${groupMembersCount.toString().substring(0, 1)}.${groupMembersCount.toString().substring(1, 2)} k';
  }
  var splitNumber = groupMembersCount.toString().split('');
  int indexCounter = 0;
  for (var i = splitNumber.length - 1; i > 0; i--) {
    indexCounter++;
    if (indexCounter % 3 == 0) {
      splitNumber.insert(i, ',');
    }
  }
  print(splitNumber);
  return '${splitNumber.join()}';
}
