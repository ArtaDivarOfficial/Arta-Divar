import 'package:divar/constants/colors.dart';
import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  // لیست تایل برای گزینه های انتخابی مثل وضعیت
  // لیست تایل برای گزینه های انتخابی مثل وضعیت
  const ListTileWidget({
    super.key,
    required this.title,
    this.size,
    required this.onListTilePressed,
    this.trailingText,
  });
  final String title;
  final double? size;
  final VoidCallback onListTilePressed;
  final String? trailingText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        ListTile(
          onTap: onListTilePressed,
          contentPadding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          horizontalTitleGap: 0,
          title: Text(
            title,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: kBlackColor,
            ),
          ),
          trailing: Text(
            '$trailingText',
            style: const TextStyle(
              color: kGreyColor,
            ),
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
