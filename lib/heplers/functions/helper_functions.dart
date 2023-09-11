import 'package:divar/packages/dio/dio.dart';

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
}
