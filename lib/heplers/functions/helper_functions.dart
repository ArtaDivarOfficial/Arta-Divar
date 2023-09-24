import 'package:divar/packages/dio/dio.dart';
import 'package:flutter/material.dart';

class HelperFunctions {
  static List<String>? getImages(
      Map<Object?, Object?> map, String imagesAddress, String imagesApi) {
    List<String>? itemImages = [];
    List<String> imagesList = map[imagesAddress].toString().split(',');
    for (int i = 0; i < imagesList.length; i++) {
      if (imagesList[i].isNotEmpty) {
        itemImages.add('${MyDio.basePublicAPIUrl}$imagesApi/${imagesList[i]}');
      }
    }
    return itemImages;
  }

  static String getCategoryNameById(int categoryId) {
    switch (categoryId) {
      case 1:
        return 'املاک';
      case 2:
        return 'لوازم خانه';
      case 3:
        return 'وسایط نقلیه';
      case 4:
        return 'تکنالوژی';
      case 5:
        return 'پوشاک';
      case 6:
        return 'جواهرات';
      case 7:
        return 'لوازم بهداشتی';
      case 8:
        return 'ورزش';
      case 9:
        return 'کسب و کار';
      case 10:
        return 'لوازم و تجهیزات';
      case 11:
        return 'لوازم برق';
      case 12:
        return 'لوازم التحریر';
      case 13:
        return 'کیف';
      case 14:
        return 'تکه باب';
      case 15:
        return 'بازی های آنلاین';
      case 16:
        return 'لوازم بازی';
      case 17:
        return 'اعلانات کاریابی';
      case 18:
        return 'تبلیغات';
      case 19:
        return 'سایر موارد';
      case 20:
        return 'خوراکه باب';
      default:
    }
    return '';
  }
}

