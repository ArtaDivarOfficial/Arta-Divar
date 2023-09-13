import 'package:divar/constants/lists.dart';
import 'package:divar/screens/home_screen/widgets/category_box_widget.dart';
import 'package:flutter/material.dart';

class HorizontalCategoriesWidgets extends StatelessWidget {
  const HorizontalCategoriesWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'دسته بندی ها',
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                fontSize:
                    Theme.of(context).textTheme.titleLarge!.fontSize!.toInt() -
                        2,
              ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                4,
                (index) {
                  return CategoryBoxWidget(
                    index: index,
                    categoryLineIndex: 1,
                    icon: categoriesSvgListPart1[index]['icon'],
                    iconTitle: categoriesSvgListPart1[index]['category_title'],
                  );
                },
              ),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                4,
                (index) {
                  return CategoryBoxWidget(
                    index: index,
                    categoryLineIndex: 2,
                    icon: categoriesSvgListPart2[index]['icon'],
                    iconTitle: categoriesSvgListPart2[index]['category_title'],
                  );
                },
              ),
            ),
          ]),
        ),
      ],
    );
  }
}
