import 'package:divar/constants/colors.dart';
import 'package:divar/screens/chats_screen/chat_screen/widgets/chat_screen_widgets/chat_message_text_field_widget.dart';
import 'package:divar/screens/chats_screen/chat_screen/widgets/chat_screen_widgets/send_message_button_and_circular_progress_bar_row_widget.dart';
import 'package:flutter/material.dart';

class ChatMessageTextFieldAndSendButtonRowWidget extends StatelessWidget {
  const ChatMessageTextFieldAndSendButtonRowWidget({
    Key? key,
    required this.textEditingControllerMessage,
    required this.focusNodeMessage,
    required this.onChangedTextField,
    this.isSendingMessage = false,
    required this.onPressedSendMessageButton,
  }) : super(key: key);

  final TextEditingController textEditingControllerMessage;
  final FocusNode focusNodeMessage;
  final Function(String) onChangedTextField;
  final bool? isSendingMessage;
  final Function() onPressedSendMessageButton;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.symmetric(vertical: 2.5),
          decoration: BoxDecoration(
            color: kLightPrimaryColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              ChatMessageTextFiledWidget(
                textEditingControllerMessage: textEditingControllerMessage,
                focusNodeMessage: focusNodeMessage,
                isSendingMessage: isSendingMessage,
                onChanged: onChangedTextField,
              ),
              SendMessageButtonAndCircularProgressBarWidget(
                isSendingMessage: isSendingMessage,
                onPressed: onPressedSendMessageButton,
              )
            ],
          ),
        ),
      ],
    );
  }
}
