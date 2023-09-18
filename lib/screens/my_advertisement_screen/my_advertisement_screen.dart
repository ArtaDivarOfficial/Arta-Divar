import 'package:divar/constants/colors.dart';
import 'package:divar/constants/lists.dart';
import 'package:divar/screens/my_advertisement_screen/widgets/my_ad_card_widget.dart';
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
          title: Text(
            'آگهی های من',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          bottom: TabBar(
            unselectedLabelStyle: Theme.of(context).textTheme.titleMedium,
            labelStyle: Theme.of(context).textTheme.titleMedium,
            labelColor: Theme.of(context).textTheme.titleMedium!.color,
            unselectedLabelColor: Colors.grey.shade500,
            indicatorPadding: const EdgeInsets.symmetric(horizontal: 20),
            indicatorColor: kLightSecondaryColor,
            tabs: const [
              Tab(
                child: Text(
                  'منتشر شده',
                ),
              ),
              Tab(
                child: Text(
                  'لست انتظار',
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
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
                      onDismissed: (direction) {
                        setState(() {
                          itemsList.remove(itemsList[index]);
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
            SingleChildScrollView(
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
                      onDismissed: (direction) {
                        setState(() {
                          itemsList.remove(itemsList[index]);
                        });
                      },
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
