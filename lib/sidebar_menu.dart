import 'package:divar/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SidebarMenu extends StatefulWidget {
  const SidebarMenu({super.key});

  @override
  State<SidebarMenu> createState() => _SidebarMenuState();
}

class _SidebarMenuState extends State<SidebarMenu> {
  bool isSignedIn = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.centerRight,
        child: SizedBox(
          width: 295,
          height: MediaQuery.of(context).size.height,
          // color: const Color.fromARGB(255, 14, 103, 166),
          child: SafeArea(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 60),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Row(
                      children: [
                        Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            image: const DecorationImage(
                              image: AssetImage('assets/images/me.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        ConstrainedBox(
                          constraints: const BoxConstraints(maxWidth: 145),
                          child: const Text(
                            'امیر محسن زاهد',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: kBlackColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        const Spacer(),
                        Container(
                          width: 60,
                          height: 60,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/logo.png'),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  DrawerListTileWidget(
                    title: 'خانه',
                    svgIcon: 'assets/icons/list_tile_icons/home.svg',
                    size: 23,
                    onListTilePressed: () {},
                  ),
                  const SizedBox(height: 23),
                  const SimpleListTileTitle(title: 'حساب کاربری'),
                  !isSignedIn
                      ? DrawerListTileWidget(
                          title: 'ورود به حساب کاربری',
                          svgIcon: 'assets/icons/list_tile_icons/login.svg',
                          onListTilePressed: () {
                            setState(() {
                              isSignedIn = true;
                            });
                          },
                        )
                      : Column(
                          children: [
                            DrawerListTileWidget(
                              title: 'حساب کاربری من',
                              svgIcon:
                                  'assets/icons/list_tile_icons/person.svg',
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
                              svgIcon:
                                  'assets/icons/list_tile_icons/office_bag.svg',
                              onListTilePressed: () {},
                            ),
                          ],
                        ),
                  const SizedBox(height: 23),
                  const SimpleListTileTitle(title: 'عمومی'),
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
                  const SizedBox(height: 23),
                  const SimpleListTileTitle(title: 'درباره'),
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
                    onListTilePressed: () {
                      setState(() {
                        isSignedIn = false;
                      });
                    },
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
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
      padding: const EdgeInsets.fromLTRB(0, 0, 30, 0),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          color: kBlackColor,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

class DrawerListTileWidget extends StatelessWidget {
  const DrawerListTileWidget({
    super.key,
    required this.title,
    required this.svgIcon,
    this.size,
    required this.onListTilePressed,
  });
  final String title;
  final String svgIcon;
  final double? size;
  final VoidCallback onListTilePressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: onListTilePressed,
          contentPadding: const EdgeInsets.fromLTRB(0, 0, 30, 0),
          horizontalTitleGap: 0,
          leading: SvgPicture.asset(
            '$svgIcon',
            color: kBlackColor,
            height: size ?? 24,
          ),
          title: Text(
            title,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: kBlackColor,
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 1,
          margin: const EdgeInsets.only(right: 10),
          color: kGreyColor.withOpacity(0.3),
        ),
      ],
    );
  }
}
