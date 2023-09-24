import 'package:carousel_slider/carousel_slider.dart';
import 'package:divar/constants/colors.dart';
import 'package:divar/constants/lists.dart';
import 'package:divar/constants/variables.dart';
import 'package:divar/heplers/functions/helper_functions.dart';
import 'package:divar/repositories/items_respositories/bags_respository/models/bag_model.dart';
import 'package:divar/screens/details_screen/widgets/description_widget.dart';
import 'package:divar/screens/details_screen/widgets/detial_widget.dart';
import 'package:divar/screens/home_screen/widgets/items_row_widget.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  static const String id = '/details_screen';

  @override
  State<StatefulWidget> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  late BagModel itemModel;

  @override
  void initState() {
    super.initState();
    itemModel = Variables.itemModel as BagModel;
  }

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
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 5),
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Column(
                    children: [
                      Text(
                        itemModel.itemTitle!,
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
                            '${provincesList[itemModel.itemProvince!]}، ${itemModel.itemRegion}',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Container(
                color: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: itemModel.itemImages!.isEmpty
                    ? Container(
                        height: 225,
                        width: double.infinity,
                        color: Colors.white,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            'assets/app_logo/black_&_white_app_logo.png',
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      )
                    : CarouselSlider(
                        options: CarouselOptions(
                          height: 225,
                          viewportFraction: 0.9,
                          enableInfiniteScroll: true,
                          initialPage: 0,
                          enlargeCenterPage: true,
                          enlargeFactor: 0.5,
                          scrollDirection: Axis.horizontal,
                          scrollPhysics: const BouncingScrollPhysics(),
                          onPageChanged: (index, reason) {},
                        ),
                        items: List.generate(itemModel.itemImages!.length,
                            (index) {
                          return ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              itemModel.itemImages![index],
                              fit: BoxFit.fitHeight,
                            ),
                          );
                        }),
                      ),
              ),
              const SizedBox(height: 5),
              Container(
                width: double.infinity,
                color: Colors.white,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'قیمت آگهی',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Row(
                      children: [
                        Text(
                          '${itemModel.itemTotalPrice} ${itemModel.itemPriceType == 0 ? '؋' : '\$'}',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        const SizedBox(width: 10),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          decoration: BoxDecoration(
                            color: Colors.redAccent.shade400,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            '${itemModel.itemSalePriceType == 3 ? '${itemModel.itemDiscountAmount} ؋ تخفیف' : priceSaleTypesList[itemModel.itemSalePriceType!]}',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
              const SizedBox(height: 5),
              Column(
                children: [
                  Container(
                    color: Colors.white,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'ویژگی‌های آگهی',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        const SizedBox(height: 10),
                        DetailWidget(
                          title: 'دسته بندی',
                          subTitle: HelperFunctions.getCategoryNameById(
                              itemModel.itemCategoryId!),
                        ),
                        DetailWidget(
                          title: 'نوع آگهی',
                          subTitle: '${itemModel.itemSubCategoryId}',
                        ),
                        DetailWidget(
                          title: 'جنس',
                          subTitle: '${itemModel.itemMaterial}',
                        ),
                        DetailWidget(
                          title: 'وضعیت',
                          subTitle: '${statusTypesList[itemModel.itemStatus!]}',
                        ),
                        DescriptionWidget(
                          title: 'توضیحات',
                          subTitle: itemModel.itemDescription!,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Column(
                children: [
                  Container(
                    color: Colors.white,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
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
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 10),
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
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                  style: Theme.of(context).textTheme.titleSmall,
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
                                  padding: EdgeInsets.symmetric(vertical: 10),
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
                                  padding: EdgeInsets.symmetric(vertical: 10),
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
              const SizedBox(height: 5),
              Container(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 5,
                        left: 10,
                        right: 20,
                      ),
                      child: Text(
                        'سایر آگهی های آرتا دیوار',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 7.5,
                        bottom: 10,
                      ),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(
                            itemsList.length,
                            (index) => ItemsRowWidget(
                              index: index,
                              image: itemsList[index]['image'],
                              title: itemsList[index]['title'],
                              address: itemsList[index]['address'],
                              price: itemsList[index]['price'],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 5),
              Container(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 5,
                        left: 10,
                        right: 20,
                      ),
                      child: Text(
                        'سایر آگهی های مشابه',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 7.5, bottom: 10),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(
                            itemsList.length,
                            (index) => ItemsRowWidget(
                              index: index,
                              image: itemsList[index]['image'],
                              title: itemsList[index]['title'],
                              address: itemsList[index]['address'],
                              price: itemsList[index]['price'],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
