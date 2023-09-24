import 'package:divar/constants/colors.dart';
import 'package:flutter/material.dart';

class BottomSheetModelTextButtonWidget extends StatelessWidget {
  const BottomSheetModelTextButtonWidget({
    super.key,
    required this.onPressed,
    required this.text,
    required this.selectedIndex,
    required this.index,
  });

  final Function() onPressed;
  final String text;
  final int selectedIndex;
  final int index;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: selectedIndex == index
                    ? kLightPrimaryColor
                    : Theme.of(context).textTheme.titleMedium!.color,
                fontWeight: selectedIndex == index
                    ? FontWeight.bold
                    : Theme.of(context).textTheme.titleMedium!.fontWeight,
              ),
        ),
      ),
    );
  }
}
