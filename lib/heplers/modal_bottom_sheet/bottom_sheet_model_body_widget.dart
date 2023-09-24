import 'package:divar/heplers/modal_bottom_sheet/bottom_sheet_model_text_button_widget.dart';
import 'package:divar/heplers/modal_bottom_sheet/bottom_sheet_model_title_widget.dart';
import 'package:divar/screens/categories_screen/popover.dart';
import 'package:flutter/material.dart';

class BottomSheetModelBodyWidget extends StatelessWidget {
  const BottomSheetModelBodyWidget({
    super.key,
    required this.title,
    required this.selectableItemsList,
    required this.onPressed,
    required this.selectedIndex,
  });

  final String title;
  final List selectableItemsList;
  final Function(int) onPressed;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Popover(
      child: Column(
        children: [
          BottomSheetModelTitleWidget(title: title),
          Column(
            children: List.generate(
              selectableItemsList.length,
              (index) {
                return BottomSheetModelTextButtonWidget(
                  onPressed: () {
                    onPressed(index);
                  },
                  text: '${selectableItemsList[index]}',
                  selectedIndex: selectedIndex,
                  index: index,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
