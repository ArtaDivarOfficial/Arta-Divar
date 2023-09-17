import 'package:divar/screens/categories_screen/bottom_sheet_list_tile.dart';
import 'package:divar/screens/categories_screen/filter_tabbar.dart';
import 'package:divar/screens/home_screen/widgets/vertical_items_widget_list.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  static const String id = '/categories_screen';

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'آگهی های املاک',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
          ],
        ),
        body: Column(
          children: [
            const SizedBox(height: 5),
            FilterTabbar(
              filterText: 'مسکونی / کرایی',
              onFilterPressed: () {
                showModalBottomSheet(
                    context: context,
                    enableDrag: true,
                    isScrollControlled: true,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    builder: (BuildContext context) {
                      return const BottomSheetListTile();
                    });
              },
            ),
            const SizedBox(height: 5),
            const Expanded(
              child: SingleChildScrollView(
                child: VerticalItemsWidgetList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
