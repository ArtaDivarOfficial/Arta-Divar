import 'package:divar/constants/colors.dart';
import 'package:flutter/material.dart';

class FilterTabbar extends StatelessWidget {
  const FilterTabbar({
    super.key,
    required this.filterText,
    required this.onFilterPressed,
  });
  final String filterText;
  final VoidCallback onFilterPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 35,
      decoration: BoxDecoration(
        color: kGreyColor.withOpacity(0.15),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text.rich(
              TextSpan(
                text: 'فیلتر: ',
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
                children: [
                  TextSpan(
                    text: '$filterText',
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
              style: const TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            IconButton(
              onPressed: onFilterPressed,
              icon: const Icon(Icons.filter_alt_rounded),
              iconSize: 20,
              splashRadius: 1,
            ),
          ],
        ),
      ),
    );
  }
}
