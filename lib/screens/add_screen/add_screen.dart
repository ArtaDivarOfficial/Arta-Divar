import 'package:divar/screens/add_screen/widgets/advertisement_select_image.dart';
import 'package:divar/screens/add_screen/widgets/continue_text_button_widget.dart';
import 'package:divar/screens/add_screen/widgets/custom_description_text_field.dart';
import 'package:divar/screens/add_screen/widgets/custom_price_text_field.dart';
import 'package:divar/screens/add_screen/widgets/custom_text_field.dart';
import 'package:divar/screens/add_screen/widgets/list_tile_widget.dart';
import 'package:divar/screens/add_screen/widgets/submit_ad_guide_list_tile_widget.dart';
import 'package:divar/screens/add_screen/widgets/toggle_widget.dart';
import 'package:divar/screens/details_screen/details_screen.dart';
import 'package:flutter/material.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({super.key});
  static const String id = '/add_screen';

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
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
              const SubmitAdGuideListTileWidget(),
              Divider(
                indent: 20,
                endIndent: 20,
                color: Colors.grey.shade500,
              ),
              const SizedBox(height: 5),
              const AdvertisementSelectImage(),
              const SizedBox(height: 15),
              Divider(
                indent: 20,
                endIndent: 20,
                color: Colors.grey.shade500,
              ),
              const SizedBox(height: 5),
              const CustomTextField(
                text: 'عنوان',
                maxLength: 32,
                hintText: 'کیف پشتی برای مکاتب',
                hasError: false,
              ),
              Divider(
                indent: 20,
                endIndent: 20,
                color: Colors.grey.shade500,
              ),
              ListTileWidget(
                title: 'شهر',
                onListTilePressed: () {},
                trailingText: 'هرات',
              ),
              Divider(
                indent: 20,
                endIndent: 20,
                color: Colors.grey.shade500,
              ),
              const SizedBox(height: 5),
              const CustomTextField(
                text: 'منطقه',
                maxLength: 32,
                hintText: 'چوک گلها',
                hasError: false,
              ),
              Divider(
                indent: 20,
                endIndent: 20,
                color: Colors.grey.shade500,
              ),
              const SizedBox(height: 5),
              const CustomPriceTextField(
                text: 'قیمت (افغانی)',
                maxLength: 32,
                hintText: '10000',
                priceSaleType: 'تخفیف',
                hasError: false,
              ),
              Divider(
                indent: 20,
                endIndent: 20,
                color: Colors.grey.shade500,
              ),
              const SizedBox(height: 5),
              const CustomTextField(
                text: 'تخفیف (افغانی)',
                maxLength: 32,
                hintText: '1000',
                hasError: false,
              ),
              Divider(
                indent: 20,
                endIndent: 20,
                color: Colors.grey.shade500,
              ),
              const SizedBox(height: 5),
              const CustomTextField(
                text: 'جنس (اختیاری)',
                maxLength: 32,
                hintText: 'تکه یی',
                hasError: false,
              ),
              Divider(
                indent: 20,
                endIndent: 20,
                color: Colors.grey.shade500,
              ),
              const SizedBox(height: 5),
              const CustomDescriptionTextField(
                text: 'توضیحات (اختیاری)',
                maxLength: 32,
                hintText: 'توضیحات',
                hasError: false,
              ),
              Divider(
                indent: 20,
                endIndent: 20,
                color: Colors.grey.shade500,
              ),
              ListTileWidget(
                title: 'وضعیت',
                onListTilePressed: () {},
                trailingText: 'انتخاب',
              ),
              Divider(
                indent: 20,
                endIndent: 20,
                color: Colors.grey.shade500,
              ),
              const ToggleWidget(
                title: 'مالچه',
              ),
              Divider(
                indent: 20,
                endIndent: 20,
                color: Colors.grey.shade500,
              ),
              ContinueTextButtonWidget(
                text: 'ادامه',
                onPressed: () {
                  Navigator.pushNamed(context, DetailsScreen.id);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
