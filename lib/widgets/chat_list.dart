import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone_flutter/info.dart';
import 'package:whatsapp_ui_clone_flutter/widgets/my_message_card.dart';
import 'package:whatsapp_ui_clone_flutter/widgets/received_message_card.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, index) {
          if (messages[index]['isMe'] == true) {
            return MyMessageCard(
                message: messages[index]['text'].toString(),
                date: messages[index]['time'].toString());
          } else {
            return ReceivedMessageCard(
                message: messages[index]['text'].toString(),
                date: messages[index]['time'].toString());
          }
        });
  }
}
