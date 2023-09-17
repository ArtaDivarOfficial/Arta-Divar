import 'package:flutter/material.dart';

class AppBarBackIconButtonWidget extends StatelessWidget {
  const AppBarBackIconButtonWidget({
    super.key,
    required this.onPressed,
  });

  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: const Icon(
        Icons.arrow_back_rounded,
        color: Colors.black,
      ),
    );
  }
}
