import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:divar/heplers/modal_bottom_sheet/bottom_sheet_model_body_widget.dart';
import 'package:divar/screens/home_screen/widgets/bottom_sheet_categories.dart';
import 'package:flutter/material.dart';

showCustomModalBottomSheet(
    {required BuildContext context, required Widget child}) {
  FocusScope.of(context).requestFocus(FocusNode());
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
    ), //
    useSafeArea: true,
    builder: (context) {
      return SingleChildScrollView(
        child: child,
      );
    },
  );
}

showCategoriesModalBottomSheet({required BuildContext context}) {
  showCustomModalBottomSheet(
      context: context, child: const BottomSheetCategories());
}

showSelectableModalBottomSheet(
    {required BuildContext context,
    required String title,
    required List selectableItemsList,
    required Function(String, int) onPressedButton,
    required int selectedIndex}) {
  showCustomModalBottomSheet(
    context: context,
    child: BottomSheetModelBodyWidget(
      title: title,
      selectableItemsList: selectableItemsList,
      onPressed: (index) {
        onPressedButton('${selectableItemsList[index]}', index);
        Navigator.pop(context);
      },
      selectedIndex: selectedIndex,
    ),
  );
}
