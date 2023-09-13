import 'package:divar/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.text,
    required this.onPressed,
  });
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 55,
      margin: const EdgeInsets.fromLTRB(20, 10, 20, 20),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          backgroundColor: kLightPrimaryColor,
        ),
        child: Text(
          text,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: kWhiteColor,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
        ),
      ),
    );
  }
}
