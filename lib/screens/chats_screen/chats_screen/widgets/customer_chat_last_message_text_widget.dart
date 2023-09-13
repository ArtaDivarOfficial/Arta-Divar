import 'package:flutter/material.dart';

class CustomerChatLastMessageTextWidget extends StatelessWidget {
  const CustomerChatLastMessageTextWidget({
    super.key,
    this.chatLastMessage = 'آرتا دیوار',
  });

  final String? chatLastMessage;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 125),
      child: Text(
        chatLastMessage!,
        style: Theme.of(context).textTheme.titleMedium!.copyWith(
            color: Theme.of(context)
                .textTheme
                .titleMedium!
                .color!
                .withOpacity(0.5)),
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
