import 'dart:convert';

import 'package:divar/repositories/items_respositories/clothing_respository/constants/constants.dart';
import 'package:flutter/foundation.dart';

class ClothingModel {
  final int? itemId;
  final String? itemCustomerId;
  final int? itemCategoryId;
  final int? itemSubCategoryId;
  final List<String>? itemImages;
  final String? itemTitle;
  final int? itemProvince;
  final String? itemRegion;
  final String? itemTotalPrice;
  final int? itemPriceType;
  final int? itemType;
  final String? itemColor;
  final String? itemSize;
  final String? itemBrand;
  final String? itemDescription;
  final int? itemStatus;
  final String? itemPublishStatus;
  final String? itemSoldStatus;
  final String? itemCreatedAt;
  final String? itemUpdatedAt;

  ClothingModel({
    required this.itemId,
    required this.itemCustomerId,
    required this.itemCategoryId,
    required this.itemSubCategoryId,
    required this.itemImages,
    required this.itemTitle,
    required this.itemProvince,
    required this.itemRegion,
    required this.itemTotalPrice,
    required this.itemPriceType,
    required this.itemType,
    required this.itemColor,
    required this.itemSize,
    required this.itemBrand,
    required this.itemDescription,
    required this.itemStatus,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  ClothingModel.itemModel({
    required this.itemId,
    required this.itemCustomerId,
    required this.itemCategoryId,
    required this.itemSubCategoryId,
    required this.itemImages,
    required this.itemTitle,
    required this.itemProvince,
    required this.itemRegion,
    required this.itemTotalPrice,
    required this.itemPriceType,
    this.itemType = -1,
    this.itemColor = '',
    this.itemSize = '',
    this.itemBrand = '',
    this.itemDescription = '',
    this.itemStatus = -1,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  ClothingModel.clothModel({
    required this.itemId,
    required this.itemCustomerId,
    required this.itemCategoryId,
    required this.itemSubCategoryId,
    required this.itemImages,
    required this.itemTitle,
    required this.itemProvince,
    required this.itemRegion,
    required this.itemTotalPrice,
    required this.itemPriceType,
    required this.itemType,
    required this.itemColor,
    required this.itemSize,
    required this.itemBrand,
    required this.itemDescription,
    required this.itemStatus,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  ClothingModel.coatModel({
    required this.itemId,
    required this.itemCustomerId,
    required this.itemCategoryId,
    required this.itemSubCategoryId,
    required this.itemImages,
    required this.itemTitle,
    required this.itemProvince,
    required this.itemRegion,
    required this.itemTotalPrice,
    required this.itemPriceType,
    required this.itemType,
    required this.itemColor,
    required this.itemSize,
    required this.itemBrand,
    required this.itemDescription,
    required this.itemStatus,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  ClothingModel.suitModel({
    required this.itemId,
    required this.itemCustomerId,
    required this.itemCategoryId,
    required this.itemSubCategoryId,
    required this.itemImages,
    required this.itemTitle,
    required this.itemProvince,
    required this.itemRegion,
    required this.itemTotalPrice,
    required this.itemPriceType,
    this.itemType = -1,
    required this.itemColor,
    required this.itemSize,
    required this.itemBrand,
    required this.itemDescription,
    required this.itemStatus,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  ClothingModel.brideClothModel({
    required this.itemId,
    required this.itemCustomerId,
    required this.itemCategoryId,
    required this.itemSubCategoryId,
    required this.itemImages,
    required this.itemTitle,
    required this.itemProvince,
    required this.itemRegion,
    required this.itemTotalPrice,
    required this.itemPriceType,
    this.itemType = -1,
    required this.itemColor,
    required this.itemSize,
    required this.itemBrand,
    required this.itemDescription,
    required this.itemStatus,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  ClothingModel.shoeModel({
    required this.itemId,
    required this.itemCustomerId,
    required this.itemCategoryId,
    required this.itemSubCategoryId,
    required this.itemImages,
    required this.itemTitle,
    required this.itemProvince,
    required this.itemRegion,
    required this.itemTotalPrice,
    required this.itemPriceType,
    required this.itemType,
    required this.itemColor,
    required this.itemSize,
    required this.itemBrand,
    required this.itemDescription,
    required this.itemStatus,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  ClothingModel.watchModel({
    required this.itemId,
    required this.itemCustomerId,
    required this.itemCategoryId,
    required this.itemSubCategoryId,
    required this.itemImages,
    required this.itemTitle,
    required this.itemProvince,
    required this.itemRegion,
    required this.itemTotalPrice,
    required this.itemPriceType,
    required this.itemType,
    this.itemColor = '',
    this.itemSize = '',
    required this.itemBrand,
    required this.itemDescription,
    required this.itemStatus,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  ClothingModel.glassesModel({
    required this.itemId,
    required this.itemCustomerId,
    required this.itemCategoryId,
    required this.itemSubCategoryId,
    required this.itemImages,
    required this.itemTitle,
    required this.itemProvince,
    required this.itemRegion,
    required this.itemTotalPrice,
    required this.itemPriceType,
    this.itemType = -1,
    this.itemColor = '',
    this.itemSize = '',
    required this.itemBrand,
    required this.itemDescription,
    required this.itemStatus,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  ClothingModel.otherClothingModel({
    required this.itemId,
    required this.itemCustomerId,
    required this.itemCategoryId,
    required this.itemSubCategoryId,
    required this.itemImages,
    required this.itemTitle,
    required this.itemProvince,
    required this.itemRegion,
    required this.itemTotalPrice,
    required this.itemPriceType,
    this.itemType = -1,
    required this.itemColor,
    required this.itemSize,
    required this.itemBrand,
    required this.itemDescription,
    required this.itemStatus,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  ClothingModel copyWith({
    int? itemId,
    String? itemCustomerId,
    int? itemCategoryId,
    int? itemSubCategoryId,
    List<String>? itemImages,
    String? itemTitle,
    int? itemProvince,
    String? itemRegion,
    String? itemTotalPrice,
    int? itemPriceType,
    int? itemType,
    String? itemColor,
    String? itemSize,
    String? itemBrand,
    String? itemDescription,
    int? itemStatus,
    String? itemPublishStatus,
    String? itemSoldStatus,
    String? itemCreatedAt,
    String? itemUpdatedAt,
  }) {
    return ClothingModel(
      itemId: itemId ?? this.itemId,
      itemCustomerId: itemCustomerId ?? this.itemCustomerId,
      itemCategoryId: itemCategoryId ?? this.itemCategoryId,
      itemSubCategoryId: itemSubCategoryId ?? this.itemSubCategoryId,
      itemImages: itemImages ?? this.itemImages,
      itemTitle: itemTitle ?? this.itemTitle,
      itemProvince: itemProvince ?? this.itemProvince,
      itemRegion: itemRegion ?? this.itemRegion,
      itemTotalPrice: itemTotalPrice ?? this.itemTotalPrice,
      itemPriceType: itemPriceType ?? this.itemPriceType,
      itemType: itemType ?? this.itemType,
      itemColor: itemColor ?? this.itemColor,
      itemSize: itemSize ?? this.itemSize,
      itemBrand: itemBrand ?? this.itemBrand,
      itemDescription: itemDescription ?? this.itemDescription,
      itemStatus: itemStatus ?? this.itemStatus,
      itemPublishStatus: itemPublishStatus ?? this.itemPublishStatus,
      itemSoldStatus: itemSoldStatus ?? this.itemSoldStatus,
      itemCreatedAt: itemCreatedAt ?? this.itemCreatedAt,
      itemUpdatedAt: itemUpdatedAt ?? this.itemUpdatedAt,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      ClothingConstants.itemId: itemId,
      ClothingConstants.itemCustomerId: itemCustomerId,
      ClothingConstants.itemCategoryId: itemCategoryId,
      ClothingConstants.itemSubCategoryId: itemSubCategoryId,
      ClothingConstants.itemImages: itemImages,
      ClothingConstants.itemTitle: itemTitle,
      ClothingConstants.itemProvince: itemProvince,
      ClothingConstants.itemRegion: itemRegion,
      ClothingConstants.itemTotalPrice: itemTotalPrice,
      ClothingConstants.itemPriceType: itemPriceType,
      ClothingConstants.itemType: itemType,
      ClothingConstants.itemColor: itemColor,
      ClothingConstants.itemSize: itemSize,
      ClothingConstants.itemBrand: itemBrand,
      ClothingConstants.itemDescription: itemDescription,
      ClothingConstants.itemStatus: itemStatus,
      ClothingConstants.itemPublishStatus: itemPublishStatus,
      ClothingConstants.itemSoldStatus: itemSoldStatus,
      ClothingConstants.itemCreatedAt: itemCreatedAt,
      ClothingConstants.itemUpdatedAt: itemUpdatedAt,
    };
  }

  Map<String, dynamic> toMapItemModel() {
    return <String, dynamic>{
      ClothingConstants.itemId: itemId,
      ClothingConstants.itemCustomerId: itemCustomerId,
      ClothingConstants.itemCategoryId: itemCategoryId,
      ClothingConstants.itemSubCategoryId: itemSubCategoryId,
      ClothingConstants.itemImages: itemImages,
      ClothingConstants.itemTitle: itemTitle,
      ClothingConstants.itemProvince: itemProvince,
      ClothingConstants.itemRegion: itemRegion,
      ClothingConstants.itemTotalPrice: itemTotalPrice,
      ClothingConstants.itemPriceType: itemPriceType,
      ClothingConstants.itemPublishStatus: itemPublishStatus,
      ClothingConstants.itemSoldStatus: itemSoldStatus,
      ClothingConstants.itemCreatedAt: itemCreatedAt,
      ClothingConstants.itemUpdatedAt: itemUpdatedAt,
    };
  }

  factory ClothingModel.fromMap(Map<String, dynamic> map) {
    return ClothingModel(
      itemId: map[ClothingConstants.itemId] != null
          ? map[ClothingConstants.itemId] as int
          : null,
      itemCustomerId: map[ClothingConstants.itemCustomerId] != null
          ? map[ClothingConstants.itemCustomerId] as String
          : null,
      itemCategoryId: map[ClothingConstants.itemCategoryId] != null
          ? map[ClothingConstants.itemCategoryId] as int
          : null,
      itemSubCategoryId: map[ClothingConstants.itemSubCategoryId] != null
          ? map[ClothingConstants.itemSubCategoryId] as int
          : null,
      itemImages: map[ClothingConstants.itemImages] != null
          ? List<String>.from(
              (map[ClothingConstants.itemImages] as List<String>))
          : null,
      itemTitle: map[ClothingConstants.itemTitle] != null
          ? map[ClothingConstants.itemTitle] as String
          : null,
      itemProvince: map[ClothingConstants.itemProvince] != null
          ? map[ClothingConstants.itemProvince] as int
          : null,
      itemRegion: map[ClothingConstants.itemRegion] != null
          ? map[ClothingConstants.itemRegion] as String
          : null,
      itemTotalPrice: map[ClothingConstants.itemTotalPrice] != null
          ? map[ClothingConstants.itemTotalPrice] as String
          : null,
      itemPriceType: map[ClothingConstants.itemPriceType] != null
          ? map[ClothingConstants.itemPriceType] as int
          : null,
      itemType: map[ClothingConstants.itemType] != null
          ? map[ClothingConstants.itemType] as int
          : null,
      itemColor: map[ClothingConstants.itemColor] != null
          ? map[ClothingConstants.itemColor] as String
          : null,
      itemSize: map[ClothingConstants.itemSize] != null
          ? map[ClothingConstants.itemSize] as String
          : null,
      itemBrand: map[ClothingConstants.itemBrand] != null
          ? map[ClothingConstants.itemBrand] as String
          : null,
      itemDescription: map[ClothingConstants.itemDescription] != null
          ? map[ClothingConstants.itemDescription] as String
          : null,
      itemStatus: map[ClothingConstants.itemStatus] != null
          ? map[ClothingConstants.itemStatus] as int
          : null,
      itemPublishStatus: map[ClothingConstants.itemPublishStatus] != null
          ? map[ClothingConstants.itemPublishStatus] as String
          : null,
      itemSoldStatus: map[ClothingConstants.itemSoldStatus] != null
          ? map[ClothingConstants.itemSoldStatus] as String
          : null,
      itemCreatedAt: map[ClothingConstants.itemCreatedAt] != null
          ? map[ClothingConstants.itemCreatedAt] as String
          : null,
      itemUpdatedAt: map[ClothingConstants.itemUpdatedAt] != null
          ? map[ClothingConstants.itemUpdatedAt] as String
          : null,
    );
  }

  factory ClothingModel.fromMapItemModel(Map<String, dynamic> map) {
    return ClothingModel.itemModel(
      itemId: map[ClothingConstants.itemId] != null
          ? map[ClothingConstants.itemId] as int
          : null,
      itemCustomerId: map[ClothingConstants.itemCustomerId] != null
          ? map[ClothingConstants.itemCustomerId] as String
          : null,
      itemCategoryId: map[ClothingConstants.itemCategoryId] != null
          ? map[ClothingConstants.itemCategoryId] as int
          : null,
      itemSubCategoryId: map[ClothingConstants.itemSubCategoryId] != null
          ? map[ClothingConstants.itemCategoryId] as int
          : null,
      itemImages: map[ClothingConstants.itemImages] != null
          ? List<String>.from(
              (map[ClothingConstants.itemImages] as List<String>))
          : null,
      itemTitle: map[ClothingConstants.itemTitle] != null
          ? map[ClothingConstants.itemTitle] as String
          : null,
      itemProvince: map[ClothingConstants.itemProvince] != null
          ? map[ClothingConstants.itemProvince] as int
          : null,
      itemRegion: map[ClothingConstants.itemRegion] != null
          ? map[ClothingConstants.itemRegion] as String
          : null,
      itemTotalPrice: map[ClothingConstants.itemTotalPrice] != null
          ? map[ClothingConstants.itemTotalPrice] as String
          : null,
      itemPriceType: map[ClothingConstants.itemPriceType] != null
          ? map[ClothingConstants.itemPriceType] as int
          : null,
      itemDescription: map[ClothingConstants.itemDescription] != null
          ? map[ClothingConstants.itemDescription] as String
          : null,
      itemPublishStatus: map[ClothingConstants.itemPublishStatus] != null
          ? map[ClothingConstants.itemPublishStatus] as String
          : null,
      itemSoldStatus: map[ClothingConstants.itemSoldStatus] != null
          ? map[ClothingConstants.itemSoldStatus] as String
          : null,
      itemCreatedAt: map[ClothingConstants.itemCreatedAt] != null
          ? map[ClothingConstants.itemCreatedAt] as String
          : null,
      itemUpdatedAt: map[ClothingConstants.itemUpdatedAt] != null
          ? map[ClothingConstants.itemUpdatedAt] as String
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ClothingModel.fromJson(String source) =>
      ClothingModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ClothingModel(itemId: $itemId, itemCustomerId: $itemCustomerId, itemCategoryId: $itemCategoryId, itemSubCategoryId: $itemSubCategoryId, itemImages: $itemImages, itemTitle: $itemTitle, itemProvince: $itemProvince, itemRegion: $itemRegion, itemTotalPrice: $itemTotalPrice, itemPriceType: $itemPriceType, itemType: $itemType, itemColor: $itemColor, itemSize: $itemSize, itemBrand: $itemBrand, itemDescription: $itemDescription, itemStatus: $itemStatus, itemPublishStatus: $itemPublishStatus, itemSoldStatus: $itemSoldStatus, itemCreatedAt: $itemCreatedAt, itemUpdatedAt: $itemUpdatedAt)';
  }

  @override
  bool operator ==(covariant ClothingModel other) {
    if (identical(this, other)) return true;

    return other.itemId == itemId &&
        other.itemCustomerId == itemCustomerId &&
        other.itemCategoryId == itemCategoryId &&
        other.itemSubCategoryId == itemSubCategoryId &&
        listEquals(other.itemImages, itemImages) &&
        other.itemTitle == itemTitle &&
        other.itemProvince == itemProvince &&
        other.itemRegion == itemRegion &&
        other.itemTotalPrice == itemTotalPrice &&
        other.itemPriceType == itemPriceType &&
        other.itemType == itemType &&
        other.itemColor == itemColor &&
        other.itemSize == itemSize &&
        other.itemBrand == itemBrand &&
        other.itemDescription == itemDescription &&
        other.itemStatus == itemStatus &&
        other.itemPublishStatus == itemPublishStatus &&
        other.itemSoldStatus == itemSoldStatus &&
        other.itemCreatedAt == itemCreatedAt &&
        other.itemUpdatedAt == itemUpdatedAt;
  }

  @override
  int get hashCode {
    return itemId.hashCode ^
        itemCustomerId.hashCode ^
        itemCategoryId.hashCode ^
        itemSubCategoryId.hashCode ^
        itemImages.hashCode ^
        itemTitle.hashCode ^
        itemProvince.hashCode ^
        itemRegion.hashCode ^
        itemTotalPrice.hashCode ^
        itemPriceType.hashCode ^
        itemType.hashCode ^
        itemColor.hashCode ^
        itemSize.hashCode ^
        itemBrand.hashCode ^
        itemDescription.hashCode ^
        itemStatus.hashCode ^
        itemPublishStatus.hashCode ^
        itemSoldStatus.hashCode ^
        itemCreatedAt.hashCode ^
        itemUpdatedAt.hashCode;
  }
}
