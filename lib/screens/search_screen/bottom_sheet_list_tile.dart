import 'package:divar/constants/colors.dart';
import 'package:divar/constants/lists.dart';
import 'package:divar/screens/categories_screen/popover.dart';
import 'package:flutter/material.dart';

class BottomSheetListTile extends StatefulWidget {
  const BottomSheetListTile({
    super.key,
  });

  @override
  State<BottomSheetListTile> createState() => _BottomSheetListTileState();
}

class _BottomSheetListTileState extends State<BottomSheetListTile> {
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
                  'فیلتر آگهی ها',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 10),
                ...List.generate(
                  categoriesFilterList.length,
                  (index) => RadioListTile<dynamic>(
                    title: Text(
                      categoriesFilterList[index],
                    ),
                    value: index,
                    groupValue: categorySelectedRadioButton,
                    activeColor: kLightPrimaryColor,
                    onChanged: (value) {
                      setState(() {
                        categorySelectedRadioButton = value;
                      });
                    },
                  ),
                ),
                Divider(
                  indent: 20,
                  endIndent: 20,
                  color: Colors.grey.shade500,
                ),
                ...List.generate(
                  subCategoriesFilterList.length,
                  (index) => RadioListTile<dynamic>(
                    title: Text(
                      subCategoriesFilterList[index],
                    ),
                    value: index,
                    groupValue: subCategorySelectedRadioButton,
                    activeColor: kLightPrimaryColor,
                    onChanged: (value) {
                      setState(() {
                        subCategorySelectedRadioButton = value;
                      });
                    },
                  ),
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
