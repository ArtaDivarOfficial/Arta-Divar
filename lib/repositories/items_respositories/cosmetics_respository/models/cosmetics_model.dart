import 'dart:convert';

import 'package:divar/repositories/items_respositories/cosmetics_respository/constants/constants.dart';
import 'package:flutter/foundation.dart';

class CosmeticsModel {
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
  final String? itemBrand;
  final String? itemDescription;
  final int? itemStatus;
  final String? itemPublishStatus;
  final String? itemSoldStatus;
  final String? itemCreatedAt;
  final String? itemUpdatedAt;

  CosmeticsModel({
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
    required this.itemBrand,
    required this.itemDescription,
    required this.itemStatus,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  CosmeticsModel.itemModel({
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
    this.itemBrand = '',
    this.itemDescription = '',
    this.itemStatus = -1,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  CosmeticsModel.cosmeticsModel({
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
    required this.itemBrand,
    required this.itemDescription,
    required this.itemStatus,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  CosmeticsModel.bathroomAppliancesModel({
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
    required this.itemBrand,
    required this.itemDescription,
    required this.itemStatus,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  CosmeticsModel.oilTherapyModel({
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
    required this.itemBrand,
    required this.itemDescription,
    required this.itemStatus,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  CosmeticsModel.electronicAppliancesModel({
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
    required this.itemBrand,
    required this.itemDescription,
    required this.itemStatus,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  CosmeticsModel.otherCosmeticsModel({
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
    required this.itemBrand,
    required this.itemDescription,
    required this.itemStatus,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  CosmeticsModel copyWith({
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
    String? itemBrand,
    String? itemDescription,
    int? itemStatus,
    String? itemPublishStatus,
    String? itemSoldStatus,
    String? itemCreatedAt,
    String? itemUpdatedAt,
  }) {
    return CosmeticsModel(
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
      CosmeticsConstants.itemId: itemId,
      CosmeticsConstants.itemCustomerId: itemCustomerId,
      CosmeticsConstants.itemCategoryId: itemCategoryId,
      CosmeticsConstants.itemSubCategoryId: itemSubCategoryId,
      CosmeticsConstants.itemImages: itemImages,
      CosmeticsConstants.itemTitle: itemTitle,
      CosmeticsConstants.itemProvince: itemProvince,
      CosmeticsConstants.itemRegion: itemRegion,
      CosmeticsConstants.itemTotalPrice: itemTotalPrice,
      CosmeticsConstants.itemPriceType: itemPriceType,
      CosmeticsConstants.itemSalePriceType: itemSalePriceType,
      CosmeticsConstants.itemDiscountAmount: itemDiscountAmount,
      CosmeticsConstants.itemDiscountAmountType: itemDiscountAmountType,
      CosmeticsConstants.itemBrand: itemBrand,
      CosmeticsConstants.itemDescription: itemDescription,
      CosmeticsConstants.itemStatus: itemStatus,
      CosmeticsConstants.itemPublishStatus: itemPublishStatus,
      CosmeticsConstants.itemSoldStatus: itemSoldStatus,
      CosmeticsConstants.itemCreatedAt: itemCreatedAt,
      CosmeticsConstants.itemUpdatedAt: itemUpdatedAt,
    };
  }

  Map<String, dynamic> toMapItemModel() {
    return <String, dynamic>{
      CosmeticsConstants.itemId: itemId,
      CosmeticsConstants.itemCustomerId: itemCustomerId,
      CosmeticsConstants.itemCategoryId: itemCategoryId,
      CosmeticsConstants.itemSubCategoryId: itemSubCategoryId,
      CosmeticsConstants.itemImages: itemImages,
      CosmeticsConstants.itemTitle: itemTitle,
      CosmeticsConstants.itemProvince: itemProvince,
      CosmeticsConstants.itemRegion: itemRegion,
      CosmeticsConstants.itemTotalPrice: itemTotalPrice,
      CosmeticsConstants.itemPriceType: itemPriceType,
      CosmeticsConstants.itemSalePriceType: itemSalePriceType,
      CosmeticsConstants.itemDiscountAmount: itemDiscountAmount,
      CosmeticsConstants.itemDiscountAmountType: itemDiscountAmountType,
      CosmeticsConstants.itemPublishStatus: itemPublishStatus,
      CosmeticsConstants.itemSoldStatus: itemSoldStatus,
      CosmeticsConstants.itemCreatedAt: itemCreatedAt,
      CosmeticsConstants.itemUpdatedAt: itemUpdatedAt,
    };
  }

  factory CosmeticsModel.fromMap(Map<Object?, Object?> map) {
    return CosmeticsModel(
      itemId: map[CosmeticsConstants.itemId] != null
          ? map[CosmeticsConstants.itemId] as int
          : null,
      itemCustomerId: map[CosmeticsConstants.itemCustomerId] != null
          ? map[CosmeticsConstants.itemCustomerId] as String
          : null,
      itemCategoryId: map[CosmeticsConstants.itemCategoryId] != null
          ? map[CosmeticsConstants.itemCategoryId] as int
          : null,
      itemSubCategoryId: map[CosmeticsConstants.itemSubCategoryId] != null
          ? map[CosmeticsConstants.itemSubCategoryId] as int
          : null,
      itemImages: map[CosmeticsConstants.itemImages] != null
          ? List<String>.from(
              (map[CosmeticsConstants.itemImages] as List<String>))
          : null,
      itemTitle: map[CosmeticsConstants.itemTitle] != null
          ? map[CosmeticsConstants.itemTitle] as String
          : null,
      itemProvince: map[CosmeticsConstants.itemProvince] != null
          ? map[CosmeticsConstants.itemProvince] as int
          : null,
      itemRegion: map[CosmeticsConstants.itemRegion] != null
          ? map[CosmeticsConstants.itemRegion] as String
          : null,
      itemTotalPrice: map[CosmeticsConstants.itemTotalPrice] != null
          ? map[CosmeticsConstants.itemTotalPrice] as String
          : null,
      itemPriceType: map[CosmeticsConstants.itemPriceType] != null
          ? map[CosmeticsConstants.itemPriceType] as int
          : null,
      itemSalePriceType: map[CosmeticsConstants.itemSalePriceType] != null
          ? map[CosmeticsConstants.itemSalePriceType] as int
          : null,
      itemDiscountAmount: map[CosmeticsConstants.itemDiscountAmount] != null
          ? map[CosmeticsConstants.itemDiscountAmount] as int
          : null,
      itemDiscountAmountType:
          map[CosmeticsConstants.itemDiscountAmountType] != null
              ? map[CosmeticsConstants.itemDiscountAmountType] as int
              : null,
      itemBrand: map[CosmeticsConstants.itemBrand] != null
          ? map[CosmeticsConstants.itemBrand] as String
          : null,
      itemDescription: map[CosmeticsConstants.itemDescription] != null
          ? map[CosmeticsConstants.itemDescription] as String
          : null,
      itemStatus: map[CosmeticsConstants.itemStatus] != null
          ? map[CosmeticsConstants.itemStatus] as int
          : null,
      itemPublishStatus: map[CosmeticsConstants.itemPublishStatus] != null
          ? map[CosmeticsConstants.itemPublishStatus] as String
          : null,
      itemSoldStatus: map[CosmeticsConstants.itemSoldStatus] != null
          ? map[CosmeticsConstants.itemSoldStatus] as String
          : null,
      itemCreatedAt: map[CosmeticsConstants.itemCreatedAt] != null
          ? map[CosmeticsConstants.itemCreatedAt] as String
          : null,
      itemUpdatedAt: map[CosmeticsConstants.itemUpdatedAt] != null
          ? map[CosmeticsConstants.itemUpdatedAt] as String
          : null,
    );
  }

  factory CosmeticsModel.fromMapItemModel(Map<Object?, Object?> map) {
    return CosmeticsModel.itemModel(
      itemId: map[CosmeticsConstants.itemId] != null
          ? map[CosmeticsConstants.itemId] as int
          : null,
      itemCustomerId: map[CosmeticsConstants.itemCustomerId] != null
          ? map[CosmeticsConstants.itemCustomerId] as String
          : null,
      itemCategoryId: map[CosmeticsConstants.itemCategoryId] != null
          ? map[CosmeticsConstants.itemCategoryId] as int
          : null,
      itemSubCategoryId: map[CosmeticsConstants.itemSubCategoryId] != null
          ? map[CosmeticsConstants.itemCategoryId] as int
          : null,
      itemImages: map[CosmeticsConstants.itemImages] != null
          ? List<String>.from(
              (map[CosmeticsConstants.itemImages] as List<String>))
          : null,
      itemTitle: map[CosmeticsConstants.itemTitle] != null
          ? map[CosmeticsConstants.itemTitle] as String
          : null,
      itemProvince: map[CosmeticsConstants.itemProvince] != null
          ? map[CosmeticsConstants.itemProvince] as int
          : null,
      itemRegion: map[CosmeticsConstants.itemRegion] != null
          ? map[CosmeticsConstants.itemRegion] as String
          : null,
      itemTotalPrice: map[CosmeticsConstants.itemTotalPrice] != null
          ? map[CosmeticsConstants.itemTotalPrice] as String
          : null,
      itemPriceType: map[CosmeticsConstants.itemPriceType] != null
          ? map[CosmeticsConstants.itemPriceType] as int
          : null,
      itemSalePriceType: map[CosmeticsConstants.itemSalePriceType] != null
          ? map[CosmeticsConstants.itemSalePriceType] as int
          : null,
      itemDiscountAmount: map[CosmeticsConstants.itemDiscountAmount] != null
          ? map[CosmeticsConstants.itemDiscountAmount] as int
          : null,
      itemDiscountAmountType:
          map[CosmeticsConstants.itemDiscountAmountType] != null
              ? map[CosmeticsConstants.itemDiscountAmountType] as int
              : null,
      itemDescription: map[CosmeticsConstants.itemDescription] != null
          ? map[CosmeticsConstants.itemDescription] as String
          : null,
      itemPublishStatus: map[CosmeticsConstants.itemPublishStatus] != null
          ? map[CosmeticsConstants.itemPublishStatus] as String
          : null,
      itemSoldStatus: map[CosmeticsConstants.itemSoldStatus] != null
          ? map[CosmeticsConstants.itemSoldStatus] as String
          : null,
      itemCreatedAt: map[CosmeticsConstants.itemCreatedAt] != null
          ? map[CosmeticsConstants.itemCreatedAt] as String
          : null,
      itemUpdatedAt: map[CosmeticsConstants.itemUpdatedAt] != null
          ? map[CosmeticsConstants.itemUpdatedAt] as String
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory CosmeticsModel.fromJson(String source) =>
      CosmeticsModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'CosmeticsModel(itemId: $itemId, itemCustomerId: $itemCustomerId, itemCategoryId: $itemCategoryId, itemSubCategoryId: $itemSubCategoryId, itemImages: $itemImages, itemTitle: $itemTitle, itemProvince: $itemProvince, itemRegion: $itemRegion, itemTotalPrice: $itemTotalPrice, itemPriceType: $itemPriceType, itemSalePriceType: $itemSalePriceType, itemDiscountAmount: $itemDiscountAmount, itemDiscountAmountType: $itemDiscountAmountType, itemBrand: $itemBrand, itemDescription: $itemDescription, itemStatus: $itemStatus, itemPublishStatus: $itemPublishStatus, itemSoldStatus: $itemSoldStatus, itemCreatedAt: $itemCreatedAt, itemUpdatedAt: $itemUpdatedAt)';
  }

  @override
  bool operator ==(covariant CosmeticsModel other) {
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
        itemSalePriceType.hashCode ^
        itemDiscountAmount.hashCode ^
        itemDiscountAmountType.hashCode ^
        itemBrand.hashCode ^
        itemDescription.hashCode ^
        itemStatus.hashCode ^
        itemPublishStatus.hashCode ^
        itemSoldStatus.hashCode ^
        itemCreatedAt.hashCode ^
        itemUpdatedAt.hashCode;
  }
}
