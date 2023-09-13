import 'package:divar/screens/chats_screen/chat_screen/widgets/chat_bubble_widgets/message_is_seen_icon_widget.dart';
import 'package:divar/screens/chats_screen/chat_screen/widgets/chat_bubble_widgets/message_time_stamp_text_widget.dart';
import 'package:flutter/material.dart';

class MessageIsSeenAndTimeRowWidget extends StatelessWidget {
  const MessageIsSeenAndTimeRowWidget({
    super.key,
    required this.isCurrentUser,
    required this.isMessagesSeen,
    required this.time,
  });

  final bool isCurrentUser;
  final bool isMessagesSeen;
  final num time;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        MessageIsSeenIconImageWidget(
          isCurrentUser: isCurrentUser,
          isMessagesSeen: isMessagesSeen,
        ),
        const SizedBox(
          width: 7.5,
        ),
        MessageTimeStampTextWidget(time: time, isCurrentUser: isCurrentUser),
      ],
    );
  }
}
