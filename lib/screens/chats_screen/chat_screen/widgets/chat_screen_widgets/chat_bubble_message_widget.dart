import 'package:divar/repositories/chats_repositories/chat_repository/models/chat_model.dart';
import 'package:divar/screens/chats_screen/chat_screen/widgets/chat_bubble_widgets/chat_bubble_widget.dart';
import 'package:flutter/material.dart';

class ChatBubbleMessageWidget extends StatelessWidget {
  const ChatBubbleMessageWidget({
    super.key,
    required this.onLongPress,
    required this.chatModelsList,
    required this.index,
  });

  final Function() onLongPress;
  final List<ChatModel> chatModelsList;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: onLongPress,
      child: const ChatBubbleWidget(
        text: 'سلام',
        time: 0,
        isCurrentUser: true,
        isMessagesSeen: true,
        showDay: true,
      ),
    );
  }
}
