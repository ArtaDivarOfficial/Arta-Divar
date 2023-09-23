import 'package:divar/constants/colors.dart';
import 'package:divar/constants/list.dart';
import 'package:divar/screens/main_screens/categories_screen/bottom_sheet_list_tile.dart';
import 'package:divar/screens/main_screens/my_advertisement_screen/widgets/my_ad_card_widget.dart';
import 'package:flutter/material.dart';

class MyAdvertisementScreen extends StatefulWidget {
  const MyAdvertisementScreen({super.key});
  static const String id = '/my_advertisement_screen';

  @override
  State<MyAdvertisementScreen> createState() => _MyAdvertisementScreenState();
}

class _MyAdvertisementScreenState extends State<MyAdvertisementScreen> {
  List<Map<String, dynamic>> removedItemsList = [];
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
                    (index) {
                      return Dismissible(
                        key: UniqueKey(),
                        direction: DismissDirection.startToEnd,
                        onDismissed: (direction) {
                          print(itemsList.length);
                          removedItemsList.add(itemsList[index]);
                          showConfirmationDialog(index: index);
                        },
                        background: Container(
                          color: kRedColor.withOpacity(0.3),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Icon(
                                  Icons.delete,
                                  size: 50,
                                  color: kRedColor,
                                ),
                              ],
                            ),
                          ),
                        ),
                        child: MyAdCardWidget(
                          index: index,
                          image: itemsList[index]['image'],
                          title: itemsList[index]['title'],
                          address: itemsList[index]['address'],
                          price: itemsList[index]['price'],
                        ),
                      );
                    },
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
                    (index) => Dismissible(
                      key: UniqueKey(),
                      direction: DismissDirection.startToEnd,
                      onDismissed: (direction) {
                        showConfirmationDialog(index: index);
                        setState(() {
                          removedItemsList
                              .add(itemsList[index]); // Store removed item
                          itemsList.removeAt(index);
                        });
                      },
                      background: Container(
                        color: kRedColor.withOpacity(0.3),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Icon(
                                Icons.delete,
                                size: 50,
                                color: kRedColor,
                              ),
                            ],
                          ),
                        ),
                      ),
                      child: MyAdCardWidget(
                        index: index,
                        image: itemsList[index]['image'],
                        title: itemsList[index]['title'],
                        address: itemsList[index]['address'],
                        price: itemsList[index]['price'],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

// Usage of restoreRemovedItem method in a AlertDialog
  void showConfirmationDialog({required int index}) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Confirmation'),
        content: const Text('Are you sure you want to remove this item?'),
        actions: [
          TextButton(
            onPressed: () {
              setState(() {
                removedItemsList.removeAt(index);
              });
              Navigator.of(context).pop();
            },
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                print(itemsList.length);
                itemsList.removeAt(index);
                print(itemsList.length);
              });

              Navigator.of(context).pop();
            },
            child: const Text('Remove'),
          ),
        ],
      ),
    );
  }
}

class RemoveItemListTile extends StatelessWidget {
  const RemoveItemListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        Text(
          'جنس حذف شود؟',
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
        ),
        ListTile(
          leading: Text('بله'),
        ),
        ListTile(
          leading: Text(
            'خیر',
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
