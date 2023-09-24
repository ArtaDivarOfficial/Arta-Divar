import 'package:divar/screens/add_screen/widgets/advertisement_select_image.dart';
import 'package:divar/screens/add_screen/widgets/continue_text_button_widget.dart';
import 'package:divar/screens/add_screen/widgets/custom_description_text_field.dart';
import 'package:divar/screens/add_screen/widgets/custom_price_text_field.dart';
import 'package:divar/screens/add_screen/widgets/custom_text_field.dart';
import 'package:divar/screens/add_screen/widgets/list_tile_widget.dart';
import 'package:divar/screens/add_screen/widgets/submit_ad_guide_list_tile_widget.dart';
import 'package:divar/screens/details_screen/details_screen.dart';
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
  List<XFile?> bagImagesList = [];
  List<String> bagImagesPathsList = [];
  String itemTitle = '',
      itemRegion = '',
      itemMaterial = '',
      itemDescription = '';
  double itemTotalPrice = -1.0;
  FocusNode focusNodeTitle = FocusNode(),
      focusNodeRegion = FocusNode(),
      focusNodeMaterial = FocusNode(),
      focusNodeDescription = FocusNode();
  bool isTitleHasError = false,
      isRegionHasError = false,
      isTotalPriceHasError = false,
      isDiscountAmountHasError = false,
      isMaterialHasError = false,
      isDescriptionHasError = false;
  List priceSaleTypesList = [
    'مقطوع',
    'جورآمد',
    'توافقی',
    'تخفیف',
  ];
  List priceTypesList = [
    'افغانی',
    'دالر',
  ];
  List genderTypesList = [
    'پسرانه',
    'دخترانه',
    'مردانه',
    'زنانه',
  ];
  List statusTypesList = [
    'نو',
    'در حد نو',
    'استفاده شده',
  ];
  List<String> provincesList = [
    'ارزگان',
    'بادغیس',
    'بامیان',
    'بدخشان',
    'بغلان',
    'بلخ',
    'پروان',
    'پکتیا',
    'پکتیکا',
    'پنجشیر',
    'تخار',
    'جوزجان',
    'خوست',
    'دایکندی',
    'زابل',
    'سر پل',
    'سمنگان',
    'غزنی',
    'غور',
    'فاریاب',
    'فراه',
    'قندهار',
    'کابل',
    'کاپیسا',
    'کندز',
    'کنر',
    'لغمان',
    'لوگر',
    'میدان وردک',
    'ننگرهار',
    'نورستان',
    'نیمروز',
    'هرات',
    'هلمند',
  ];

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
                onChange: (value) {
                  itemTitle = value;
                },
              ),
              const SizedBox(height: 5),
              ListTileWidget(
                title: 'شهر',
                onListTilePressed: () {},
                trailingText: 'هرات',
              ),
              const SizedBox(height: 5),
              CustomTextField(
                title: 'منطقه',
                hintText: 'چوک گلها',
                hasError: isRegionHasError,
                errorText: '',
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
                onChange: (value) {
                  itemTotalPrice = value;
                },
              ),
              itemSalePriceType == 4
                  ? Column(
                      children: [
                        const SizedBox(height: 5),
                        CustomTextField(
                          title: 'تخفیف (افغانی)',
                          maxLength: 10,
                          hintText: '1000',
                          hasError: isDiscountAmountHasError,
                          errorText: '',
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
                onChange: (value) {
                  itemDescription = value;
                },
              ),
              const SizedBox(height: 5),
              ListTileWidget(
                title: 'وضعیت',
                onListTilePressed: () {},
                trailingText: 'انتخاب',
              ),
              const SizedBox(height: 5),
              ContinueTextButtonWidget(
                text: 'ادامه',
                onPressed: () {
                  // Navigator.pushNamed(context, DetailsScreen.id);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
