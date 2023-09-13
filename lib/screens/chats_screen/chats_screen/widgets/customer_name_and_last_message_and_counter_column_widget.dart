import 'package:divar/screens/chats_screen/chats_screen/widgets/customer_chat_last_message_text_widget.dart';
import 'package:divar/screens/chats_screen/chats_screen/widgets/customer_name_text_widget.dart';
import 'package:divar/screens/chats_screen/chats_screen/widgets/customer_not_seen_message_counter_text_widget.dart';
import 'package:flutter/material.dart';

class CustomerNameAndLastMessageAndCounterColumnWidget extends StatelessWidget {
  const CustomerNameAndLastMessageAndCounterColumnWidget({
    super.key,
    this.customerName = 'آرتا دیوار',
    this.chatLastMessage = 'آرتا دیوار',
    this.chatIsNewMessage = false,
  });

  final String? customerName;
  final String? chatLastMessage;
  final bool? chatIsNewMessage;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomerNameTextWidget(
          customerName: customerName,
        ),
        Row(
          children: [
            CustomerChatLastMessageTextWidget(
              chatLastMessage: chatLastMessage,
            ),
            CustomerNotSeenMessageCounterTextWidget(
              chatIsNewMessage: chatIsNewMessage,
            ),
          ],
        )
      ],
    );
  }
}
