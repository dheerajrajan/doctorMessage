// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:message/dummy_db.dart';

class ActiveUser extends StatelessWidget {
  const ActiveUser({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 90,
      child: ListView.separated(scrollDirection: Axis.horizontal,
         itemCount: DummyDb.userChatList.length,
        itemBuilder: (context, index) => 
        Stack(children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.grey,
            backgroundImage: AssetImage(DummyDb.userChatList[index]["pro_pic"]),
          ),
          Positioned(top: 2,
          right: 2,
          child: CircleAvatar(radius: 8,
          backgroundColor: Colors.green,),)
        ]),
      
        separatorBuilder:(context, index) => SizedBox(width: 25,),
         ),
    );
  }
}