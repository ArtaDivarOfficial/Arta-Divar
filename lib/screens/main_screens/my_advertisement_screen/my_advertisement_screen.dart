import 'package:divar/constants/colors.dart';
import 'package:divar/constants/list.dart';
import 'package:divar/screens/main_screens/my_advertisement_screen/widgets/my_ad_card_widget.dart';
import 'package:flutter/material.dart';

class MyAdvertisementScreen extends StatefulWidget {
  const MyAdvertisementScreen({super.key});
  static const String id = '/my_advertisement_screen';

  @override
  State<MyAdvertisementScreen> createState() => _MyAdvertisementScreenState();
}

class _MyAdvertisementScreenState extends State<MyAdvertisementScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 1,
          backgroundColor: kWhiteColor,
          title: const Text('آگهی های من'),
          bottom: const TabBar(
            unselectedLabelColor: kGreyColor,
            labelColor: kLightSecondaryColor,
            indicatorColor: kLightSecondaryColor,
            tabs: [
              Tab(
                child: Text(
                  'فروخته شده',
                ),
              ),
              Tab(
                child: Text(
                  'لیست انتظار',
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          physics: const BouncingScrollPhysics(),
          children: [
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  ...List.generate(
                    itemsList.length,
                    (index) => MyAdCardWidget(
                      index: index,
                      image: itemsList[index]['image'],
                      title: itemsList[index]['title'],
                      address: itemsList[index]['address'],
                      price: itemsList[index]['price'],
                    ),
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  ...List.generate(
                    itemsList.length,
                    (index) => MyAdCardWidget(
                      index: index,
                      image: itemsList[index]['image'],
                      title: itemsList[index]['title'],
                      address: itemsList[index]['address'],
                      price: itemsList[index]['price'],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
