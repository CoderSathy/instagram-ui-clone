import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/bubble_type.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';
import 'package:flutter_chat_bubble/clippers/chat_bubble_clipper_1.dart';
import 'package:flutter_chat_bubble/clippers/chat_bubble_clipper_5.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MessagesPage extends StatefulWidget {
  @override
  _MessagesPageState createState() => _MessagesPageState();
}

class _MessagesPageState extends State<MessagesPage> {

  double sizeOfImage = 25;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        shadowColor: Colors.white,
        title: Text("Chats",style: TextStyle(color: Colors.black),),
        actions: [
          IconButton(
            icon: FaIcon(FontAwesomeIcons.edit, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10,right: 10),
          child: Column(
            children: [

              _chatBubble("Hello", 0),
              _chatBubble("Hi", 1),
              _chatBubble("Hello", 0),
              _chatBubble("Hi", 1),
              _chatBubble("Hello", 0),
              _chatBubble("Hi", 1),
              _chatBubble("Hello", 0),
              _chatBubble("Hi", 1),
              _chatBubble("Hello", 0),
              _chatBubble("Hi", 1),
              _chatBubble("Hello", 0),
              _chatBubble("Hi", 1),

              _chatBubble("Hello", 0),
              _chatBubble("Hi", 1),
              _chatBubble("Hello", 0),
              _chatBubble("Hi", 1),
              _chatBubble("Hello", 0),
              _chatBubble("Hi", 1),
              _chatBubble("Hello", 0),
              _chatBubble("Hi", 1),
              _chatBubble("Hello", 0),
              _chatBubble("Hi", 1),
              _chatBubble("Hello", 0),
              _chatBubble("Hi", 1),

            ],
          ),
        ),
      ),
    );


  }

  Widget _chatBubble(message,from) {
    if (from == 0)
      return ChatBubble(
        clipper: ChatBubbleClipper5(type: BubbleType.sendBubble),
        alignment: Alignment.topRight,
        margin: EdgeInsets.only(top: 10),
        backGroundColor: Color(0xffefefef),
        child: Container(
          constraints: BoxConstraints(
            maxWidth: MediaQuery
                .of(context)
                .size
                .width * 0.7,
          ),
          child: Text(
            message,
            style: TextStyle(color: Colors.black),
          ),
        ),
      );
    else
      return ChatBubble(
        clipper: ChatBubbleClipper5(type: BubbleType.receiverBubble),
        backGroundColor: Colors.white,
        margin: EdgeInsets.only(top: 10),
        child: Container(
          constraints: BoxConstraints(
            maxWidth: MediaQuery
                .of(context)
                .size
                .width * 0.7,
          ),
          child: Text(
            message,
            style: TextStyle(color: Colors.black),
          ),
        ),
      );

  }
}