// String getSubCategoryNameById(int subCategoryId) {
//   switch (subCategoryId) {
//     case 1011:
//     case 1012:
//     case 1013:
//     case 11:
//       return LocaleKeys.residential.tr();
//     case 1021:
//     case 1022:
//     case 1023:
//     case 12:
//       return LocaleKeys.commercial.tr();
//     case 1031:
//     case 1032:
//     case 1033:
//     case 13:
//       return LocaleKeys.shop.tr();
//     case 1041:
//     case 1042:
//     case 1043:
//     case 14:
//       return LocaleKeys.inventory.tr();
//     case 201:
//     case 21:
//       return LocaleKeys.home_appliances.tr();
//     case 202:
//     case 22:
//       return LocaleKeys.kitchen_appliances.tr();
//     case 203:
//     case 23:
//       return LocaleKeys.bathroom_appliances.tr();
//     case 204:
//       return LocaleKeys.decoration.tr();
//     case 205:
//       return LocaleKeys.other_home_appliances.tr();
//     case 3011:
//     case 31:
//       return LocaleKeys.riding.tr();
//     case 30121:
//     case 32:
//       return LocaleKeys.tyler.tr();
//     case 30122:
//     case 33:
//       return LocaleKeys.ten_wheel.tr();
//     case 30123:
//     case 34:
//       return LocaleKeys.mazda.tr();
//     case 30124:
//     case 35:
//       return LocaleKeys.orient.tr();
//     case 302:
//     case 36:
//       return LocaleKeys.motorcycle.tr();
//     case 303:
//       return LocaleKeys.three_wheel.tr();
//     case 304:
//     case 37:
//       return LocaleKeys.bicycle.tr();
//     case 305:
//     case 38:
//       return LocaleKeys.vehicle_accessories.tr();
//     case 401:
//     case 41:
//       return LocaleKeys.computer.tr();
//     case 402:
//     case 42:
//       return LocaleKeys.mobile.tr();
//     case 403:
//     case 44:
//       return LocaleKeys.television.tr();
//     case 404:
//       return LocaleKeys.voice_player.tr();
//     case 405:
//     case 43:
//       return LocaleKeys.play_station.tr();
//     case 406:
//       return LocaleKeys.wi_fi.tr();
//     case 407:
//       return LocaleKeys.smart_watch.tr();
//     case 408:
//       return LocaleKeys.camera_category.tr();
//     case 409:
//     case 45:
//       return LocaleKeys.technology_accessories.tr();
//     case 410:
//       return LocaleKeys.other_technology.tr();
//     case 5011:
//     case 5012:
//     case 5013:
//     case 5014:
//       return LocaleKeys.cloth.tr();
//     case 5021:
//     case 5022:
//     case 5023:
//     case 5024:
//       return LocaleKeys.coat.tr();
//     case 503:
//       return LocaleKeys.suit.tr();
//     case 504:
//       return LocaleKeys.bride_cloth.tr();
//     case 5051:
//     case 5052:
//     case 5053:
//     case 5054:
//       return LocaleKeys.shoe.tr();
//     case 5061:
//     case 5062:
//       return LocaleKeys.watch.tr();
//     case 507:
//       return LocaleKeys.glasses.tr();
//     case 508:
//       return LocaleKeys.other_clothing.tr();
//     case 601:
//       return LocaleKeys.ring.tr();
//     case 602:
//       return LocaleKeys.necklace.tr();
//     case 603:
//       return LocaleKeys.bracelet.tr();
//     case 604:
//       return LocaleKeys.earrings.tr();
//     case 605:
//       return LocaleKeys.gemstone.tr();
//     case 606:
//       return LocaleKeys.coin.tr();
//     case 607:
//       return LocaleKeys.other_jewelleries.tr();
//     case 701:
//       return LocaleKeys.cosmetic.tr();
//     case 702:
//       return LocaleKeys.bathroom_appliances.tr();
//     case 703:
//       return LocaleKeys.oil_therapy.tr();
//     case 704:
//       return LocaleKeys.electronic_appliances.tr();
//     case 705:
//       return LocaleKeys.other_comestics.tr();
//     case 801:
//       return LocaleKeys.sport_cloth.tr();
//     case 802:
//       return LocaleKeys.sport_shoe.tr();
//     case 803:
//       return LocaleKeys.sport_bag.tr();
//     case 804:
//       return LocaleKeys.sport_appliances.tr();
//     case 805:
//       return LocaleKeys.other_sport.tr();
//     case 901:
//       return LocaleKeys.mdf.tr();
//     case 902:
//       return LocaleKeys.upvc.tr();
//     case 903:
//       return LocaleKeys.carpentry.tr();
//     case 904:
//       return LocaleKeys.metal_work.tr();
//     case 905:
//       return LocaleKeys.other_business.tr();
//     case 1001:
//       return LocaleKeys.building.tr();
//     case 1002:
//       return LocaleKeys.medical.tr();
//     case 1003:
//       return LocaleKeys.tools.tr();
//     case 1004:
//       return LocaleKeys.industrial_machinery.tr();
//     case 1005:
//       return LocaleKeys.other_supplies_and_equipment.tr();
//     case 1101:
//       return LocaleKeys.lighting.tr();
//     case 1102:
//       return LocaleKeys.industrial.tr();
//     case 1103:
//       return LocaleKeys.other_electric_appliances.tr();
//     case 1201:
//       return LocaleKeys.book.tr();
//     case 1202:
//       return LocaleKeys.notebook.tr();
//     case 1203:
//       return LocaleKeys.board.tr();
//     case 1204:
//       return LocaleKeys.painting_tools.tr();
//     case 1205:
//       return LocaleKeys.medical_tools.tr();
//     case 1206:
//       return LocaleKeys.other_stationery.tr();
//     case 13011:
//     case 13012:
//       return LocaleKeys.backpack.tr();
//     case 1302:
//       return LocaleKeys.travel_bag.tr();
//     case 1303:
//       return LocaleKeys.purse.tr();
//     case 1304:
//       return LocaleKeys.wallet.tr();
//     case 1305:
//       return LocaleKeys.other_bag.tr();
//     case 1401:
//     case 1402:
//       return LocaleKeys.scrap.tr();
//     case 1501:
//       return LocaleKeys.pubg.tr();
//     case 1502:
//       return LocaleKeys.call_of_duty.tr();
//     case 1503:
//       return LocaleKeys.clash_of_clans.tr();
//     case 1504:
//       return LocaleKeys.clans.tr();
//     case 1505:
//       return LocaleKeys.other_online_games.tr();
//     case 1601:
//     case 1602:
//       return LocaleKeys.toy.tr();
//     case 17:
//       return LocaleKeys.job_announcements.tr();
//     case 18:
//       return LocaleKeys.advertisements.tr();
//     case 19:
//       return LocaleKeys.others.tr();
//     default:
//   }
//   return LocaleKeys.estate.tr();
// }
