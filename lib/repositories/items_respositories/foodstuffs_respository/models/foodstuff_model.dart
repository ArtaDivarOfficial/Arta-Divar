import 'dart:convert';

import 'package:divar/repositories/items_respositories/foodstuffs_respository/constants/constants.dart';
import 'package:flutter/foundation.dart';

class FoodstuffModel {
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
  final int? itemSalePriceType;
  final int? itemDiscountAmount;
  final int? itemDiscountAmountType;
  final String? itemDescription;
  final String? itemPublishStatus;
  final String? itemSoldStatus;
  final String? itemCreatedAt;
  final String? itemUpdatedAt;

  FoodstuffModel({
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
    required this.itemSalePriceType,
    required this.itemDiscountAmount,
    required this.itemDiscountAmountType,
    required this.itemDescription,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  FoodstuffModel.itemModel({
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
    this.itemSalePriceType = -1,
    this.itemDiscountAmount = -1,
    this.itemDiscountAmountType = -1,
    this.itemDescription = '',
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  FoodstuffModel copyWith({
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
    int? itemSalePriceType,
    int? itemDiscountAmount,
    int? itemDiscountAmountType,
    String? itemDescription,
    String? itemPublishStatus,
    String? itemSoldStatus,
    String? itemCreatedAt,
    String? itemUpdatedAt,
  }) {
    return FoodstuffModel(
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
      itemSalePriceType: itemSalePriceType ?? this.itemSalePriceType,
      itemDiscountAmount: itemDiscountAmount ?? this.itemDiscountAmount,
      itemDiscountAmountType:
          itemDiscountAmountType ?? this.itemDiscountAmountType,
      itemDescription: itemDescription ?? this.itemDescription,
      itemPublishStatus: itemPublishStatus ?? this.itemPublishStatus,
      itemSoldStatus: itemSoldStatus ?? this.itemSoldStatus,
      itemCreatedAt: itemCreatedAt ?? this.itemCreatedAt,
      itemUpdatedAt: itemUpdatedAt ?? this.itemUpdatedAt,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      FoodstuffsConstants.itemId: itemId,
      FoodstuffsConstants.itemCustomerId: itemCustomerId,
      FoodstuffsConstants.itemCategoryId: itemCategoryId,
      FoodstuffsConstants.itemSubCategoryId: itemSubCategoryId,
      FoodstuffsConstants.itemImages: itemImages,
      FoodstuffsConstants.itemTitle: itemTitle,
      FoodstuffsConstants.itemProvince: itemProvince,
      FoodstuffsConstants.itemRegion: itemRegion,
      FoodstuffsConstants.itemTotalPrice: itemTotalPrice,
      FoodstuffsConstants.itemPriceType: itemPriceType,
      FoodstuffsConstants.itemSalePriceType: itemSalePriceType,
      FoodstuffsConstants.itemDiscountAmount: itemDiscountAmount,
      FoodstuffsConstants.itemDiscountAmountType: itemDiscountAmountType,
      FoodstuffsConstants.itemDescription: itemDescription,
      FoodstuffsConstants.itemPublishStatus: itemPublishStatus,
      FoodstuffsConstants.itemSoldStatus: itemSoldStatus,
      FoodstuffsConstants.itemCreatedAt: itemCreatedAt,
      FoodstuffsConstants.itemUpdatedAt: itemUpdatedAt,
    };
  }

  Map<String, dynamic> toMapItemModel() {
    return <String, dynamic>{
      FoodstuffsConstants.itemId: itemId,
      FoodstuffsConstants.itemCustomerId: itemCustomerId,
      FoodstuffsConstants.itemCategoryId: itemCategoryId,
      FoodstuffsConstants.itemSubCategoryId: itemSubCategoryId,
      FoodstuffsConstants.itemImages: itemImages,
      FoodstuffsConstants.itemTitle: itemTitle,
      FoodstuffsConstants.itemProvince: itemProvince,
      FoodstuffsConstants.itemRegion: itemRegion,
      FoodstuffsConstants.itemTotalPrice: itemTotalPrice,
      FoodstuffsConstants.itemPriceType: itemPriceType,
      FoodstuffsConstants.itemSalePriceType: itemSalePriceType,
      FoodstuffsConstants.itemDiscountAmount: itemDiscountAmount,
      FoodstuffsConstants.itemDiscountAmountType: itemDiscountAmountType,
      FoodstuffsConstants.itemPublishStatus: itemPublishStatus,
      FoodstuffsConstants.itemSoldStatus: itemSoldStatus,
      FoodstuffsConstants.itemCreatedAt: itemCreatedAt,
      FoodstuffsConstants.itemUpdatedAt: itemUpdatedAt,
    };
  }

  factory FoodstuffModel.fromMap(Map<Object?, Object?> map) {
    return FoodstuffModel(
      itemId: map[FoodstuffsConstants.itemId] != null
          ? map[FoodstuffsConstants.itemId] as int
          : null,
      itemCustomerId: map[FoodstuffsConstants.itemCustomerId] != null
          ? map[FoodstuffsConstants.itemCustomerId] as String
          : null,
      itemCategoryId: map[FoodstuffsConstants.itemCategoryId] != null
          ? map[FoodstuffsConstants.itemCategoryId] as int
          : null,
      itemSubCategoryId: map[FoodstuffsConstants.itemSubCategoryId] != null
          ? map[FoodstuffsConstants.itemSubCategoryId] as int
          : null,
      itemImages: map[FoodstuffsConstants.itemImages] != null
          ? List<String>.from(
              (map[FoodstuffsConstants.itemImages] as List<String>))
          : null,
      itemTitle: map[FoodstuffsConstants.itemTitle] != null
          ? map[FoodstuffsConstants.itemTitle] as String
          : null,
      itemProvince: map[FoodstuffsConstants.itemProvince] != null
          ? map[FoodstuffsConstants.itemProvince] as int
          : null,
      itemRegion: map[FoodstuffsConstants.itemRegion] != null
          ? map[FoodstuffsConstants.itemRegion] as String
          : null,
      itemTotalPrice: map[FoodstuffsConstants.itemTotalPrice] != null
          ? map[FoodstuffsConstants.itemTotalPrice] as String
          : null,
      itemPriceType: map[FoodstuffsConstants.itemPriceType] != null
          ? map[FoodstuffsConstants.itemPriceType] as int
          : null,
      itemSalePriceType: map[FoodstuffsConstants.itemSalePriceType] != null
          ? map[FoodstuffsConstants.itemSalePriceType] as int
          : null,
      itemDiscountAmount: map[FoodstuffsConstants.itemDiscountAmount] != null
          ? map[FoodstuffsConstants.itemDiscountAmount] as int
          : null,
      itemDiscountAmountType:
          map[FoodstuffsConstants.itemDiscountAmountType] != null
              ? map[FoodstuffsConstants.itemDiscountAmountType] as int
              : null,
      itemDescription: map[FoodstuffsConstants.itemDescription] != null
          ? map[FoodstuffsConstants.itemDescription] as String
          : null,
      itemPublishStatus: map[FoodstuffsConstants.itemPublishStatus] != null
          ? map[FoodstuffsConstants.itemPublishStatus] as String
          : null,
      itemSoldStatus: map[FoodstuffsConstants.itemSoldStatus] != null
          ? map[FoodstuffsConstants.itemSoldStatus] as String
          : null,
      itemCreatedAt: map[FoodstuffsConstants.itemCreatedAt] != null
          ? map[FoodstuffsConstants.itemCreatedAt] as String
          : null,
      itemUpdatedAt: map[FoodstuffsConstants.itemUpdatedAt] != null
          ? map[FoodstuffsConstants.itemUpdatedAt] as String
          : null,
    );
  }

  factory FoodstuffModel.fromMapItemModel(Map<Object?, Object?> map) {
    return FoodstuffModel.itemModel(
      itemId: map[FoodstuffsConstants.itemId] != null
          ? map[FoodstuffsConstants.itemId] as int
          : null,
      itemCustomerId: map[FoodstuffsConstants.itemCustomerId] != null
          ? map[FoodstuffsConstants.itemCustomerId] as String
          : null,
      itemCategoryId: map[FoodstuffsConstants.itemCategoryId] != null
          ? map[FoodstuffsConstants.itemCategoryId] as int
          : null,
      itemSubCategoryId: map[FoodstuffsConstants.itemSubCategoryId] != null
          ? map[FoodstuffsConstants.itemSubCategoryId] as int
          : null,
      itemImages: map[FoodstuffsConstants.itemImages] != null
          ? List<String>.from(
              (map[FoodstuffsConstants.itemImages] as List<String>))
          : null,
      itemTitle: map[FoodstuffsConstants.itemTitle] != null
          ? map[FoodstuffsConstants.itemTitle] as String
          : null,
      itemProvince: map[FoodstuffsConstants.itemProvince] != null
          ? map[FoodstuffsConstants.itemProvince] as int
          : null,
      itemRegion: map[FoodstuffsConstants.itemRegion] != null
          ? map[FoodstuffsConstants.itemRegion] as String
          : null,
      itemTotalPrice: map[FoodstuffsConstants.itemTotalPrice] != null
          ? map[FoodstuffsConstants.itemTotalPrice] as String
          : null,
      itemPriceType: map[FoodstuffsConstants.itemPriceType] != null
          ? map[FoodstuffsConstants.itemPriceType] as int
          : null,
      itemSalePriceType: map[FoodstuffsConstants.itemSalePriceType] != null
          ? map[FoodstuffsConstants.itemSalePriceType] as int
          : null,
      itemDiscountAmount: map[FoodstuffsConstants.itemDiscountAmount] != null
          ? map[FoodstuffsConstants.itemDiscountAmount] as int
          : null,
      itemDiscountAmountType:
          map[FoodstuffsConstants.itemDiscountAmountType] != null
              ? map[FoodstuffsConstants.itemDiscountAmountType] as int
              : null,
      itemPublishStatus: map[FoodstuffsConstants.itemPublishStatus] != null
          ? map[FoodstuffsConstants.itemPublishStatus] as String
          : null,
      itemSoldStatus: map[FoodstuffsConstants.itemSoldStatus] != null
          ? map[FoodstuffsConstants.itemSoldStatus] as String
          : null,
      itemCreatedAt: map[FoodstuffsConstants.itemCreatedAt] != null
          ? map[FoodstuffsConstants.itemCreatedAt] as String
          : null,
      itemUpdatedAt: map[FoodstuffsConstants.itemUpdatedAt] != null
          ? map[FoodstuffsConstants.itemUpdatedAt] as String
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory FoodstuffModel.fromJson(String source) =>
      FoodstuffModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'FoodstuffModel(itemId: $itemId, itemCustomerId: $itemCustomerId, itemCategoryId: $itemCategoryId, itemSubCategoryId: $itemSubCategoryId, itemImages: $itemImages, itemTitle: $itemTitle, itemProvince: $itemProvince, itemRegion: $itemRegion, itemTotalPrice: $itemTotalPrice, itemPriceType: $itemPriceType, itemSalePriceType: $itemSalePriceType, itemDiscountAmount: $itemDiscountAmount, itemDiscountAmountType: $itemDiscountAmountType, itemSalePriceType: $itemSalePriceType, itemDiscountAmount: $itemDiscountAmount, itemDiscountAmountType: $itemDiscountAmountType, itemDescription: $itemDescription, itemPublishStatus: $itemPublishStatus, itemSoldStatus: $itemSoldStatus, itemCreatedAt: $itemCreatedAt, itemUpdatedAt: $itemUpdatedAt)';
  }

  @override
  bool operator ==(covariant FoodstuffModel other) {
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
        other.itemSalePriceType == itemSalePriceType &&
        other.itemDiscountAmount == itemDiscountAmount &&
        other.itemDiscountAmountType == itemDiscountAmountType &&
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
        itemTotalPrice.hashCode ^
        itemPriceType.hashCode ^
        itemSalePriceType.hashCode ^
        itemDiscountAmount.hashCode ^
        itemDiscountAmountType.hashCode ^
        itemDescription.hashCode ^
        itemPublishStatus.hashCode ^
        itemSoldStatus.hashCode ^
        itemCreatedAt.hashCode ^
        itemUpdatedAt.hashCode;
  }
}
