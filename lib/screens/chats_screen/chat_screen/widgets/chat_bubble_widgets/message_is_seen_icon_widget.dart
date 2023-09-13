import 'package:flutter/material.dart';

class MessageIsSeenIconImageWidget extends StatelessWidget {
  const MessageIsSeenIconImageWidget({
    super.key,
    required this.isCurrentUser,
    required this.isMessagesSeen,
  });

  final bool isCurrentUser;
  final bool isMessagesSeen;

  @override
  Widget build(BuildContext context) {
    return !isCurrentUser
        ? const SizedBox()
        : isMessagesSeen
            ? Image.asset(
                'assets/icons/double_tick_white.png',
                width: 20,
              )
            : Image.asset(
                'assets/icons/tick_white.png',
                width: 20,
              );
  }
}
