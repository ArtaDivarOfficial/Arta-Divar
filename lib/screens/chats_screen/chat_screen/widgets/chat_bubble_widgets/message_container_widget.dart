import 'package:divar/constants/colors.dart';
import 'package:divar/screens/chats_screen/chat_screen/widgets/chat_bubble_widgets/message_is_seen_and_time_row_widget.dart';
import 'package:divar/screens/chats_screen/chat_screen/widgets/chat_bubble_widgets/message_text_widget.dart';
import 'package:flutter/material.dart';

class MessageContainerWidget extends StatelessWidget {
  const MessageContainerWidget({
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
    return Container(
      margin: EdgeInsets.fromLTRB(
          isCurrentUser ? 16 : 10, 3, isCurrentUser ? 10 : 16, 3),
      decoration: BoxDecoration(
        color: isCurrentUser ? kLightPrimaryColor : Colors.grey.withAlpha(100),
        borderRadius: BorderRadius.only(
          topLeft: const Radius.circular(12),
          topRight: const Radius.circular(12),
          bottomLeft: isCurrentUser
              ? const Radius.circular(12)
              : const Radius.circular(5),
          bottomRight: isCurrentUser
              ? const Radius.circular(5)
              : const Radius.circular(12),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MessageTextWidget(text: text, isCurrentUser: isCurrentUser),
            MessageIsSeenAndTimeRowWidget(
              isCurrentUser: isCurrentUser,
              isMessagesSeen: isMessagesSeen,
              time: time,
            )
          ],
        ),
      ),
    );
  }
}
