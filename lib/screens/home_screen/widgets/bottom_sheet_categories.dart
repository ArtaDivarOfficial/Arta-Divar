import 'package:divar/constants/lists.dart';
import 'package:divar/screens/categories_screen/popover.dart';
import 'package:divar/screens/home_screen/widgets/category_box_widget.dart';
import 'package:flutter/material.dart';

class BottomSheetCategories extends StatefulWidget {
  const BottomSheetCategories({
    super.key,
  });

  @override
  State<BottomSheetCategories> createState() => _BottomSheetCategoriesState();
}

class _BottomSheetCategoriesState extends State<BottomSheetCategories> {
  int categorySelectedRadioButton = 0;
  int subCategorySelectedRadioButton = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Popover(
        child: Column(
          children: [
            Column(
              children: [
                Text(
                  'دسته بندی ها',
                  style: Theme.of(context).textTheme.titleLarge,
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
                            iconTitle: categoriesSvgListPart1[index]
                                ['category_title'],
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                        4,
                        (index) {
                          return CategoryBoxWidget(
                            index: index,
                            categoryLineIndex: 2,
                            icon: categoriesSvgListPart2[index]['icon'],
                            iconTitle: categoriesSvgListPart2[index]
                                ['category_title'],
                          );
                        },
                      ),
                    ),
                  ]),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
