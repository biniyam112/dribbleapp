import 'package:dribble_question_app/constants.dart';
import 'package:dribble_question_app/screens/chat_room/components/bottom_modal_sheet.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class ChatRoomScreen extends StatelessWidget {
  const ChatRoomScreen({
    Key key,
    @required this.groupId,
  }) : super(key: key);

  final int groupId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: primaryColorDark,
        elevation: 2,
        title: InkWell(
          onTap: () {
            showBottomModalSheet(context);
          },
          child: Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 24,
                  foregroundImage: AssetImage('assets/images/cake.jpg'),
                ),
                SizedBox(width: 20),
                Text(
                  'The Cakers',
                  style: TextStyle(
                    color: Colors.white.withOpacity(.8),
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
