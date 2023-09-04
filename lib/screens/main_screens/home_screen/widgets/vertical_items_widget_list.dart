import 'package:divar/constants/list.dart';
import 'package:divar/screens/main_screens/home_screen/widgets/items_widget.dart';
import 'package:divar/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class VerticalItemsWidgetList extends StatelessWidget {
  const VerticalItemsWidgetList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            LocaleKeys.app_name.tr(),
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          StaggeredGrid.count(
            crossAxisCount: 2,
            children: [
              ...List.generate(
                itemsList.length,
                (index) => ItemsWidget(
                  image: itemsList[index]['image'],
                  title: itemsList[index]['title'],
                  address: itemsList[index]['address'],
                  price: itemsList[index]['price'],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
