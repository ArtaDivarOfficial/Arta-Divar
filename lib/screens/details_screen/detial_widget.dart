import 'package:divar/constants/colors.dart';
import 'package:divar/translations/locale_keys.g.dart';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class DetailWidget extends StatelessWidget {
  const DetailWidget({
    Key? key,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            ConstrainedBox(
              constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width - 150),
              child: Text(
                subTitle,
                style:
                    // title.contains(LocaleKeys.category.tr())
                    //     ?
                    //     Theme.of(context).textTheme.titleMedium!.copyWith(
                    //           fontWeight: FontWeight.w900,
                    //         ),
                    // :
                    Theme.of(context).textTheme.titleMedium,
                textAlign: TextAlign.end,
              ),
            )
          ],
        ),
        Divider(
          height: 15,
          color: Colors.grey.shade500,
        ),
      ],
    );
  }
}
