import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone_flutter/info.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: ListView.builder(
          itemCount: info.length,
          itemBuilder: (context, index) {
            return ListTile(title: Text(info[index]['name'].toString()));
          }),
    );
  }
}
