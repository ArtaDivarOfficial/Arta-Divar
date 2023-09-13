import 'package:flutter/material.dart';

class SendMessageButtonAndCircularProgressBarWidget extends StatelessWidget {
  const SendMessageButtonAndCircularProgressBarWidget({
    Key? key,
    this.isSendingMessage = false,
    required this.onPressed,
  }) : super(key: key);

  final bool? isSendingMessage;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return !isSendingMessage!
        ? IconButton(
            onPressed: onPressed,
            icon: const Icon(
              Icons.send_rounded,
              color: Colors.white,
            ),
          )
        : const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: SizedBox(
              height: 25,
              width: 25,
              child: CircularProgressIndicator(
                color: Colors.white,
                strokeWidth: 3,
              ),
            ),
          );
  }
}
