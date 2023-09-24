import 'package:divar/constants/colors.dart';
import 'package:flutter/material.dart';

class BottomPageTextButtonWidget extends StatelessWidget {
  const BottomPageTextButtonWidget({
    super.key,
    required this.text,
    required this.onPressed,
  });
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: kLightPrimaryColor,
            ),
            onPressed: onPressed,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Text(
                text,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
