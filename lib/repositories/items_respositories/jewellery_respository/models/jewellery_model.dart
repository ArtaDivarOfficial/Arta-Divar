import 'dart:convert';

import 'package:divar/repositories/items_respositories/jewellery_respository/constants/constants.dart';
import 'package:flutter/foundation.dart';

class JewelleryModel {
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
  final int? itemKarat;
  final int? itemKartyType;
  final double? itemWeight;
  final int? itemConstructionWages;
  final String? itemDescription;
  final int? itemStatus;
  final String? itemPublishStatus;
  final String? itemSoldStatus;
  final String? itemCreatedAt;
  final String? itemUpdatedAt;

  JewelleryModel({
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
    required this.itemKarat,
    required this.itemKartyType,
    required this.itemWeight,
    required this.itemConstructionWages,
    required this.itemDescription,
    required this.itemStatus,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  JewelleryModel.itemModel({
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
    this.itemKarat = -1,
    this.itemKartyType = -1,
    this.itemWeight = -1,
    this.itemConstructionWages = -1,
    this.itemDescription = '',
    this.itemStatus = -1,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  JewelleryModel.ringModel({
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
    required this.itemKarat,
    this.itemKartyType = -1,
    required this.itemWeight,
    required this.itemConstructionWages,
    required this.itemDescription,
    required this.itemStatus,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  JewelleryModel.necklaceModel({
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
    required this.itemKarat,
    this.itemKartyType = -1,
    required this.itemWeight,
    required this.itemConstructionWages,
    required this.itemDescription,
    required this.itemStatus,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  JewelleryModel.braceletModel({
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
    required this.itemKarat,
    this.itemKartyType = -1,
    required this.itemWeight,
    required this.itemConstructionWages,
    required this.itemDescription,
    required this.itemStatus,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  JewelleryModel.earringsModel({
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
    required this.itemKarat,
    this.itemKartyType = -1,
    required this.itemWeight,
    required this.itemConstructionWages,
    required this.itemDescription,
    required this.itemStatus,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  JewelleryModel.gemStoneModel({
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
    required this.itemKarat,
    this.itemKartyType = -1,
    required this.itemWeight,
    required this.itemConstructionWages,
    required this.itemDescription,
    required this.itemStatus,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  JewelleryModel.coinModel({
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
    required this.itemKarat,
    required this.itemKartyType,
    required this.itemWeight,
    required this.itemConstructionWages,
    required this.itemDescription,
    required this.itemStatus,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  JewelleryModel.otherJewelleryModel({
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
    required this.itemKarat,
    this.itemKartyType = -1,
    required this.itemWeight,
    required this.itemConstructionWages,
    required this.itemDescription,
    required this.itemStatus,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  JewelleryModel copyWith({
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
    int? itemKarat,
    int? itemKartyType,
    double? itemWeight,
    int? itemConstructionWages,
    String? itemDescription,
    int? itemStatus,
    String? itemPublishStatus,
    String? itemSoldStatus,
    String? itemCreatedAt,
    String? itemUpdatedAt,
  }) {
    return JewelleryModel(
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
      itemKarat: itemKarat ?? this.itemKarat,
      itemKartyType: itemKartyType ?? this.itemKartyType,
      itemWeight: itemWeight ?? this.itemWeight,
      itemConstructionWages:
          itemConstructionWages ?? this.itemConstructionWages,
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
      JewelleryConstants.itemId: itemId,
      JewelleryConstants.itemCustomerId: itemCustomerId,
      JewelleryConstants.itemCategoryId: itemCategoryId,
      JewelleryConstants.itemSubCategoryId: itemSubCategoryId,
      JewelleryConstants.itemImages: itemImages,
      JewelleryConstants.itemTitle: itemTitle,
      JewelleryConstants.itemProvince: itemProvince,
      JewelleryConstants.itemRegion: itemRegion,
      JewelleryConstants.itemTotalPrice: itemTotalPrice,
      JewelleryConstants.itemPriceType: itemPriceType,
      JewelleryConstants.itemType: itemType,
      JewelleryConstants.itemKarat: itemKarat,
      JewelleryConstants.itemKartyType: itemKartyType,
      JewelleryConstants.itemWeight: itemWeight,
      JewelleryConstants.itemConstructionWages: itemConstructionWages,
      JewelleryConstants.itemDescription: itemDescription,
      JewelleryConstants.itemStatus: itemStatus,
      JewelleryConstants.itemPublishStatus: itemPublishStatus,
      JewelleryConstants.itemSoldStatus: itemSoldStatus,
      JewelleryConstants.itemCreatedAt: itemCreatedAt,
      JewelleryConstants.itemUpdatedAt: itemUpdatedAt,
    };
  }

  Map<String, dynamic> toMapItemModel() {
    return <String, dynamic>{
      JewelleryConstants.itemId: itemId,
      JewelleryConstants.itemCustomerId: itemCustomerId,
      JewelleryConstants.itemCategoryId: itemCategoryId,
      JewelleryConstants.itemSubCategoryId: itemSubCategoryId,
      JewelleryConstants.itemImages: itemImages,
      JewelleryConstants.itemTitle: itemTitle,
      JewelleryConstants.itemProvince: itemProvince,
      JewelleryConstants.itemRegion: itemRegion,
      JewelleryConstants.itemTotalPrice: itemTotalPrice,
      JewelleryConstants.itemPriceType: itemPriceType,
      JewelleryConstants.itemPublishStatus: itemPublishStatus,
      JewelleryConstants.itemSoldStatus: itemSoldStatus,
      JewelleryConstants.itemCreatedAt: itemCreatedAt,
      JewelleryConstants.itemUpdatedAt: itemUpdatedAt,
    };
  }

  factory JewelleryModel.fromMap(Map<String, dynamic> map) {
    return JewelleryModel(
      itemId: map[JewelleryConstants.itemId] != null
          ? map[JewelleryConstants.itemId] as int
          : null,
      itemCustomerId: map[JewelleryConstants.itemCustomerId] != null
          ? map[JewelleryConstants.itemCustomerId] as String
          : null,
      itemCategoryId: map[JewelleryConstants.itemCategoryId] != null
          ? map[JewelleryConstants.itemCategoryId] as int
          : null,
      itemSubCategoryId: map[JewelleryConstants.itemSubCategoryId] != null
          ? map[JewelleryConstants.itemSubCategoryId] as int
          : null,
      itemImages: map[JewelleryConstants.itemImages] != null
          ? List<String>.from(
              (map[JewelleryConstants.itemImages] as List<String>))
          : null,
      itemTitle: map[JewelleryConstants.itemTitle] != null
          ? map[JewelleryConstants.itemTitle] as String
          : null,
      itemProvince: map[JewelleryConstants.itemProvince] != null
          ? map[JewelleryConstants.itemProvince] as int
          : null,
      itemRegion: map[JewelleryConstants.itemRegion] != null
          ? map[JewelleryConstants.itemRegion] as String
          : null,
      itemTotalPrice: map[JewelleryConstants.itemTotalPrice] != null
          ? map[JewelleryConstants.itemTotalPrice] as String
          : null,
      itemPriceType: map[JewelleryConstants.itemPriceType] != null
          ? map[JewelleryConstants.itemPriceType] as int
          : null,
      itemType: map[JewelleryConstants.itemType] != null
          ? map[JewelleryConstants.itemType] as int
          : null,
      itemKarat: map[JewelleryConstants.itemKarat] != null
          ? map[JewelleryConstants.itemKarat] as int
          : null,
      itemKartyType: map[JewelleryConstants.itemKartyType] != null
          ? map[JewelleryConstants.itemKartyType] as int
          : null,
      itemWeight: map[JewelleryConstants.itemWeight] != null
          ? map[JewelleryConstants.itemWeight] as double
          : null,
      itemConstructionWages:
          map[JewelleryConstants.itemConstructionWages] != null
              ? map[JewelleryConstants.itemConstructionWages] as int
              : null,
      itemDescription: map[JewelleryConstants.itemDescription] != null
          ? map[JewelleryConstants.itemDescription] as String
          : null,
      itemStatus: map[JewelleryConstants.itemStatus] != null
          ? map[JewelleryConstants.itemStatus] as int
          : null,
      itemPublishStatus: map[JewelleryConstants.itemPublishStatus] != null
          ? map[JewelleryConstants.itemPublishStatus] as String
          : null,
      itemSoldStatus: map[JewelleryConstants.itemSoldStatus] != null
          ? map[JewelleryConstants.itemSoldStatus] as String
          : null,
      itemCreatedAt: map[JewelleryConstants.itemCreatedAt] != null
          ? map[JewelleryConstants.itemCreatedAt] as String
          : null,
      itemUpdatedAt: map[JewelleryConstants.itemUpdatedAt] != null
          ? map[JewelleryConstants.itemUpdatedAt] as String
          : null,
    );
  }

  factory JewelleryModel.fromMapItemModel(Map<String, dynamic> map) {
    return JewelleryModel.itemModel(
      itemId: map[JewelleryConstants.itemId] != null
          ? map[JewelleryConstants.itemId] as int
          : null,
      itemCustomerId: map[JewelleryConstants.itemCustomerId] != null
          ? map[JewelleryConstants.itemCustomerId] as String
          : null,
      itemCategoryId: map[JewelleryConstants.itemCategoryId] != null
          ? map[JewelleryConstants.itemCategoryId] as int
          : null,
      itemSubCategoryId: map[JewelleryConstants.itemSubCategoryId] != null
          ? map[JewelleryConstants.itemSubCategoryId] as int
          : null,
      itemImages: map[JewelleryConstants.itemImages] != null
          ? List<String>.from(
              (map[JewelleryConstants.itemImages] as List<String>))
          : null,
      itemTitle: map[JewelleryConstants.itemTitle] != null
          ? map[JewelleryConstants.itemTitle] as String
          : null,
      itemProvince: map[JewelleryConstants.itemProvince] != null
          ? map[JewelleryConstants.itemProvince] as int
          : null,
      itemRegion: map[JewelleryConstants.itemRegion] != null
          ? map[JewelleryConstants.itemRegion] as String
          : null,
      itemTotalPrice: map[JewelleryConstants.itemTotalPrice] != null
          ? map[JewelleryConstants.itemTotalPrice] as String
          : null,
      itemPriceType: map[JewelleryConstants.itemPriceType] != null
          ? map[JewelleryConstants.itemPriceType] as int
          : null,
      itemPublishStatus: map[JewelleryConstants.itemPublishStatus] != null
          ? map[JewelleryConstants.itemPublishStatus] as String
          : null,
      itemSoldStatus: map[JewelleryConstants.itemSoldStatus] != null
          ? map[JewelleryConstants.itemSoldStatus] as String
          : null,
      itemCreatedAt: map[JewelleryConstants.itemCreatedAt] != null
          ? map[JewelleryConstants.itemCreatedAt] as String
          : null,
      itemUpdatedAt: map[JewelleryConstants.itemUpdatedAt] != null
          ? map[JewelleryConstants.itemUpdatedAt] as String
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory JewelleryModel.fromJson(String source) =>
      JewelleryModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'JewelleryModel(itemId: $itemId, itemCustomerId: $itemCustomerId, itemCategoryId: $itemCategoryId, itemSubCategoryId: $itemSubCategoryId, itemImages: $itemImages, itemTitle: $itemTitle, itemProvince: $itemProvince, itemRegion: $itemRegion, itemTotalPrice: $itemTotalPrice, itemPriceType: $itemPriceType, itemType: $itemType, itemKarat: $itemKarat, itemKartyType: $itemKartyType, itemWeight: $itemWeight, itemConstructionWages: $itemConstructionWages, itemDescription: $itemDescription, itemStatus: $itemStatus, itemPublishStatus: $itemPublishStatus, itemSoldStatus: $itemSoldStatus, itemCreatedAt: $itemCreatedAt, itemUpdatedAt: $itemUpdatedAt)';
  }

  @override
  bool operator ==(covariant JewelleryModel other) {
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
        other.itemKarat == itemKarat &&
        other.itemKartyType == itemKartyType &&
        other.itemWeight == itemWeight &&
        other.itemConstructionWages == itemConstructionWages &&
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
        itemKarat.hashCode ^
        itemKartyType.hashCode ^
        itemWeight.hashCode ^
        itemConstructionWages.hashCode ^
        itemDescription.hashCode ^
        itemStatus.hashCode ^
        itemPublishStatus.hashCode ^
        itemSoldStatus.hashCode ^
        itemCreatedAt.hashCode ^
        itemUpdatedAt.hashCode;
  }
}
