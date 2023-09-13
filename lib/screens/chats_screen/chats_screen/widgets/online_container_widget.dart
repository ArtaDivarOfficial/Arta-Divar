import 'package:flutter/material.dart';

class OnlineContainerWidget extends StatelessWidget {
  const OnlineContainerWidget({
    super.key,
    this.customerOnlineStatus = false,
  });

  final bool? customerOnlineStatus;

  @override
  Widget build(BuildContext context) {
    return customerOnlineStatus!
        ? Positioned(
            bottom: 5,
            left: 5,
            child: Container(
              height: 12,
              width: 12,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 0, 255, 8),
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          )
        : const SizedBox();
  }
}
