import 'package:divar/screens/main_screens/home_screen/widgets/advertisement_banner_widget.dart';
import 'package:divar/screens/main_screens/home_screen/widgets/appbar_widget.dart';
import 'package:divar/screens/main_screens/home_screen/widgets/filter_and_searchbar_widgets.dart';
import 'package:divar/screens/main_screens/home_screen/widgets/horizontal_categories_widgets.dart';
import 'package:divar/screens/main_screens/home_screen/widgets/vertical_items_widget_list.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const String id = '/home_screen';
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const AppBarWidget(),
              const SizedBox(height: 10),
              FilterAndSearchBarWidgets(
                onFilterTap: () {},
                onSearchIconTap: () {},
              ),
              const SizedBox(height: 25),
              const AdvertisementBannerWidget(),
              const SizedBox(height: 20),
              const HorizontalCategoriesWidgets(),
              const SizedBox(height: 20),
              const VerticalItemsWidgetList(),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
