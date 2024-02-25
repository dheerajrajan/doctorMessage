// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:message/dummy_db.dart';
import 'package:message/view/chat_tab/widgets/chat_card.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(itemCount: DummyDb.userChatList.length,
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      itemBuilder: (context, index) => ChatCard(
        proPic: DummyDb.userChatList[index]["pro_pic"],
        userName: DummyDb.userChatList[index]["user_name"],
        message: DummyDb.userChatList[index]["message"],
        time:DummyDb.userChatList[index]["time"],
        count: DummyDb.userChatList[index]["count"],
      ),
      separatorBuilder: (context, index) => Divider(),
      ),
    );
  }
}