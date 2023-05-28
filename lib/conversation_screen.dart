import 'package:flutter/material.dart';

class ConversationScreen extends StatefulWidget {
  final int id;
  final String messageTitle;
  const ConversationScreen(
      {super.key, required this.messageTitle, required this.id});

  @override
  State<ConversationScreen> createState() => _ConversationScreenState();
}

class _ConversationScreenState extends State<ConversationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.messageTitle),
      ),
      body: ListView(
        children: [
          Text(
            widget.id.toString(),
            style: TextStyle(fontSize: 36),
          ),
          Text('Message One'),
          Text('Message Two'),
          Text('Message Three'),
          Text('Message Four')
        ],
      ),
    );
  }
}
