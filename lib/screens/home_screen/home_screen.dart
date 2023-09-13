import 'package:divar/screens/home_screen/widgets/advertisement_banner_widget.dart';
import 'package:divar/screens/home_screen/widgets/filter_and_searchbar_widgets.dart';
import 'package:divar/screens/home_screen/widgets/horizontal_categories_widgets.dart';
import 'package:divar/screens/home_screen/widgets/vertical_items_widget_list.dart';
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
    return SafeArea(
      child: Scaffold(
        appBar: customAppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              FilterAndSearchBarWidgets(
                onFilterTap: () {},
                onSearchIconTap: () {},
              ),
              const AdvertisementBannerWidget(),
              const SizedBox(height: 10),
              const HorizontalCategoriesWidgets(),
              const SizedBox(height: 15),
              const VerticalItemsWidgetList(),
            ],
          ),
        ),
      ),
    );
  }

  AppBar customAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0.25,
      title: SizedBox(
        width: 50,
        height: 50,
        child: Image.asset('assets/app_logo/app_logo.png'),
      ),
      centerTitle: true,
      actions: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: SizedBox(
            width: 50,
            height: 50,
            child: CircleAvatar(
              child: Image.asset('assets/app_logo/app_logo.png'),
            ),
          ),
        ),
      ],
    );
  }
}
