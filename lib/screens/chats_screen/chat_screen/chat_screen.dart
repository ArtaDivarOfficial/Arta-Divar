import 'package:divar/screens/chats_screen/chat_screen/widgets/chat_screen_widgets/chat_bubble_message_widget.dart';
import 'package:divar/screens/chats_screen/chat_screen/widgets/chat_screen_widgets/chat_message_text_field_and_send_message_button_widget.dart';
import 'package:divar/screens/chats_screen/chats_screen/widgets/customer_profile_image_widget.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  static const String id = '/chat_screen';

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const CustomChatScreenAppBar(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: List.generate(
                    10,
                    (index) {
                      return ChatBubbleMessageWidget(
                        onLongPress: () {
                          // onLongPressMessage(context, index);
                        },
                        chatModelsList: [],
                        index: index,
                      );
                    },
                  ),
                ),
              ),
            ),
            ChatMessageTextFieldAndSendButtonRowWidget(
              textEditingControllerMessage: TextEditingController(),
              focusNodeMessage: FocusNode(),
              onChangedTextField: (value) {},
              isSendingMessage: false,
              onPressedSendMessageButton: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class CustomChatScreenAppBar extends StatelessWidget {
  const CustomChatScreenAppBar({
    super.key,
    this.customerProfileImageUrl = 'assets/app_logo/app_logo.png',
    this.customerName = 'آرتا دیوار',
    this.customerOnlineStatus = false,
  });

  final String? customerProfileImageUrl;
  final String? customerName;
  final bool? customerOnlineStatus;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_back_rounded),
                splashRadius: 10,
              ),
              const SizedBox(
                width: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: CustomerProfileImageWidget(
                      customerProfileImageUrl: customerProfileImageUrl!,
                      imageWidthSize: 50,
                      imageHeightSize: 50,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ConstrainedBox(
                        constraints: const BoxConstraints(maxHeight: 28),
                        child: Text(
                          customerName!,
                          style: const TextStyle(
                              color: Colors.black, fontSize: 18),
                        ),
                      ),
                      customerOnlineStatus!
                          ? const Text(
                              'آنلاین',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 12),
                            )
                          : const SizedBox(),
                    ],
                  ),
                ],
              ),
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert_rounded),
            splashRadius: 10,
          )
        ],
      ),
    );
  }
}
