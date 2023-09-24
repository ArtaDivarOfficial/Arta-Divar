import 'dart:io';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:divar/constants/lists.dart';
import 'package:divar/constants/variables.dart';
import 'package:divar/heplers/functions/helper_functions.dart';
import 'package:divar/repositories/items_respositories/bags_respository/cubit/bag_cubit.dart';
import 'package:divar/repositories/items_respositories/bags_respository/models/bag_model.dart';
import 'package:divar/screens/add_screen/widgets/continue_text_button_widget.dart';
import 'package:divar/screens/details_screen/widgets/description_widget.dart';
import 'package:divar/screens/details_screen/widgets/detial_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddDetailsScreen extends StatefulWidget {
  const AddDetailsScreen({super.key});

  static const String id = '/add_details_screen';

  @override
  State<StatefulWidget> createState() => _AddDetailsScreenState();
}

class _AddDetailsScreenState extends State<AddDetailsScreen> {
  late BagModel bagModel;

  @override
  void initState() {
    super.initState();
    bagModel = Variables.itemModel as BagModel;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BagCubit, BagState>(
      builder: (context, state) {
        if (state is BagAdding) {
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else if (state is BagAdded) {
          return const SizedBox();
        } else if (state is BagError) {
          return Scaffold(
            body: Center(
              child: Text(state.message),
            ),
          );
        } else {
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
                              bagModel.itemTitle!,
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
                                  '${provincesList[bagModel.itemProvince!]}، ${bagModel.itemRegion}',
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
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
                      child: bagModel.itemImages!.isEmpty
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
                              items: List.generate(bagModel.itemImages!.length,
                                  (index) {
                                return ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.file(
                                    File(bagModel.itemImages![index]),
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
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 5),
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
                                '${bagModel.itemTotalPrice} ${bagModel.itemPriceType == 0 ? '؋' : '\$'}',
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                              const SizedBox(width: 10),
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 6),
                                decoration: BoxDecoration(
                                  color: Colors.redAccent.shade400,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  '${bagModel.itemSalePriceType == 3 ? '${bagModel.itemDiscountAmount} ؋ تخفیف' : priceSaleTypesList[bagModel.itemSalePriceType!]}',
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
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 5),
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
                                    bagModel.itemCategoryId!),
                              ),
                              DetailWidget(
                                title: 'نوع آگهی',
                                subTitle: '${bagModel.itemSubCategoryId}',
                              ),
                              DetailWidget(
                                title: 'جنس',
                                subTitle: '${bagModel.itemMaterial}',
                              ),
                              DetailWidget(
                                title: 'وضعیت',
                                subTitle:
                                    '${statusTypesList[bagModel.itemStatus!]}',
                              ),
                              DescriptionWidget(
                                title: 'توضیحات',
                                subTitle: bagModel.itemDescription!,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    BottomPageTextButtonWidget(
                      text: 'ثبت آگهی',
                      onPressed: () {
                        context.read<BagCubit>().emitAddBag();
                      },
                    ),
                  ],
                ),
              ),
            ),
          );
        }
      },
    );
  }
}
