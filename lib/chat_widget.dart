import 'package:cr1_lesson_7/conversation_screen.dart';
import 'package:flutter/material.dart';

class ChatWidget extends StatefulWidget {
  final int id;
  final String imagePath;
  final String messageTitle;
  final String messageTime;
  final String messageBody;
  const ChatWidget(
      {super.key,
      required this.imagePath,
      required this.messageTitle,
      required this.messageTime,
      required this.messageBody,
      required this.id});

  @override
  State<ChatWidget> createState() => _ChatWidgetState();
}

class _ChatWidgetState extends State<ChatWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ConversationScreen(
              messageTitle: widget.messageTitle,
              id: widget.id,
            ),
          ),
        );
      },
      child: Row(
        children: [
          Image.network(
            widget.imagePath,
            height: 70,
          ),
          Column(
            children: [
              Text(
                widget.messageTitle,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(widget.messageBody),
            ],
          ),
          Text(widget.messageTime)
        ],
      ),
    );
  }
}
