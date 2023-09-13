// ignore_for_file: deprecated_member_use

import 'package:divar/constants/lists.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryBoxWidget extends StatelessWidget {
  const CategoryBoxWidget({
    super.key,
    this.index,
    required this.categoryLineIndex,
    required this.icon,
    required this.iconTitle,
  });
  final int? index;
  final int categoryLineIndex;
  final String icon;
  final String iconTitle;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 70,
        margin: const EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 1),
              blurRadius: 2,
              color: Colors.black.withOpacity(0.125),
            )
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              icon,
              height: categoryLineIndex == 1
                  ? categoriesSvgListPart1[index!]['height']
                  : categoriesSvgListPart2[index!]['height'],
              color: Colors.black,
            ),
            const SizedBox(height: 2),
            Text(
              iconTitle,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ],
        ),
      ),
    );
  }
}
