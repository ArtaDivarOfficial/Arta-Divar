import 'package:divar/constants/lists.dart';
import 'package:divar/screens/home_screen/widgets/items_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class VerticalItemsWidgetList extends StatelessWidget {
  const VerticalItemsWidgetList({
    super.key,
    this.showTitle = false,
  });

  final bool showTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          showTitle
              ? Text(
                  'آگهی های آرتا دیوار',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontSize: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .fontSize!
                                .toInt() -
                            2,
                      ),
                )
              : const SizedBox(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            child: StaggeredGrid.count(
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
            ),
          )
        ],
      ),
    );
  }
}
