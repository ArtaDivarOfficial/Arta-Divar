import 'package:divar/constants/list.dart';
import 'package:divar/screens/main_screens/home_screen/widgets/category_box_widget.dart';
import 'package:flutter/material.dart';

class HorizontalCategoriesWidgets extends StatelessWidget {
  const HorizontalCategoriesWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'دسته بندی ها',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 10),
          Wrap(
            runSpacing: 15,
            spacing: 13,
            children: [
              ...List.generate(
                categoriesSvgList.length,
                (index) => CategoryBoxWidget(
                  index: index,
                  icon: categoriesSvgList[index]['icon'],
                  iconTitle: categoriesSvgList[index]['category_title'],
                ),
              ),
            ],
          ),
          // Column(
          //   children: [
          //     Row(
          //
          //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       children: [
          //         ...List.generate(
          //           5,
          //           (index) => CategoryBoxWidget(),
          //         ),
          //       ],
          //     ),
          //     const SizedBox(height: 25),
          //     Row(
          //
          //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       children: [
          //         ...List.generate(
          //           5,
          //           (index) => CategoryBoxWidget(),
          //         ),
          //       ],
          //     ),
          //   ],
          // )
        ],
      ),
    );
  }
}
