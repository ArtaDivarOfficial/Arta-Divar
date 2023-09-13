import 'package:divar/constants/colors.dart';
import 'package:flutter/material.dart';

class SubmitAdGuideListTileWidget extends StatelessWidget {
  // لیست تایل برای راهنمای ثبت آگهی
  // لیست تایل برای راهنمای ثبت آگهی
  const SubmitAdGuideListTileWidget({
    super.key,
    required this.title,
    this.size,
    required this.onListTilePressed,
    this.icon,
    this.trailingWidget,
  });
  final String title;
  final IconData? icon;
  final double? size;
  final VoidCallback onListTilePressed;
  final Widget? trailingWidget;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: onListTilePressed,
          contentPadding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          horizontalTitleGap: 0,
          leading: Icon(icon),
          title: Text(
            title,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: kBlackColor,
            ),
          ),
          trailing: trailingWidget,
        ),
      ],
    );
  }
}
