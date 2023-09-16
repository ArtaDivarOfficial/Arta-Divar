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
          trailing: Text(
            '$trailingText',
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(color: Colors.grey.shade600),
          ),
        ),
      ],
    );
  }
}
