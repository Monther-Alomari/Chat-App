import 'package:chat_app/models/message.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
class ChatBubble extends StatelessWidget {
  const ChatBubble({super.key, required this.message});
 final Message message ;
  @override
  Widget build(BuildContext context) {
    return  Align(alignment: Alignment.centerLeft,
      child: Container(
        padding: EdgeInsets.only(left: 16,top: 32,bottom: 32,right: 32),
        margin: EdgeInsets.symmetric(horizontal: 16,vertical: 8),

        decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(32),
              topRight: Radius.circular(32),
              bottomRight: Radius.circular(32),
            )),
        child: Text(
          message.message,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
