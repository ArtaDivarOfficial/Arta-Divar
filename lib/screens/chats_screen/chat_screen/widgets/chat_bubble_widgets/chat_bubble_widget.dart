import 'package:divar/screens/chats_screen/chat_screen/widgets/chat_bubble_widgets/chat_message_widget.dart';
import 'package:divar/screens/chats_screen/chat_screen/widgets/chat_bubble_widgets/first_message_day_widget.dart';
import 'package:flutter/material.dart';

class ChatBubbleWidget extends StatelessWidget {
  const ChatBubbleWidget({
    Key? key,
    this.showDay = false,
    this.time = 0,
    required this.text,
    required this.isCurrentUser,
    required this.isMessagesSeen,
  }) : super(key: key);

  final bool? showDay;
  final num? time;
  final String text;
  final bool isCurrentUser;
  final bool isMessagesSeen;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FirstMessageDayWidget(
          showDay: showDay,
          time: time,
        ),
        ChatMessageWidget(
          isCurrentUser: isCurrentUser,
          text: text,
          isMessagesSeen: isMessagesSeen,
          time: time!,
        ),
      ],
    );
  }
}
