import 'package:flutter/material.dart';

class SubmitAdGuideListTileWidget extends StatelessWidget {
  const SubmitAdGuideListTileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListTile(
        onTap: () {},
        horizontalTitleGap: 0,
        leading: const Icon(Icons.info_outlined),
        title: Text(
          'راهنمایی ثبت آگهی',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        trailing: const Icon(
          Icons.arrow_back_ios_new_rounded,
          size: 20,
        ),
      ),
    );
  }
}
