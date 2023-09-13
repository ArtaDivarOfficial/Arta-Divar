import 'package:divar/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomerNotSeenMessageCounterTextWidget extends StatelessWidget {
  const CustomerNotSeenMessageCounterTextWidget({
    super.key,
    this.chatIsNewMessage = false,
  });

  final bool? chatIsNewMessage;

  @override
  Widget build(BuildContext context) {
    return !chatIsNewMessage!
        ? const SizedBox()
        : Row(
            children: [
              const SizedBox(width: 10),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 7.5),
                decoration: BoxDecoration(
                  color: kLightPrimaryColor,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Text(
                  '!',
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
            ],
          );
  }
}
