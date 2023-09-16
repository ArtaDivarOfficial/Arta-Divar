import 'package:carousel_slider/carousel_slider.dart';
import 'package:divar/constants/colors.dart';
import 'package:divar/constants/lists.dart';
import 'package:divar/screens/details_screen/description_widget.dart';
import 'package:divar/screens/details_screen/detial_widget.dart';
import 'package:divar/screens/home_screen/widgets/items_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  static const String id = '/details_screen';

  @override
  State<StatefulWidget> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'جزییات آگهی',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert_rounded),
            ),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              flex: 10,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Column(
                            children: [
                              Text(
                                'خانه گروی ۳ طبق',
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.location_on_sharp,
                                    size: 20,
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    'هرات، ۶۴ متره',
                                    style:
                                        Theme.of(context).textTheme.titleMedium,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        color: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: CarouselSlider(
                          options: CarouselOptions(
                            height: 180,
                            viewportFraction: 0.7,
                            enableInfiniteScroll: true,
                            initialPage: 0,
                            enlargeCenterPage: true,
                            enlargeFactor: 0.15,
                            scrollDirection: Axis.horizontal,
                            scrollPhysics: const BouncingScrollPhysics(),
                            onPageChanged: (index, reason) {},
                          ),
                          items: List.generate(advertisementBannerList.length,
                              (index) {
                            return ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                'assets/images/home.jpg',
                                fit: BoxFit.fitHeight,
                              ),
                            );
                          }),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Column(
                        children: [
                          Container(
                            color: Colors.white,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'ویژگی‌های آگهی',
                                  style: Theme.of(context).textTheme.titleLarge,
                                ),
                                const SizedBox(height: 10),
                                const DetailWidget(
                                  title: 'نوعیت',
                                  subTitle: 'دخترانه',
                                ),
                                const DetailWidget(
                                  title: 'جنس',
                                  subTitle: 'تکه یی',
                                ),
                                const DetailWidget(
                                  title: 'وضعیت',
                                  subTitle: 'نو',
                                ),
                                const DescriptionWidget(
                                  title: 'توضیحات',
                                  subTitle: 'توضیحات',
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Column(
                        children: [
                          Container(
                            color: Colors.white,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'فروشنده',
                                  style: Theme.of(context).textTheme.titleLarge,
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: SizedBox(
                                        width: 50,
                                        height: 50,
                                        child: CircleAvatar(
                                          backgroundColor: Colors.transparent,
                                          child: Image.asset(
                                              'assets/app_logo/app_logo.png'),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'آرتا دیوار',
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleMedium!
                                              .copyWith(
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                        Text(
                                          'هرات، چوک گلها',
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleSmall,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Divider(
                                  color: Colors.grey.shade500,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: kLightPrimaryColor,
                                        ),
                                        child: const Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 10),
                                          child: Text('پیام'),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: kLightPrimaryColor,
                                        ),
                                        child: const Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 10),
                                          child: Text('تماس'),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Column(
                        children: [
                          Container(
                            color: Colors.white,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'سایر آگهی های آرتا دیوار',
                                  style: Theme.of(context).textTheme.titleLarge,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 10),
                                  child: StaggeredGrid.count(
                                    crossAxisCount: 2,
                                    children: [
                                      ...List.generate(
                                        6,
                                        (index) => ItemsWidget(
                                          image: itemsList[index]['image'],
                                          title: itemsList[index]['title'],
                                          address: itemsList[index]['address'],
                                          price: itemsList[index]['price'],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Column(
                        children: [
                          Container(
                            color: Colors.white,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'سایر آگهی های مشابه',
                                  style: Theme.of(context).textTheme.titleLarge,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 10),
                                  child: StaggeredGrid.count(
                                    crossAxisCount: 2,
                                    children: [
                                      ...List.generate(
                                        6,
                                        (index) => ItemsWidget(
                                          image: itemsList[index]['image'],
                                          title: itemsList[index]['title'],
                                          address: itemsList[index]['address'],
                                          price: itemsList[index]['price'],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // Expanded(
            //   flex: 1,
            //   child: Padding(
            //     padding: const EdgeInsets.symmetric(horizontal: 10),
            //     child: Column(
            //       children: [
            //         Divider(
            //           color: Colors.grey.shade400,
            //         ),
            //         Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //           children: [
            //             Row(
            //               children: [
            // Container(
            //   margin:
            //       const EdgeInsets.symmetric(horizontal: 10),
            //   child: SizedBox(
            //     width: 50,
            //     height: 50,
            //     child: CircleAvatar(
            //       backgroundColor: Colors.transparent,
            //       child: Image.asset(
            //           'assets/app_logo/app_logo.png'),
            //     ),
            //   ),
            // ),
            //                 TextButton(
            //                   onPressed: () {},
            //                   child: Text(
            //                     'تماس',
            //                     style: Theme.of(context)
            //                         .textTheme
            //                         .titleMedium!
            //                         .copyWith(
            //                           fontWeight: FontWeight.bold,
            //                         ),
            //                   ),
            //                 ),
            //                 TextButton(
            //                   onPressed: () {},
            //                   child: Text(
            //                     'پیام',
            //                     style: Theme.of(context)
            //                         .textTheme
            //                         .titleMedium!
            //                         .copyWith(
            //                           fontWeight: FontWeight.bold,
            //                         ),
            //                   ),
            //                 ),
            //               ],
            //             ),
            //             Padding(
            //               padding: const EdgeInsets.symmetric(horizontal: 20),
            //               child: Text(
            //                 '۱۳۰۰۰۰ ؋',
            //                 style: Theme.of(context).textTheme.titleLarge,
            //               ),
            //             ),
            //           ],
            //         ),
            //       ],
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
