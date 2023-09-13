import 'package:divar/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  // تکست فیلد همراه شمارش گر حروف برای صفحه اضافه کردن
  // تکست فیلد همراه شمارش گر حروف برای صفحه اضافه کردن
  const CustomTextField({
    super.key,
    required this.text,
    required this.hintText,
    required this.maxLength,
  });
  final String text;
  final String hintText;
  final int maxLength;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
        ),
        const SizedBox(height: 5),
        Container(
          height: 55,
          margin: const EdgeInsets.symmetric(horizontal: 20),
          decoration: const BoxDecoration(
            color: kBlackColor,
          ),
          child: TextField(
            maxLength: maxLength,
            buildCounter: (context,
                {required currentLength, required isFocused, maxLength}) {
              return Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  currentLength.toString() + "/" + maxLength.toString(),
                ),
              );
            },
            decoration: InputDecoration(
              enabledBorder: const OutlineInputBorder(),
              focusedBorder: const OutlineInputBorder(),
              hintText: hintText,
              border: const OutlineInputBorder(),
              hintStyle: TextStyle(
                fontWeight: FontWeight.w600,
                color: kGreyColor.withOpacity(0.5),
                fontSize: 13,
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
