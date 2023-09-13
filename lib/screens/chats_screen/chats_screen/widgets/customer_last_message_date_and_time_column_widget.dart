import 'package:flutter/material.dart';

class CustomerLastMessageDateAndTimeColumnWidget extends StatelessWidget {
  const CustomerLastMessageDateAndTimeColumnWidget({
    super.key,
    this.chatLastMessageTime = 0,
  });

  final num? chatLastMessageTime;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          'دوشنبه',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Text(
          '3:40 ب.ظ',
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .color!
                    .withOpacity(0.5),
              ),
        ),
      ],
    );
  }
}
