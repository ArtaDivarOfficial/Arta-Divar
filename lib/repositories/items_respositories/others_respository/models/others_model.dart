import 'dart:convert';

import 'package:divar/repositories/items_respositories/others_respository/constants/constants.dart';
import 'package:flutter/foundation.dart';

class OthersModel {
  final int? itemId;
  final String? itemCustomerId;
  final int? itemCategoryId;
  final int? itemSubCategoryId;
  final List<String>? itemImages;
  final String? itemTitle;
  final int? itemProvince;
  final String? itemRegion;
  final double? itemTotalPrice;
  final int? itemPriceType;
  final int? itemSalePriceType;
  final int? itemDiscountAmount;
  final int? itemDiscountAmountType;
  final String? itemDescription;
  final int? itemStatus;
  final String? itemPublishStatus;
  final String? itemSoldStatus;
  final String? itemCreatedAt;
  final String? itemUpdatedAt;

  OthersModel({
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
    required this.itemStatus,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  OthersModel.itemModel({
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
    this.itemStatus = -1,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  OthersModel.otherModel({
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
    required this.itemStatus,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  OthersModel copyWith({
    int? itemId,
    String? itemCustomerId,
    int? itemCategoryId,
    int? itemSubCategoryId,
    List<String>? itemImages,
    String? itemTitle,
    int? itemProvince,
    String? itemRegion,
    double? itemTotalPrice,
    int? itemPriceType,
    int? itemSalePriceType,
    int? itemDiscountAmount,
    int? itemDiscountAmountType,
    String? itemDescription,
    int? itemStatus,
    String? itemPublishStatus,
    String? itemSoldStatus,
    String? itemCreatedAt,
    String? itemUpdatedAt,
  }) {
    return OthersModel(
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
      itemStatus: itemStatus ?? this.itemStatus,
      itemPublishStatus: itemPublishStatus ?? this.itemPublishStatus,
      itemSoldStatus: itemSoldStatus ?? this.itemSoldStatus,
      itemCreatedAt: itemCreatedAt ?? this.itemCreatedAt,
      itemUpdatedAt: itemUpdatedAt ?? this.itemUpdatedAt,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      OthersConstants.itemId: itemId,
      OthersConstants.itemCustomerId: itemCustomerId,
      OthersConstants.itemCategoryId: itemCategoryId,
      OthersConstants.itemSubCategoryId: itemSubCategoryId,
      OthersConstants.itemImages: itemImages,
      OthersConstants.itemTitle: itemTitle,
      OthersConstants.itemProvince: itemProvince,
      OthersConstants.itemRegion: itemRegion,
      OthersConstants.itemTotalPrice: itemTotalPrice,
      OthersConstants.itemPriceType: itemPriceType,
      OthersConstants.itemSalePriceType: itemSalePriceType,
      OthersConstants.itemDiscountAmount: itemDiscountAmount,
      OthersConstants.itemDiscountAmountType: itemDiscountAmountType,
      OthersConstants.itemDescription: itemDescription,
      OthersConstants.itemStatus: itemStatus,
      OthersConstants.itemPublishStatus: itemPublishStatus,
      OthersConstants.itemSoldStatus: itemSoldStatus,
      OthersConstants.itemCreatedAt: itemCreatedAt,
      OthersConstants.itemUpdatedAt: itemUpdatedAt,
    };
  }

  Map<String, dynamic> toMapItemModel() {
    return <String, dynamic>{
      OthersConstants.itemId: itemId,
      OthersConstants.itemCustomerId: itemCustomerId,
      OthersConstants.itemCategoryId: itemCategoryId,
      OthersConstants.itemSubCategoryId: itemSubCategoryId,
      OthersConstants.itemImages: itemImages,
      OthersConstants.itemTitle: itemTitle,
      OthersConstants.itemProvince: itemProvince,
      OthersConstants.itemRegion: itemRegion,
      OthersConstants.itemTotalPrice: itemTotalPrice,
      OthersConstants.itemPriceType: itemPriceType,
      OthersConstants.itemSalePriceType: itemSalePriceType,
      OthersConstants.itemDiscountAmount: itemDiscountAmount,
      OthersConstants.itemDiscountAmountType: itemDiscountAmountType,
      OthersConstants.itemPublishStatus: itemPublishStatus,
      OthersConstants.itemSoldStatus: itemSoldStatus,
      OthersConstants.itemCreatedAt: itemCreatedAt,
      OthersConstants.itemUpdatedAt: itemUpdatedAt,
    };
  }

  factory OthersModel.fromMap(Map<Object?, Object?> map) {
    return OthersModel(
      itemId: map[OthersConstants.itemId] != null
          ? map[OthersConstants.itemId] as int
          : null,
      itemCustomerId: map[OthersConstants.itemCustomerId] != null
          ? map[OthersConstants.itemCustomerId] as String
          : null,
      itemCategoryId: map[OthersConstants.itemCategoryId] != null
          ? map[OthersConstants.itemCategoryId] as int
          : null,
      itemSubCategoryId: map[OthersConstants.itemSubCategoryId] != null
          ? map[OthersConstants.itemSubCategoryId] as int
          : null,
      itemImages: map[OthersConstants.itemImages] != null
          ? List<String>.from((map[OthersConstants.itemImages] as List<String>))
          : null,
      itemTitle: map[OthersConstants.itemTitle] != null
          ? map[OthersConstants.itemTitle] as String
          : null,
      itemProvince: map[OthersConstants.itemProvince] != null
          ? map[OthersConstants.itemProvince] as int
          : null,
      itemRegion: map[OthersConstants.itemRegion] != null
          ? map[OthersConstants.itemRegion] as String
          : null,
      itemTotalPrice: map[OthersConstants.itemTotalPrice] != null
          ? map[OthersConstants.itemTotalPrice] as double
          : null,
      itemPriceType: map[OthersConstants.itemPriceType] != null
          ? map[OthersConstants.itemPriceType] as int
          : null,
      itemSalePriceType: map[OthersConstants.itemSalePriceType] != null
          ? map[OthersConstants.itemSalePriceType] as int
          : null,
      itemDiscountAmount: map[OthersConstants.itemDiscountAmount] != null
          ? map[OthersConstants.itemDiscountAmount] as int
          : null,
      itemDiscountAmountType:
          map[OthersConstants.itemDiscountAmountType] != null
              ? map[OthersConstants.itemDiscountAmountType] as int
              : null,
      itemDescription: map[OthersConstants.itemDescription] != null
          ? map[OthersConstants.itemDescription] as String
          : null,
      itemStatus: map[OthersConstants.itemStatus] != null
          ? map[OthersConstants.itemStatus] as int
          : null,
      itemPublishStatus: map[OthersConstants.itemPublishStatus] != null
          ? map[OthersConstants.itemPublishStatus] as String
          : null,
      itemSoldStatus: map[OthersConstants.itemSoldStatus] != null
          ? map[OthersConstants.itemSoldStatus] as String
          : null,
      itemCreatedAt: map[OthersConstants.itemCreatedAt] != null
          ? map[OthersConstants.itemCreatedAt] as String
          : null,
      itemUpdatedAt: map[OthersConstants.itemUpdatedAt] != null
          ? map[OthersConstants.itemUpdatedAt] as String
          : null,
    );
  }

  factory OthersModel.fromMapItemModel(Map<Object?, Object?> map) {
    return OthersModel.itemModel(
      itemId: map[OthersConstants.itemId] != null
          ? map[OthersConstants.itemId] as int
          : null,
      itemCustomerId: map[OthersConstants.itemCustomerId] != null
          ? map[OthersConstants.itemCustomerId] as String
          : null,
      itemCategoryId: map[OthersConstants.itemCategoryId] != null
          ? map[OthersConstants.itemCategoryId] as int
          : null,
      itemSubCategoryId: map[OthersConstants.itemSubCategoryId] != null
          ? map[OthersConstants.itemSubCategoryId] as int
          : null,
      itemImages: map[OthersConstants.itemImages] != null
          ? List<String>.from((map[OthersConstants.itemImages] as List<String>))
          : null,
      itemTitle: map[OthersConstants.itemTitle] != null
          ? map[OthersConstants.itemTitle] as String
          : null,
      itemProvince: map[OthersConstants.itemProvince] != null
          ? map[OthersConstants.itemProvince] as int
          : null,
      itemRegion: map[OthersConstants.itemRegion] != null
          ? map[OthersConstants.itemRegion] as String
          : null,
      itemTotalPrice: map[OthersConstants.itemTotalPrice] != null
          ? map[OthersConstants.itemTotalPrice] as double
          : null,
      itemPriceType: map[OthersConstants.itemPriceType] != null
          ? map[OthersConstants.itemPriceType] as int
          : null,
      itemSalePriceType: map[OthersConstants.itemSalePriceType] != null
          ? map[OthersConstants.itemSalePriceType] as int
          : null,
      itemDiscountAmount: map[OthersConstants.itemDiscountAmount] != null
          ? map[OthersConstants.itemDiscountAmount] as int
          : null,
      itemDiscountAmountType:
          map[OthersConstants.itemDiscountAmountType] != null
              ? map[OthersConstants.itemDiscountAmountType] as int
              : null,
      itemPublishStatus: map[OthersConstants.itemPublishStatus] != null
          ? map[OthersConstants.itemPublishStatus] as String
          : null,
      itemSoldStatus: map[OthersConstants.itemSoldStatus] != null
          ? map[OthersConstants.itemSoldStatus] as String
          : null,
      itemCreatedAt: map[OthersConstants.itemCreatedAt] != null
          ? map[OthersConstants.itemCreatedAt] as String
          : null,
      itemUpdatedAt: map[OthersConstants.itemUpdatedAt] != null
          ? map[OthersConstants.itemUpdatedAt] as String
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory OthersModel.fromJson(String source) =>
      OthersModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'OthersModel(itemId: $itemId, itemCustomerId: $itemCustomerId, itemCategoryId: $itemCategoryId, itemSubCategoryId: $itemSubCategoryId, itemImages: $itemImages, itemTitle: $itemTitle, itemProvince: $itemProvince, itemRegion: $itemRegion, itemTotalPrice: $itemTotalPrice, itemPriceType: $itemPriceType, itemSalePriceType: $itemSalePriceType, itemDiscountAmount: $itemDiscountAmount, itemDiscountAmountType: $itemDiscountAmountType, itemDescription: $itemDescription, itemStatus: $itemStatus, itemPublishStatus: $itemPublishStatus, itemSoldStatus: $itemSoldStatus, itemCreatedAt: $itemCreatedAt, itemUpdatedAt: $itemUpdatedAt)';
  }

  @override
  bool operator ==(covariant OthersModel other) {
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
        itemSalePriceType.hashCode ^
        itemDiscountAmount.hashCode ^
        itemDiscountAmountType.hashCode ^
        itemDescription.hashCode ^
        itemStatus.hashCode ^
        itemPublishStatus.hashCode ^
        itemSoldStatus.hashCode ^
        itemCreatedAt.hashCode ^
        itemUpdatedAt.hashCode;
  }
}
