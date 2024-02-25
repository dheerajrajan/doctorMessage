// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:message/view/chat_screen/chat_screen.dart';
import 'package:message/view/chat_tab/widgets/active_user.dart';


class ChatTab extends StatefulWidget {
  const ChatTab({super.key});

  @override
  State<ChatTab> createState() => _ChatTabState();
}

class _ChatTabState extends State<ChatTab> {

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        
        title:  Text("Message",style: TextStyle(color: Colors.blue) ,),
        
        ),
      
       
        body: 
        Padding(
          padding: const EdgeInsets.all(11),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 60,
                width: 390,
                decoration: BoxDecoration(
                color: Color.fromARGB(255, 212, 211, 211),
                borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    SizedBox(width: 10,),
                    Icon(Icons.search,color: Colors.grey),
                    SizedBox(width: 10,),
                    Text("Search a Doctor",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),), 
                    SizedBox(width: 200,),
                    Icon(Icons.mic,color: Colors.grey),
                  ],
                ),
              ),
              Text("Active Now",style: TextStyle(fontWeight: FontWeight.bold),),
              ActiveUser(),
              ChatScreen(),
              
            ],
          ),
        ),
        
        

      
    );
  }
}