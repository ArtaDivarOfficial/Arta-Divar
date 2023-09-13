import 'package:divar/constants/colors.dart';
import 'package:divar/constants/list.dart';
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
      width: 70,
      height: 65,
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
          SvgPicture.asset(
            icon,
            height: categoriesSvgList[index!]['height'],
            color: kBlackColor,
          ),
          const SizedBox(height: 2),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 40),
            child: Text(
              '$iconTitle',
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
