import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });
  final IconData icon;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      style: const ButtonStyle(),
      icon: Icon(icon),
      onPressed: onPressed,
    );
  }
}
