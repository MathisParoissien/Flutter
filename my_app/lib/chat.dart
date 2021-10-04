import 'package:flutter/material.dart';
import 'package:my_app/main.dart';


class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: d_lightGray,
      appBar: AppBar(title: const Text('chat'),),
      );
  }
}