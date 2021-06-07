import 'package:dribble_question_app/screens/chat_room/chat_room_screen.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class ChatRoomListCard extends StatelessWidget {
  const ChatRoomListCard({
    Key key,
    this.imagePath,
    @required this.groupName,
    this.lastMessage,
    this.lastMessageTime,
    this.unseenTexts,
  }) : super(key: key);
  final String imagePath, groupName, lastMessage, lastMessageTime;
  final int unseenTexts;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 8,
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ChatRoomScreen(groupId: 3),
            ),
          );
        },
        borderRadius: BorderRadius.circular(10),
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(4),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: darkFocusColor.withOpacity(.8)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: darkFocusColor,
                      width: 3,
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(
                    radius: 36,
                    backgroundColor: darkFocusColor.withOpacity(.6),
                    foregroundImage:
                        imagePath == null ? null : AssetImage(imagePath),
                  ),
                ),
              ),
              SizedBox(width: 8),
              SizedBox(
                width: SizeConfig.screenWidth - 130,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      groupName,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: Colors.white60,
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Text(
                            lastMessage == null
                                ? "Start conversations"
                                : lastMessage,
                            style: TextStyle(
                              fontWeight: FontWeight.w100,
                              fontSize: 14,
                              color: Colors.white38,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            lastMessage == null ? "" : lastMessageTime,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white.withOpacity(.2),
                              fontWeight: FontWeight.w100,
                            ),
                          ),
                        ),
                      ],
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
