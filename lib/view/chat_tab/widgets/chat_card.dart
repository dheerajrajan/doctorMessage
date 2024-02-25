// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:message/view/chat_room/chat_room.dart';


class ChatCard extends StatelessWidget {
  const ChatCard({super.key,
  required this.proPic,
  required this.userName,
  required this.message,
  required this.time,
  required this.count
  });
  final String proPic;
  final String userName;
  final String message;
  final String time;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => ChatRoom(),));
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(proPic),
                  radius: 30,
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  children: [
                    Text(userName),
                    SizedBox(
                      height: 10,
                    ),
                    Text(message),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Text(time),
                SizedBox(
                  height: 10,
                ),
                CircleAvatar(
                  radius: 10,
                  child: Text(count.toString()),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}