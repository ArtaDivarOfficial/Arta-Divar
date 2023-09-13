import 'package:flutter/material.dart';

class ChatMessageTextFiledWidget extends StatelessWidget {
  const ChatMessageTextFiledWidget({
    Key? key,
    required this.textEditingControllerMessage,
    required this.focusNodeMessage,
    required this.onChanged,
    this.isSendingMessage = false,
  }) : super(key: key);

  final TextEditingController textEditingControllerMessage;
  final FocusNode focusNodeMessage;
  final Function(String) onChanged;
  final bool? isSendingMessage;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          maxHeight: 100,
        ),
        child: TextField(
          keyboardType: TextInputType.multiline,
          maxLines: null,
          controller: textEditingControllerMessage,
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(color: Colors.white),
          onChanged: onChanged,
          focusNode: focusNodeMessage,
          cursorColor: Colors.white,
          decoration: const InputDecoration(
            border: InputBorder.none,
            hintText: 'پیام تانرا اینجا بنویسید...',
            hintStyle: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
            contentPadding: EdgeInsets.only(left: 10, right: 10),
          ),
        ),
      ),
    );
  }
}
