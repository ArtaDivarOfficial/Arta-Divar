import 'package:divar/constants/colors.dart';
import 'package:flutter/material.dart';

class FilterAndSearchBarWidgets extends StatelessWidget {
  const FilterAndSearchBarWidgets({
    super.key,
    required this.onFilterTap,
    required this.onSearchIconTap,
  });
  final VoidCallback onFilterTap;
  final VoidCallback onSearchIconTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Expanded(
            flex: 9,
            child: SizedBox(
              height: 35,
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: const OutlineInputBorder(),
                  focusedBorder: const OutlineInputBorder(),
                  disabledBorder: const OutlineInputBorder(),
                  hintText: 'اپل واچ سریز ۸',
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: kGreyColor.withOpacity(0.5),
                    fontSize: 13,
                  ),
                  suffixIcon: GestureDetector(
                    onTap: onSearchIconTap,
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(8, 8, 20, 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        border: Border.all(width: 1),
                      ),
                      child: const Icon(
                        Icons.search,
                        size: 12,
                        color: kBlackColor,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 13),
          Expanded(
            child: Container(
              width: 10,
              height: 35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: kBlackColor),
              ),
              child: GestureDetector(
                onTap: () {},
                child: const Icon(
                  Icons.filter_list_rounded,
                  color: kBlackColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
