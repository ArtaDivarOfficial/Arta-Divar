import 'package:divar/screens/chats_screen/chat_screen/widgets/chat_bubble_widgets/message_container_widget.dart';
import 'package:flutter/material.dart';

class ChatMessageWidget extends StatelessWidget {
  const ChatMessageWidget({
    super.key,
    required this.isCurrentUser,
    required this.text,
    required this.isMessagesSeen,
    required this.time,
  });

  final bool isCurrentUser;
  final String text;
  final bool isMessagesSeen;
  final num time;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Align(
        alignment: isCurrentUser ? Alignment.centerRight : Alignment.centerLeft,
        child: MessageContainerWidget(
          isCurrentUser: isCurrentUser,
          text: text,
          isMessagesSeen: isMessagesSeen,
          time: time,
        ),
      ),
    );
  }
}
