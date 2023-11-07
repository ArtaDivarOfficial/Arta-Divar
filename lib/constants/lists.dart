import 'package:divar/translations/locale_keys.g.dart';
import 'package:flutter/material.dart';

List<String> advertisementBannerList = [
  'assets/images/banner1.png',
  'assets/images/banner2.jpg',
  'assets/images/banner3.jpg',
];

List<Map<String, dynamic>> categoriesSvgListPart1 = [
  {
    'icon': 'assets/icons/home_property.svg',
    'category_title': 'املاک',
    'height': 20.0,
  },
  {
    'icon': 'assets/icons/home_appliances.svg',
    'category_title': 'وسایل خانه',
    'height': 22.0,
  },
  {
    'icon': 'assets/icons/vehicles.svg',
    'category_title': 'وسایط نقلیه',
    'height': 22.0,
  },
  {
    'icon': 'assets/icons/technology.svg',
    'category_title': 'تکنالوژی',
    'height': 28.0,
  },
];

List<Map<String, dynamic>> categoriesSvgListPart2 = [
  {
    'icon': 'assets/icons/clothes.svg',
    'category_title': 'پوشاک',
    'height': 26.0,
  },
  {
    'icon': 'assets/icons/jewelery.svg',
    'category_title': 'جواهرات',
    'height': 22.0,
  },
  {
    'icon': 'assets/icons/advertisement.svg',
    'category_title': 'اعلانات کاریابی',
    'height': 22.0,
  },
  {
    'icon': 'assets/icons/rest.svg',
    'category_title': 'بیشتر',
    'height': 22.0,
  },
];

List<Map<String, dynamic>> itemsList = [
  {
    'image': 'assets/images/mobile1.jpg',
    'title': 'گوشی گیمینگ فروشی ثابت',
    'address': 'هرات، چوک گلها',
    'price': '۱۵۰۰۰',
  },
  {
    'image': 'assets/images/home.jpg',
    'title': 'خانه فروشی تازه کار',
    'address': 'کابل، کارته نو',
    'price': '۱۳۰۰۰۰',
  },
  {
    'image': 'assets/images/car.jpg',
    'title': 'کرولا ۲۰۱۷ تمیز',
    'address': 'کابل، شهرک موتر فروشان',
    'price': '۶۰۰۰۰۰',
  },
  {
    'image': 'assets/images/home2.jpg',
    'title': 'خانه گروی',
    'address': 'هرات، ۶۴ متره',
    'price': '۶۰۰۰۰۰',
  },
  {
    'image': 'assets/images/car.jpg',
    'title': 'کرولا ۲۰۱۷ تمیز',
    'address': 'کابل، شهرک موتر فروشان',
    'price': '۶۰۰۰۰۰',
  },
  {
    'image': 'assets/images/home.jpg',
    'title': 'خانه فروشی تازه کار',
    'address': 'کابل، کارته نو',
    'price': '۱۳۰۰۰۰',
  },
  {
    'image': 'assets/app_logo/black_&_white_app_logo.png',
    'title': 'خانه گروی',
    'address': 'هرات، ۶۴ متره',
    'price': '۶۰۰۰۰۰',
  },
  {
    'image': 'assets/images/mobile1.jpg',
    'title': 'گوشی گیمینگ فروشی ثابت',
    'address': 'هرات، چوک گله',
    'price': '۱۵۰۰۰',
  },
  {
    'image': 'assets/images/home2.jpg',
    'title': 'خانه گروی',
    'address': 'هرات، ۶۴ متره',
    'price': '۶۰۰۰۰۰',
  },
  {
    'image': 'assets/images/mobile1.jpg',
    'title': 'گوشی گیمینگ فروشی ثابت',
    'address': 'هرات، چوک گلها',
    'price': '۱۵۰۰۰',
  },
  {
    'image': 'assets/images/car.jpg',
    'title': 'کرولا ۲۰۱۷ تمیز',
    'address': 'کابل، شهرک موتر فروشان',
    'price': '۶۰۰۰۰۰',
  },
  {
    'image': 'assets/images/home.jpg',
    'title': 'خانه فروشی تازه کار',
    'address': 'کابل، کارته نو',
    'price': '۱۳۰۰۰۰',
  },
];

// Drawer Items List
List<Map<String, dynamic>> dashboardDrawerItemsList = [
  {'category_index': 1, 'icon': Icons.home, 'title': 'Home'},
  {
    'category_index': 1,
    'icon': Icons.currency_exchange_rounded,
    'title': 'Exchange Rates'
  },
  {
    'category_index': 1,
    'icon': Icons.wb_sunny_rounded,
    'title': 'Weather Forecast'
  },
  {
    'category_index': 1,
    'icon': Icons.location_on_rounded,
    'title': 'My Location'
  },
  {'category_index': 1, 'icon': Icons.language_rounded, 'title': 'Language'},
  {'category_index': 1, 'icon': Icons.book_rounded, 'title': 'References'},
];
List<Map<String, dynamic>> communicationDrawerItemsList = [
  {
    'category_index': 2,
    'icon': Icons.contact_mail_rounded,
    'title': 'Contact Us'
  },
  {'category_index': 2, 'icon': Icons.share_rounded, 'title': 'Share'},
];
List<Map<String, dynamic>> appDrawerItemsList = [
  {'category_index': 3, 'icon': Icons.exit_to_app_rounded, 'title': 'Exit'},
];

List categoriesFilterList = [
  'همه',
  'کیف پشتی',
  'کیف مسافرت',
  'کیف مجلسی',
  'کیف پول',
  'سایر کیف',
];

List subCategoriesFilterList = [
  'همه',
  'پسرانه',
  'دخترانه',
  'مردانه',
  'زنانه',
];

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

List<String> tabBarCategoriesList = [
  'همه',
  'املاک',
  'لوازم خانه',
  'وسایط نقلیه',
  'تکنالوژی',
  'پوشاک',
  'جواهرات',
  'لوازم بهداشتی',
  'ورزش',
  'کسب و کار',
  'لوازم و تجهیزات',
  'لوازم برق',
  'لوازم التحریر',
  'کیف',
  'تکه باب',
  'بازی های آنلاین',
  'لوازم بازی',
  'سایر موارد',
];
