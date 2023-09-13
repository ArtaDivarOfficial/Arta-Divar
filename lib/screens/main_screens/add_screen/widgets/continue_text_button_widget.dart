import 'package:divar/constants/colors.dart';
import 'package:flutter/material.dart';

class ContinueTextButtonWidget extends StatelessWidget {
  // تکست باتون «ادامه» برای رفتن به صفحه بعدی
  // تکست باتون «ادامه» برای رفتن به صفحه بعدی
  const ContinueTextButtonWidget({
    super.key,
    required this.text,
    required this.onPressed,
  });
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: SizedBox(
        width: 100,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: TextButton(
            style: ButtonStyle(
              overlayColor: MaterialStatePropertyAll(
                kBlackColor.withOpacity(0.07),
              ),
            ),
            onPressed: onPressed,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  text,
                  style: const TextStyle(
                    fontSize: 20,
                    color: kBlackColor,
                  ),
                ),
                const Icon(
                  Icons.arrow_forward_rounded,
                  size: 20,
                  color: kBlackColor,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
