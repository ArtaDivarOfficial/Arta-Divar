import 'dart:convert';

import 'package:divar/repositories/items_respositories/scrap_respository/constants/constants.dart';
import 'package:flutter/foundation.dart';

class ScrapModel {
  final int? itemId;
  final String? itemCustomerId;
  final int? itemCategoryId;
  final int? itemSubCategoryId;
  final List<String>? itemImages;
  final String? itemTitle;
  final int? itemProvince;
  final String? itemRegion;
  final double? itemPerMeterPrice;
  final int? itemPriceType;
  final int? itemSalePriceType;
  final int? itemDiscountAmount;
  final int? itemType;
  final String? itemBrand;
  final String? itemColor;
  final String? itemDescription;
  final String? itemPublishStatus;
  final String? itemSoldStatus;
  final String? itemCreatedAt;
  final String? itemUpdatedAt;

  ScrapModel({
    required this.itemId,
    required this.itemCustomerId,
    required this.itemCategoryId,
    required this.itemSubCategoryId,
    required this.itemImages,
    required this.itemTitle,
    required this.itemProvince,
    required this.itemRegion,
    required this.itemPerMeterPrice,
    required this.itemPriceType,
    required this.itemSalePriceType,
    required this.itemDiscountAmount,
    required this.itemType,
    required this.itemBrand,
    required this.itemColor,
    required this.itemDescription,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  ScrapModel.itemModel({
    required this.itemId,
    required this.itemCustomerId,
    required this.itemCategoryId,
    required this.itemSubCategoryId,
    required this.itemImages,
    required this.itemTitle,
    required this.itemProvince,
    required this.itemRegion,
    required this.itemPerMeterPrice,
    required this.itemPriceType,
    this.itemSalePriceType = -1,
    this.itemDiscountAmount = -1,
    this.itemType = -1,
    this.itemBrand = '',
    this.itemColor = '',
    this.itemDescription = '',
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  ScrapModel.scrapModel({
    required this.itemId,
    required this.itemCustomerId,
    required this.itemCategoryId,
    required this.itemSubCategoryId,
    required this.itemImages,
    required this.itemTitle,
    required this.itemProvince,
    required this.itemRegion,
    required this.itemPerMeterPrice,
    required this.itemPriceType,
    required this.itemSalePriceType,
    required this.itemDiscountAmount,
    required this.itemType,
    required this.itemBrand,
    required this.itemColor,
    required this.itemDescription,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  ScrapModel copyWith({
    int? itemId,
    String? itemCustomerId,
    int? itemCategoryId,
    int? itemSubCategoryId,
    List<String>? itemImages,
    String? itemTitle,
    int? itemProvince,
    String? itemRegion,
    double? itemPerMeterPrice,
    int? itemPriceType,
    int? itemSalePriceType,
    int? itemDiscountAmount,
    int? itemDiscountAmountType,
    int? itemType,
    String? itemBrand,
    String? itemColor,
    String? itemDescription,
    int? itemStatus,
    String? itemPublishStatus,
    String? itemSoldStatus,
    String? itemCreatedAt,
    String? itemUpdatedAt,
  }) {
    return ScrapModel(
      itemId: itemId ?? this.itemId,
      itemCustomerId: itemCustomerId ?? this.itemCustomerId,
      itemCategoryId: itemCategoryId ?? this.itemCategoryId,
      itemSubCategoryId: itemSubCategoryId ?? this.itemSubCategoryId,
      itemImages: itemImages ?? this.itemImages,
      itemTitle: itemTitle ?? this.itemTitle,
      itemProvince: itemProvince ?? this.itemProvince,
      itemRegion: itemRegion ?? this.itemRegion,
      itemPerMeterPrice: itemPerMeterPrice ?? this.itemPerMeterPrice,
      itemPriceType: itemPriceType ?? this.itemPriceType,
      itemSalePriceType: itemSalePriceType ?? this.itemSalePriceType,
      itemDiscountAmount: itemDiscountAmount ?? this.itemDiscountAmount,
      itemType: itemType ?? this.itemType,
      itemBrand: itemBrand ?? this.itemBrand,
      itemColor: itemColor ?? this.itemColor,
      itemDescription: itemDescription ?? this.itemDescription,
      itemPublishStatus: itemPublishStatus ?? this.itemPublishStatus,
      itemSoldStatus: itemSoldStatus ?? this.itemSoldStatus,
      itemCreatedAt: itemCreatedAt ?? this.itemCreatedAt,
      itemUpdatedAt: itemUpdatedAt ?? this.itemUpdatedAt,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      ScrapConstants.itemId: itemId,
      ScrapConstants.itemCustomerId: itemCustomerId,
      ScrapConstants.itemCategoryId: itemCategoryId,
      ScrapConstants.itemSubCategoryId: itemSubCategoryId,
      ScrapConstants.itemImages: itemImages,
      ScrapConstants.itemTitle: itemTitle,
      ScrapConstants.itemProvince: itemProvince,
      ScrapConstants.itemRegion: itemRegion,
      ScrapConstants.itemPerMeterPrice: itemPerMeterPrice,
      ScrapConstants.itemPriceType: itemPriceType,
      ScrapConstants.itemSalePriceType: itemSalePriceType,
      ScrapConstants.itemDiscountAmount: itemDiscountAmount,
      ScrapConstants.itemType: itemType,
      ScrapConstants.itemBrand: itemBrand,
      ScrapConstants.itemColor: itemColor,
      ScrapConstants.itemDescription: itemDescription,
      ScrapConstants.itemPublishStatus: itemPublishStatus,
      ScrapConstants.itemSoldStatus: itemSoldStatus,
      ScrapConstants.itemCreatedAt: itemCreatedAt,
      ScrapConstants.itemUpdatedAt: itemUpdatedAt,
    };
  }

  Map<String, dynamic> toMapItemModel() {
    return <String, dynamic>{
      ScrapConstants.itemId: itemId,
      ScrapConstants.itemCustomerId: itemCustomerId,
      ScrapConstants.itemCategoryId: itemCategoryId,
      ScrapConstants.itemSubCategoryId: itemSubCategoryId,
      ScrapConstants.itemImages: itemImages,
      ScrapConstants.itemTitle: itemTitle,
      ScrapConstants.itemProvince: itemProvince,
      ScrapConstants.itemRegion: itemRegion,
      ScrapConstants.itemPerMeterPrice: itemPerMeterPrice,
      ScrapConstants.itemPriceType: itemPriceType,
      ScrapConstants.itemSalePriceType: itemSalePriceType,
      ScrapConstants.itemDiscountAmount: itemDiscountAmount,
      ScrapConstants.itemPublishStatus: itemPublishStatus,
      ScrapConstants.itemSoldStatus: itemSoldStatus,
      ScrapConstants.itemCreatedAt: itemCreatedAt,
      ScrapConstants.itemUpdatedAt: itemUpdatedAt,
    };
  }

  factory ScrapModel.fromMap(Map<Object?, Object?> map) {
    return ScrapModel(
      itemId: map[ScrapConstants.itemId] != null
          ? map[ScrapConstants.itemId] as int
          : null,
      itemCustomerId: map[ScrapConstants.itemCustomerId] != null
          ? map[ScrapConstants.itemCustomerId] as String
          : null,
      itemCategoryId: map[ScrapConstants.itemCategoryId] != null
          ? map[ScrapConstants.itemCategoryId] as int
          : null,
      itemSubCategoryId: map[ScrapConstants.itemSubCategoryId] != null
          ? map[ScrapConstants.itemSubCategoryId] as int
          : null,
      itemImages: map[ScrapConstants.itemImages] != null
          ? List<String>.from((map[ScrapConstants.itemImages] as List<String>))
          : null,
      itemTitle: map[ScrapConstants.itemTitle] != null
          ? map[ScrapConstants.itemTitle] as String
          : null,
      itemProvince: map[ScrapConstants.itemProvince] != null
          ? map[ScrapConstants.itemProvince] as int
          : null,
      itemRegion: map[ScrapConstants.itemRegion] != null
          ? map[ScrapConstants.itemRegion] as String
          : null,
      itemPerMeterPrice: map[ScrapConstants.itemPerMeterPrice] != null
          ? map[ScrapConstants.itemPerMeterPrice] as double
          : null,
      itemPriceType: map[ScrapConstants.itemPriceType] != null
          ? map[ScrapConstants.itemPriceType] as int
          : null,
      itemSalePriceType: map[ScrapConstants.itemSalePriceType] != null
          ? map[ScrapConstants.itemSalePriceType] as int
          : null,
      itemDiscountAmount: map[ScrapConstants.itemDiscountAmount] != null
          ? map[ScrapConstants.itemDiscountAmount] as int
          : null,
      itemType: map[ScrapConstants.itemType] != null
          ? map[ScrapConstants.itemType] as int
          : null,
      itemBrand: map[ScrapConstants.itemBrand] != null
          ? map[ScrapConstants.itemBrand] as String
          : null,
      itemColor: map[ScrapConstants.itemColor] != null
          ? map[ScrapConstants.itemColor] as String
          : null,
      itemDescription: map[ScrapConstants.itemDescription] != null
          ? map[ScrapConstants.itemDescription] as String
          : null,
      itemPublishStatus: map[ScrapConstants.itemPublishStatus] != null
          ? map[ScrapConstants.itemPublishStatus] as String
          : null,
      itemSoldStatus: map[ScrapConstants.itemSoldStatus] != null
          ? map[ScrapConstants.itemSoldStatus] as String
          : null,
      itemCreatedAt: map[ScrapConstants.itemCreatedAt] != null
          ? map[ScrapConstants.itemCreatedAt] as String
          : null,
      itemUpdatedAt: map[ScrapConstants.itemUpdatedAt] != null
          ? map[ScrapConstants.itemUpdatedAt] as String
          : null,
    );
  }

  factory ScrapModel.fromMapItemModel(Map<Object?, Object?> map) {
    return ScrapModel.itemModel(
      itemId: map[ScrapConstants.itemId] != null
          ? map[ScrapConstants.itemId] as int
          : null,
      itemCustomerId: map[ScrapConstants.itemCustomerId] != null
          ? map[ScrapConstants.itemCustomerId] as String
          : null,
      itemCategoryId: map[ScrapConstants.itemCategoryId] != null
          ? map[ScrapConstants.itemCategoryId] as int
          : null,
      itemSubCategoryId: map[ScrapConstants.itemSubCategoryId] != null
          ? map[ScrapConstants.itemSubCategoryId] as int
          : null,
      itemImages: map[ScrapConstants.itemImages] != null
          ? List<String>.from((map[ScrapConstants.itemImages] as List<String>))
          : null,
      itemTitle: map[ScrapConstants.itemTitle] != null
          ? map[ScrapConstants.itemTitle] as String
          : null,
      itemProvince: map[ScrapConstants.itemProvince] != null
          ? map[ScrapConstants.itemProvince] as int
          : null,
      itemRegion: map[ScrapConstants.itemRegion] != null
          ? map[ScrapConstants.itemRegion] as String
          : null,
      itemPerMeterPrice: map[ScrapConstants.itemPerMeterPrice] != null
          ? map[ScrapConstants.itemPerMeterPrice] as double
          : null,
      itemPriceType: map[ScrapConstants.itemPriceType] != null
          ? map[ScrapConstants.itemPriceType] as int
          : null,
      itemSalePriceType: map[ScrapConstants.itemSalePriceType] != null
          ? map[ScrapConstants.itemSalePriceType] as int
          : null,
      itemDiscountAmount: map[ScrapConstants.itemDiscountAmount] != null
          ? map[ScrapConstants.itemDiscountAmount] as int
          : null,
      itemPublishStatus: map[ScrapConstants.itemPublishStatus] != null
          ? map[ScrapConstants.itemPublishStatus] as String
          : null,
      itemSoldStatus: map[ScrapConstants.itemSoldStatus] != null
          ? map[ScrapConstants.itemSoldStatus] as String
          : null,
      itemCreatedAt: map[ScrapConstants.itemCreatedAt] != null
          ? map[ScrapConstants.itemCreatedAt] as String
          : null,
      itemUpdatedAt: map[ScrapConstants.itemUpdatedAt] != null
          ? map[ScrapConstants.itemUpdatedAt] as String
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ScrapModel.fromJson(String source) =>
      ScrapModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ScrapModel(itemId: $itemId, itemCustomerId: $itemCustomerId, itemCategoryId: $itemCategoryId, itemSubCategoryId: $itemSubCategoryId, itemImages: $itemImages, itemTitle: $itemTitle, itemProvince: $itemProvince, itemRegion: $itemRegion, itemPerMeterPrice: $itemPerMeterPrice, itemPriceType: $itemPriceType, itemSalePriceType: $itemSalePriceType, itemDiscountAmount: $itemDiscountAmount, itemType: $itemType, itemBrand: $itemBrand, itemColor: $itemColor, itemDescription: $itemDescription, itemPublishStatus: $itemPublishStatus, itemSoldStatus: $itemSoldStatus, itemCreatedAt: $itemCreatedAt, itemUpdatedAt: $itemUpdatedAt)';
  }

  @override
  bool operator ==(covariant ScrapModel other) {
    if (identical(this, other)) return true;

    return other.itemId == itemId &&
        other.itemCustomerId == itemCustomerId &&
        other.itemCategoryId == itemCategoryId &&
        other.itemSubCategoryId == itemSubCategoryId &&
        listEquals(other.itemImages, itemImages) &&
        other.itemTitle == itemTitle &&
        other.itemProvince == itemProvince &&
        other.itemRegion == itemRegion &&
        other.itemPerMeterPrice == itemPerMeterPrice &&
        other.itemPriceType == itemPriceType &&
        other.itemSalePriceType == itemSalePriceType &&
        other.itemDiscountAmount == itemDiscountAmount &&
        other.itemType == itemType &&
        other.itemBrand == itemBrand &&
        other.itemColor == itemColor &&
        other.itemDescription == itemDescription &&
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
        itemPerMeterPrice.hashCode ^
        itemPriceType.hashCode ^
        itemSalePriceType.hashCode ^
        itemDiscountAmount.hashCode ^
        itemType.hashCode ^
        itemBrand.hashCode ^
        itemColor.hashCode ^
        itemDescription.hashCode ^
        itemPublishStatus.hashCode ^
        itemSoldStatus.hashCode ^
        itemCreatedAt.hashCode ^
        itemUpdatedAt.hashCode;
  }
}
