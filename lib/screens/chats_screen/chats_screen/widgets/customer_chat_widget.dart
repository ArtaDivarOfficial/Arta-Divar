import 'package:divar/constants/colors.dart';
import 'package:divar/screens/chats_screen/chats_screen/widgets/customer_last_message_date_and_time_column_widget.dart';
import 'package:divar/screens/chats_screen/chats_screen/widgets/customer_name_and_last_message_and_counter_column_widget.dart';
import 'package:divar/screens/chats_screen/chats_screen/widgets/customer_profile_image_and_online_status_widget.dart';
import 'package:flutter/material.dart';

class CustomerChatWidget extends StatelessWidget {
  const CustomerChatWidget({
    Key? key,
    required this.onPressed,
    this.customerProfileImageUrl = 'assets/app_logo/app_logo.png',
    this.customerOnlineStatus = false,
    this.customerName = 'آرتا دیوار',
    this.chatLastMessage = 'آرتا دیوار',
    this.chatIsNewMessage = false,
    this.chatLastMessageTime = 0,
  }) : super(key: key);

  final Function() onPressed;
  final String? customerProfileImageUrl;
  final bool? customerOnlineStatus;
  final String? customerName;
  final String? chatLastMessage;
  final bool? chatIsNewMessage;
  final num? chatLastMessageTime;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: kTransparentColor,
      ),
      child: GestureDetector(
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CustomerProfileImageAndOnlineStatusWidget(
                        customerProfileImageUrl: customerProfileImageUrl,
                        customerOnlineStatus: customerOnlineStatus,
                      ),
                      const SizedBox(width: 10),
                      CustomerNameAndLastMessageAndCounterColumnWidget(
                        customerName: customerName,
                        chatLastMessage: chatLastMessage,
                        chatIsNewMessage: false,
                      ),
                    ],
                  ),
                  CustomerLastMessageDateAndTimeColumnWidget(
                    chatLastMessageTime: chatLastMessageTime,
                  ),
                ],
              ),
              const Divider()
            ],
          ),
        ),
      ),
    );
  }
}
