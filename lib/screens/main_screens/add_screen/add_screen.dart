import 'package:divar/constants/colors.dart';
import 'package:divar/screens/main_screens/add_screen/widgets/advertisement_select_image.dart';
import 'package:divar/screens/main_screens/add_screen/widgets/continue_text_button_widget.dart';
import 'package:divar/screens/main_screens/add_screen/widgets/custom_text_field.dart';
import 'package:divar/screens/main_screens/add_screen/widgets/list_tile_widget.dart';
import 'package:divar/screens/main_screens/add_screen/widgets/submit_ad_guide_list_tile_widget.dart';
import 'package:divar/screens/main_screens/add_screen/widgets/toggle_widget.dart';
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
          title: const Text('ثبت آگهی'),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // لیست تایل برای راهنمای ثبت آگهی
              SubmitAdGuideListTileWidget(
                title: 'راهنمایی ثبت آگهی',
                icon: Icons.help_outline_outlined,
                trailingWidget: const Icon(
                  Icons.arrow_back_ios_new_rounded,
                  size: 15,
                ),
                onListTilePressed: () {},
              ),
              // انتخاب عکس با ویجت رپ به صورت افقی
              const AdvertisementSelectImage(),
              const Divider(indent: 20, endIndent: 20),
              // لیست تایل برای گزینه های انتخابی مثل وضعیت
              ListTileWidget(
                title: 'وضعیت',
                onListTilePressed: () {},
                trailingText: 'انتخاب',
              ),
              const Divider(indent: 20, endIndent: 20),
              // تکست فیلد همراه شمارش گر حروف برای صفحه اضافه کردن
              const CustomTextField(
                text: 'عنوان',
                maxLength: 32,
                hintText: 'اپل واچ سریز ۸',
              ),
              const Divider(indent: 20, endIndent: 20),
              // توگل برای گزینه های دو انتخابی
              const ToggleWidget(
                title: 'پارکینگ',
              ),
              const Divider(indent: 20, endIndent: 20),
              const ToggleWidget(
                title: 'مالچه',
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.1),
              // تکست باتون «ادامه» برای رفتن به صفحه بعدی
              ContinueTextButtonWidget(
                text: 'ادامه',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
