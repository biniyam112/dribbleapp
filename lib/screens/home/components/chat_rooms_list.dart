import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'chat_room_list_card.dart';

class ChatRoomsList extends StatelessWidget {
  const ChatRoomsList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20),
        ChatRoomListCard(
          groupName: 'Cake makers',
          imagePath: 'assets/images/cake.jpg',
          lastMessage:
              'for making the cup cakes you have to add the egg first not the water. The order matters bitch.',
          lastMessageTime:
              '${DateFormat("mm-hh").format(DateTime.now())} ${TimeOfDay.now().period.toString().contains('pm') ? 'pm' : 'am'}',
        ),
        ChatRoomListCard(groupName: 'group name'),
        ChatRoomListCard(groupName: 'group name'),
      ],
    );
  }
}
