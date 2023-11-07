import 'package:divar/constants/lists.dart';
import 'package:divar/repositories/items_respositories/bags_respository/cubit/bag_cubit.dart';
import 'package:divar/screens/categories_screen/app_bar_back_icon_button_widget.dart';
import 'package:divar/screens/categories_screen/bottom_sheet_list_tile.dart';
import 'package:divar/screens/categories_screen/filter_tabbar.dart';
import 'package:divar/screens/categories_screen/search_text_field_widget.dart';
import 'package:divar/screens/home_screen/widgets/vertical_items_widget_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  static const String id = '/categories_screen';

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  bool isSearchIconClicked = false;
  String hintTextSearch = 'کیف مکتب', searchText = '';
  FocusNode focusNodeSearch = FocusNode();

  @override
  void initState() {
    super.initState();
    // context.read<BagCubit>().emitGetBags();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: isSearchIconClicked
            ? appBarWithSearchTextField(context)
            : AppBar(
                title: Text(
                  'آگهی های املاک',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                actions: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        isSearchIconClicked = true;
                      });
                    },
                    icon: const Icon(Icons.search),
                  ),
                ],
              ),
        body:
            // BlocBuilder<BagCubit, BagState>(
            //   builder: (context, state) {
            //     if (state is BagLoading ||
            //         state is BagFetchingData ||
            //         state is BagSearching) {
            //       return const Center(child: CircularProgressIndicator());
            //     } else if (state is BagsListLoaded) {
            //       if (state is BagEmpty) {
            //         return const Center(child: Text('list empty'));
            //       }
            //       return
            Column(
          children: [
            const SizedBox(height: 5),
            FilterTabbar(
              filterText: 'همه',
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
            Expanded(
              child: SingleChildScrollView(
                child: VerticalItemsWidgetList(
                  itemsList: itemsList,
                ),
              ),
            ),
          ],
        ),
        // } else if (state is BagError) {
        //   return Center(child: Text('error: ${state.message}'));
        // } else {
        //   return const Center(child: Text('error'));
        // }
        // },
        // ),
      ),
    );
  }

  AppBar appBarWithSearchTextField(BuildContext context) {
    return appBarWithBackButtonActionAndTextField(
      context,
      SearchTextFieldWidget(
        onSubmitted: (value) {
          if (searchText.isNotEmpty) {
            focusNodeSearch.unfocus();
            context.read<BagCubit>().emitSearchBags(searchText);
          }
        },
        text: '',
        hintText: hintTextSearch,
        focusNodeSearchTextField: focusNodeSearch,
        onChangedSearch: (value) {
          searchText = value;
        },
      ),
      () {
        setState(() {
          isSearchIconClicked = false;
        });
      },
      [
        IconButton(
          onPressed: () async {
            if (searchText.isNotEmpty) {
              focusNodeSearch.unfocus();
              context.read<BagCubit>().emitSearchBags(searchText);
            } else {
              focusNodeSearch.requestFocus();
            }
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
