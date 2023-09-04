import 'package:divar/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryBoxWidget extends StatelessWidget {
  const CategoryBoxWidget({
    super.key,
    this.index,
    required this.icon,
    required this.iconTitle,
  });
  final int? index;
  final String icon;
  final String iconTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 62,
      height: 55,
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 1),
            blurRadius: 5,
            color: kBlackColor.withOpacity(0.15),
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(),
              ),
            ),
          ),
          Expanded(
            child: Container(),
          ),
          // SvgPicture.asset(
          //   icon,
          //   fit: BoxFit.cover,
          //   height: 20,
          //   color: kBlackColor,
          // ),
          // ConstrainedBox(
          //   constraints: const BoxConstraints(maxWidth: 40),
          //   child: Text(
          //     '$iconTitle',
          //     overflow: TextOverflow.ellipsis,
          //     style: const TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
          //   ),
          // ),
        ],
      ),
    );
  }
}
