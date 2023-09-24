import 'package:flutter/material.dart';

class BottomSheetModelTitleWidget extends StatelessWidget {
  const BottomSheetModelTitleWidget({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return title.isNotEmpty
        ? Column(
            children: [
              Text(
                title,
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
            ],
          )
        : const SizedBox();
  }
}
