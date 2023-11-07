import 'package:divar/screens/Search_screen/app_bar_back_icon_button_widget.dart';
import 'package:divar/screens/Search_screen/bottom_sheet_list_tile.dart';
import 'package:divar/screens/Search_screen/filter_tabbar.dart';
import 'package:divar/screens/Search_screen/search_text_field_widget.dart';
import 'package:divar/screens/home_screen/widgets/vertical_items_widget_list.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  static const String id = '/search_screen';

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appBarWithSearchTextField(context),
        // AppBar(
        //   title: Text(
        //     'آگهی های املاک',
        //     style: Theme.of(context).textTheme.titleLarge,
        //   ),
        //   actions: [
        //     IconButton(
        //       onPressed: () {},
        //       icon: const Icon(Icons.search),
        //     ),
        //   ],
        // ),
        body: Column(
          children: [
            const SizedBox(height: 5),
            FilterTabbar(
              filterText: 'مسکونی / کرایی',
              onFilterPressed: () {
                showModalBottomSheet(
                    context: context,
                    enableDrag: true,
                    isScrollControlled: true,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    builder: (BuildContext context) {
                      return const BottomSheetListTile();
                    });
              },
            ),
            const SizedBox(height: 5),
            const Expanded(
              child: SingleChildScrollView(
                child: VerticalItemsWidgetList(itemsList: []),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AppBar appBarWithSearchTextField(BuildContext context) {
    return appBarWithBackButtonActionAndTextField(
      context,
      SearchTextFieldWidget(
        onSubmitted: (value) {},
        text: '',
        focusNodeSearchTextField: FocusNode(),
        onChangedSearch: (value) {
          //   searchText = value;
          //   if (searchText.isEmpty) {
          //     setState(() {
          //       isSearching = false;
          //     });
          //   }
          // },
          // onSubmitted: (value) async {
          //   if (searchText.isNotEmpty) {
          //     setState(() {
          //       isSearching = true;
          //       isLoading = true;
          //     });
          //     focusNodeSearchTextField.unfocus();
          //     await getItemsBySearchedText();
          //   }
        },
      ),
      () {
        // if (isLoading) {
        //   onWillPopLoadingFalse();
        //   return;
        // }
        // setState(() {
        //   isSearchButtonClicked = false;
        //   isSearching = false;
        // });
      },
      [
        IconButton(
          onPressed: () async {
            // if (searchText.isNotEmpty) {
            //   setState(() {
            //     isSearching = true;
            //     isLoading = true;
            //   });
            //   focusNodeSearchTextField.unfocus();
            //   await getItemsBySearchedText();
            // }
          },
          icon: const Icon(
            Icons.search_rounded,
          ),
        ),
      ],
    );
  }

  AppBar appBarWithBackButtonActionAndTextField(BuildContext context,
      Widget textField, Function() onPressedBackButton, List<Widget> actions) {
    return AppBar(
      leading: AppBarBackIconButtonWidget(
        onPressed: onPressedBackButton,
      ),
      title: textField,
      actions: actions,
    );
  }
}
