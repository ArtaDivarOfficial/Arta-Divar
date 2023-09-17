import 'package:divar/constants/list.dart';
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
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          Column(
            children: [
              const SizedBox(height: 10),
              Text(
                'فیلتر اجناس',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              ...List.generate(
                categoriesFilterList.length,
                (index) => RadioListTile<dynamic>(
                  title: Text(
                    categoriesFilterList[index],
                  ),
                  value: index,
                  groupValue: categorySelectedRadioButton,
                  onChanged: (value) {
                    setState(() {
                      categorySelectedRadioButton = value;
                    });
                  },
                ),
              ),
              const Divider(),
              ...List.generate(
                categoriesFilterList.length,
                (index) => RadioListTile<dynamic>(
                  title: Text(
                    subCategoriesFilterList[index],
                  ),
                  value: index,
                  groupValue: subCategorySelectedRadioButton,
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
    );
  }
}
