import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({
    super.key,
    required this.title,
    required this.onListTilePressed,
    this.trailingText,
  });
  final String title;
  final Function() onListTilePressed;
  final String? trailingText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: onListTilePressed,
          horizontalTitleGap: 0,
          title: Text(
            title,
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          trailing: SizedBox(
            width: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  '$trailingText ',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: Colors.grey.shade800),
                ),
                const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.black,
                  size: 20,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
