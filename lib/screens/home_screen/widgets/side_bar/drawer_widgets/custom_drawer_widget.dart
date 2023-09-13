import 'package:divar/constants/lists.dart';
import 'package:divar/screens/home_screen/widgets/side_bar/drawer_widgets/drawer_category_items_list_widget.dart';
import 'package:flutter/material.dart';

class CustomDrawerWidget extends StatelessWidget {
  const CustomDrawerWidget({
    super.key,
    required this.onTap,
    required this.currentDrawerIndex,
  });

  final Function(int) onTap;
  final int currentDrawerIndex;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Text(
                'آرتا دیوار',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            DrawerCategoryItemsListWidget(
              onTap: onTap,
              currentDrawerIndex: currentDrawerIndex,
              flagIndex: 1,
              title: 'Dashboard',
              itemsList: dashboardDrawerItemsList,
            ),
            DrawerCategoryItemsListWidget(
              onTap: onTap,
              currentDrawerIndex: currentDrawerIndex,
              flagIndex: 2,
              title: 'Communication',
              itemsList: communicationDrawerItemsList,
            ),
            DrawerCategoryItemsListWidget(
              onTap: onTap,
              currentDrawerIndex: currentDrawerIndex,
              flagIndex: 3,
              title: 'App',
              itemsList: appDrawerItemsList,
            ),
          ],
        ),
      ),
    );
  }
}
