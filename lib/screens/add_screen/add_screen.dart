import 'package:divar/constants/lists.dart';
import 'package:divar/constants/variables.dart';
import 'package:divar/heplers/modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:divar/repositories/items_respositories/bags_respository/models/bag_model.dart';
import 'package:divar/screens/add_screen/widgets/advertisement_select_image.dart';
import 'package:divar/screens/add_screen/widgets/continue_text_button_widget.dart';
import 'package:divar/screens/add_screen/widgets/custom_description_text_field.dart';
import 'package:divar/screens/add_screen/widgets/custom_price_text_field.dart';
import 'package:divar/screens/add_screen/widgets/custom_text_field.dart';
import 'package:divar/screens/add_screen/widgets/list_tile_widget.dart';
import 'package:divar/screens/add_screen/widgets/submit_ad_guide_list_tile_widget.dart';
import 'package:divar/screens/details_screen/add_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({super.key});

  static const String id = '/add_screen';

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  int itemCategoryId = -1,
      itemSubCategoryId = -1,
      itemProvince = 0,
      itemPriceType = 0,
      itemSalePriceType = 0,
      itemDiscountAmount = -1,
      itemType = 0,
      itemStatus = 0;
  XFile? image;
  List<String> bagImagesPathsList = [];
  String itemTitle = '',
      itemRegion = '',
      itemMaterial = '',
      itemDescription = '';
  double itemTotalPrice = -1.0;
  FocusNode focusNodeTitle = FocusNode(),
      focusNodeRegion = FocusNode(),
      focusNodeTotalPrice = FocusNode(),
      focusNodeDiscountAmount = FocusNode(),
      focusNodeMaterial = FocusNode(),
      focusNodeDescription = FocusNode();
  TextEditingController textEditingControllerTitle = TextEditingController(),
      textEditingControllerRegion = TextEditingController(),
      textEditingControllerTotalPrice = TextEditingController(),
      textEditingControllerDiscountAmount = TextEditingController(),
      textEditingControllerMaterial = TextEditingController(),
      textEditingControllerDescription = TextEditingController();
  bool isTitleHasError = false,
      isRegionHasError = false,
      isTotalPriceHasError = false,
      isDiscountAmountHasError = false,
      isMaterialHasError = false,
      isDescriptionHasError = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'ثبت آگهی - کیف',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 5),
              const SubmitAdGuideListTileWidget(),
              const SizedBox(height: 5),
              AdvertisementSelectImage(
                bagImagesPathsList: bagImagesPathsList,
                onTapClearImages: () {
                  setState(() {
                    bagImagesPathsList.clear();
                  });
                },
                onTapAddImages: () async {
                  if (bagImagesPathsList.length < 10) {
                    image = await ImagePicker()
                        .pickImage(source: ImageSource.gallery);
                    if (image != null) {
                      bagImagesPathsList.add(image!.path);
                      setState(() {});
                    }
                  }
                },
              ),
              const SizedBox(height: 5),
              CustomTextField(
                title: 'عنوان',
                hintText: 'کیف پشتی برای مکاتب',
                hasError: isTitleHasError,
                errorText: '',
                focusNode: focusNodeTitle,
                textEditingController: textEditingControllerTitle,
                onChange: (value) {
                  itemTitle = value;
                },
              ),
              const SizedBox(height: 5),
              ListTileWidget(
                title: 'شهر',
                onListTilePressed: () {
                  showSelectableModalBottomSheet(
                    context: context,
                    title: 'شهر',
                    selectableItemsList: provincesList,
                    onPressedButton: (value, index) {
                      setState(() {
                        itemProvince = index;
                      });
                    },
                    selectedIndex: itemProvince,
                  );
                },
                trailingText: provincesList[itemProvince],
              ),
              const SizedBox(height: 5),
              CustomTextField(
                title: 'منطقه',
                hintText: 'چوک گلها',
                hasError: isRegionHasError,
                errorText: '',
                focusNode: focusNodeRegion,
                textEditingController: textEditingControllerRegion,
                onChange: (value) {
                  itemRegion = value;
                },
              ),
              const SizedBox(height: 5),
              CustomPriceTextField(
                title: 'قیمت (افغانی)',
                hintText: '10000',
                priceSaleType: priceSaleTypesList[itemSalePriceType],
                hasError: isTotalPriceHasError,
                errorText: '',
                focusNode: focusNodeTotalPrice,
                textEditingController: textEditingControllerTotalPrice,
                onChange: (value) {
                  itemTotalPrice = value;
                },
                onTapPriceSaleType: () {
                  showSelectableModalBottomSheet(
                    context: context,
                    title: 'نوعیت قیمت فروش',
                    selectableItemsList: priceSaleTypesList,
                    onPressedButton: (value, index) {
                      setState(() {
                        itemSalePriceType = index;
                      });
                    },
                    selectedIndex: itemSalePriceType,
                  );
                },
              ),
              itemSalePriceType == 3
                  ? Column(
                      children: [
                        const SizedBox(height: 5),
                        CustomTextField(
                          title: 'تخفیف (افغانی)',
                          maxLength: 10,
                          hintText: '1000',
                          hasError: isDiscountAmountHasError,
                          errorText: '',
                          focusNode: focusNodeDiscountAmount,
                          textEditingController:
                              textEditingControllerDiscountAmount,
                          onChange: (value) {
                            itemDiscountAmount = int.parse(value);
                          },
                        ),
                      ],
                    )
                  : const SizedBox(),
              const SizedBox(height: 5),
              CustomTextField(
                title: 'جنس (اختیاری)',
                hintText: 'تکه یی',
                hasError: isMaterialHasError,
                errorText: '',
                focusNode: focusNodeMaterial,
                textEditingController: textEditingControllerMaterial,
                onChange: (value) {
                  itemMaterial = value;
                },
              ),
              const SizedBox(height: 5),
              CustomDescriptionTextField(
                title: 'توضیحات (اختیاری)',
                hintText: 'توضیحات',
                maxLength: 1024,
                hasError: isDescriptionHasError,
                errorText: '',
                focusNode: focusNodeDescription,
                textEditingController: textEditingControllerDescription,
                onChange: (value) {
                  itemDescription = value;
                },
              ),
              const SizedBox(height: 5),
              ListTileWidget(
                title: 'وضعیت',
                onListTilePressed: () {
                  showSelectableModalBottomSheet(
                    context: context,
                    title: 'وضعیت',
                    selectableItemsList: statusTypesList,
                    onPressedButton: (value, index) {
                      setState(() {
                        itemStatus = index;
                      });
                    },
                    selectedIndex: itemStatus,
                  );
                },
                trailingText: statusTypesList[itemStatus],
              ),
              const SizedBox(height: 5),
              BottomPageTextButtonWidget(
                text: 'ادامه',
                onPressed: () {
                  Variables.itemModel = BagModel(
                    itemCustomerId: '-NUYakSiJAtqZOTugjAN',
                    itemCategoryId: 13,
                    itemSubCategoryId: 13011,
                    itemImages: bagImagesPathsList,
                    itemTitle: itemTitle,
                    itemProvince: itemProvince,
                    itemRegion: itemRegion,
                    itemTotalPrice: itemTotalPrice,
                    itemPriceType: itemPriceType,
                    itemSalePriceType: itemSalePriceType,
                    itemDiscountAmount: itemDiscountAmount,
                    itemType: itemType,
                    itemMaterial: itemMaterial,
                    itemDescription: itemDescription,
                    itemStatus: itemStatus,
                  );
                  Navigator.pushNamed(context, AddDetailsScreen.id);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
