// ignore_for_file: deprecated_member_use

import 'package:divar/screens/home_screen/widgets/advertisement_banner_widget.dart';
import 'package:divar/screens/home_screen/widgets/filter_and_searchbar_widgets.dart';
import 'package:divar/screens/home_screen/widgets/horizontal_categories_widgets.dart';
import 'package:divar/screens/home_screen/widgets/vertical_items_widget_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const String id = '/home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentSidebarIndex = 0;
  final GlobalKey<SideMenuState> _sideMenuKey = GlobalKey<SideMenuState>();

  @override
  Widget build(BuildContext context) {
    return SideMenu(
      key: _sideMenuKey,
      closeIcon: const Icon(
        Icons.close_rounded,
        color: Colors.black,
      ),
      menu: SideBarMenuWidget(
        currentSidebarIndex: currentSidebarIndex,
      ),
      type: SideMenuType.slideNRotate,
      inverse: true,
      background: Theme.of(context).scaffoldBackgroundColor,
      child: SafeArea(
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
      ),
    );
  }

  onTapDrawerItem(index) {
    setState(() {
      currentSidebarIndex = index;
    });
  }

  AppBar customAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0.25,
      leading: IconButton(
          onPressed: () {
            if (_sideMenuKey.currentState!.isOpened) {
              _sideMenuKey.currentState!.closeSideMenu();
            } else {
              _sideMenuKey.currentState!.openSideMenu();
            }
          },
          icon: const Icon(
            Icons.dehaze_rounded,
            color: Colors.black,
          )),
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
              backgroundColor: Colors.transparent,
              child: Image.asset('assets/app_logo/app_logo.png'),
            ),
          ),
        ),
      ],
    );
  }
}

class SideBarMenuWidget extends StatelessWidget {
  const SideBarMenuWidget({
    super.key,
    this.currentSidebarIndex = 0,
  });

  final int? currentSidebarIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 150,
          height: 150,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/app_logo/app_logo.png'),
            ),
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: SizedBox(
                          width: 50,
                          height: 50,
                          child: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            backgroundImage:
                                AssetImage('assets/app_logo/app_logo.png'),
                          ),
                        ),
                      ),
                      Text(
                        'امیر محسن زاهد',
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  DrawerListTileWidget(
                    title: 'خانه',
                    svgIcon: 'assets/icons/list_tile_icons/home.svg',
                    size: 23,
                    onListTilePressed: () {},
                  ),
                  const SizedBox(height: 5),
                  const SimpleListTileTitle(title: 'حساب کاربری'),
                  const SizedBox(height: 10),
                  Column(
                    children: [
                      DrawerListTileWidget(
                        title: 'ورود به حساب کاربری',
                        svgIcon: 'assets/icons/list_tile_icons/login.svg',
                        onListTilePressed: () {},
                      ),
                      DrawerListTileWidget(
                        title: 'حساب کاربری من',
                        svgIcon: 'assets/icons/list_tile_icons/person.svg',
                        onListTilePressed: () {},
                        size: 22,
                      ),
                      DrawerListTileWidget(
                        title: 'آگهی های من',
                        svgIcon:
                            'assets/icons/list_tile_icons/advertisement.svg',
                        onListTilePressed: () {},
                      ),
                      DrawerListTileWidget(
                        title: 'اعلانات کاریابی',
                        svgIcon: 'assets/icons/list_tile_icons/office_bag.svg',
                        onListTilePressed: () {},
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  const SimpleListTileTitle(title: 'عمومی'),
                  const SizedBox(height: 10),
                  DrawerListTileWidget(
                    title: 'زبان برنامه',
                    svgIcon: 'assets/icons/list_tile_icons/language2.svg',
                    onListTilePressed: () {},
                  ),
                  DrawerListTileWidget(
                    title: 'ظاهر برنامه',
                    svgIcon: 'assets/icons/list_tile_icons/theme.svg',
                    onListTilePressed: () {},
                  ),
                  const SizedBox(height: 5),
                  const SimpleListTileTitle(title: 'درباره'),
                  const SizedBox(height: 10),
                  DrawerListTileWidget(
                    title: 'درباره آرتا دیوار',
                    svgIcon: 'assets/icons/list_tile_icons/about.svg',
                    onListTilePressed: () {},
                  ),
                  DrawerListTileWidget(
                    title: 'نظریات شما',
                    svgIcon: 'assets/icons/list_tile_icons/your_ideas.svg',
                    size: 22,
                    onListTilePressed: () {},
                  ),
                  DrawerListTileWidget(
                    title: 'رتبه دهی برنامه',
                    svgIcon: 'assets/icons/list_tile_icons/rate.svg',
                    size: 23,
                    onListTilePressed: () {},
                  ),
                  DrawerListTileWidget(
                    title: 'شریک ساختن برنامه',
                    svgIcon: 'assets/icons/list_tile_icons/share2.svg',
                    onListTilePressed: () {},
                  ),
                  DrawerListTileWidget(
                    title: 'خروج از حساب',
                    svgIcon: 'assets/icons/list_tile_icons/logout.svg',
                    onListTilePressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class SimpleListTileTitle extends StatelessWidget {
  const SimpleListTileTitle({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleLarge!.copyWith(
              fontSize:
                  Theme.of(context).textTheme.titleLarge!.fontSize!.toInt() - 2,
            ),
      ),
    );
  }
}

class DrawerListTileWidget extends StatelessWidget {
  const DrawerListTileWidget({
    super.key,
    this.currentSidebarIndex = 0,
    this.index = 0,
    required this.title,
    required this.svgIcon,
    this.size,
    required this.onListTilePressed,
  });

  final int? currentSidebarIndex;
  final int? index;
  final String title;
  final String svgIcon;
  final double? size;
  final Function() onListTilePressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              index == currentSidebarIndex
                  ? Container(
                      width: 2,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    )
                  : const SizedBox(),
              SizedBox(
                width: index == currentSidebarIndex ? 15 : 13,
              ),
              SvgPicture.asset(
                svgIcon,
                height: size ?? 24,
                color: Colors.black,
              ),
              const SizedBox(width: 10),
              Text(
                title,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          ),
        ),
        const Divider(),
      ],
    );
  }
}
