import 'package:flutter/material.dart';

class MessageTimeStampTextWidget extends StatelessWidget {
  const MessageTimeStampTextWidget({
    super.key,
    required this.time,
    required this.isCurrentUser,
  });

  final num time;
  final bool isCurrentUser;

  @override
  Widget build(BuildContext context) {
    return Text(
      'دوشبنه',
      style: Theme.of(context).textTheme.titleSmall!.copyWith(
            color: Colors.white,
          ),
    );
  }
}
