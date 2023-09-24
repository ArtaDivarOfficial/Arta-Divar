import 'dart:convert';

import 'package:divar/heplers/functions/helper_functions.dart';
import 'package:divar/repositories/items_respositories/bags_respository/constants/constants.dart';
import 'package:flutter/foundation.dart';

class BagModel {
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
  final int? itemType;
  final String? itemMaterial;
  final String? itemDescription;
  final int? itemStatus;
  final String? itemPublishStatus;
  final String? itemSoldStatus;
  final String? itemCreatedAt;
  final String? itemUpdatedAt;

  BagModel({
    this.itemId = -1,
    required this.itemCustomerId,
    required this.itemCategoryId,
    required this.itemSubCategoryId,
    required this.itemImages,
    required this.itemTitle,
    required this.itemProvince,
    required this.itemRegion,
    required this.itemTotalPrice,
    this.itemPriceType = 0,
    required this.itemSalePriceType,
    required this.itemDiscountAmount,
    required this.itemType,
    required this.itemMaterial,
    required this.itemDescription,
    required this.itemStatus,
    this.itemPublishStatus = '',
    this.itemSoldStatus = '',
    this.itemCreatedAt = '',
    this.itemUpdatedAt = '',
  });

  BagModel.itemModel({
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
    this.itemType = -1,
    this.itemMaterial = '',
    this.itemDescription = '',
    this.itemStatus = -1,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  BagModel.backpackModel({
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
    required this.itemType,
    required this.itemMaterial,
    required this.itemDescription,
    required this.itemStatus,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  BagModel.travelBagModel({
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
    this.itemType = -1,
    required this.itemMaterial,
    required this.itemDescription,
    required this.itemStatus,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  BagModel.purseModel({
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
    this.itemType = -1,
    required this.itemMaterial,
    required this.itemDescription,
    required this.itemStatus,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  BagModel.walletModel({
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
    this.itemType = -1,
    required this.itemMaterial,
    required this.itemDescription,
    required this.itemStatus,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  BagModel.otherBagsModel({
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
    this.itemType = -1,
    required this.itemMaterial,
    required this.itemDescription,
    required this.itemStatus,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  BagModel copyWith({
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
    int? itemType,
    String? itemMaterial,
    String? itemColor,
    String? itemDescription,
    int? itemStatus,
    String? itemPublishStatus,
    String? itemSoldStatus,
    String? itemCreatedAt,
    String? itemUpdatedAt,
  }) {
    return BagModel(
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
      itemType: itemType ?? this.itemType,
      itemMaterial: itemMaterial ?? this.itemMaterial,
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
      BagConstants.itemId: itemId,
      BagConstants.itemCustomerId: itemCustomerId,
      BagConstants.itemCategoryId: itemCategoryId,
      BagConstants.itemSubCategoryId: itemSubCategoryId,
      BagConstants.itemImages: itemImages,
      BagConstants.itemTitle: itemTitle,
      BagConstants.itemProvince: itemProvince,
      BagConstants.itemRegion: itemRegion,
      BagConstants.itemTotalPrice: itemTotalPrice,
      BagConstants.itemPriceType: itemPriceType,
      BagConstants.itemSalePriceType: itemSalePriceType,
      BagConstants.itemDiscountAmount: itemDiscountAmount,
      BagConstants.itemType: itemType,
      BagConstants.itemMaterial: itemMaterial,
      BagConstants.itemDescription: itemDescription,
      BagConstants.itemStatus: itemStatus,
      BagConstants.itemPublishStatus: itemPublishStatus,
      BagConstants.itemSoldStatus: itemSoldStatus,
      BagConstants.itemCreatedAt: itemCreatedAt,
      BagConstants.itemUpdatedAt: itemUpdatedAt,
    };
  }

  Map<String, dynamic> toMapItemModel() {
    return <String, dynamic>{
      BagConstants.itemId: itemId,
      BagConstants.itemCustomerId: itemCustomerId,
      BagConstants.itemCategoryId: itemCategoryId,
      BagConstants.itemSubCategoryId: itemSubCategoryId,
      BagConstants.itemImages: itemImages,
      BagConstants.itemTitle: itemTitle,
      BagConstants.itemProvince: itemProvince,
      BagConstants.itemRegion: itemRegion,
      BagConstants.itemTotalPrice: itemTotalPrice,
      BagConstants.itemPriceType: itemPriceType,
      BagConstants.itemSalePriceType: itemSalePriceType,
      BagConstants.itemDiscountAmount: itemDiscountAmount,
      BagConstants.itemPublishStatus: itemPublishStatus,
      BagConstants.itemSoldStatus: itemSoldStatus,
      BagConstants.itemCreatedAt: itemCreatedAt,
      BagConstants.itemUpdatedAt: itemUpdatedAt,
    };
  }

  factory BagModel.fromMap(Map<Object?, Object?> map) {
    return BagModel(
      itemId: map[BagConstants.itemId] != null
          ? map[BagConstants.itemId] as int
          : null,
      itemCustomerId: map[BagConstants.itemCustomerId] != null
          ? map[BagConstants.itemCustomerId] as String
          : null,
      itemCategoryId: map[BagConstants.itemCategoryId] != null
          ? int.parse(map[BagConstants.itemCategoryId].toString())
          : null,
      itemSubCategoryId: map[BagConstants.itemSubCategoryId] != null
          ? int.parse(map[BagConstants.itemSubCategoryId].toString())
          : null,
      itemImages: HelperFunctions.getImages(
                  map, BagConstants.itemImages, BagConstants.apiBagsImages) !=
              null
          ? []
          : null,
      itemTitle: map[BagConstants.itemTitle] != null
          ? map[BagConstants.itemTitle] as String
          : null,
      itemProvince: map[BagConstants.itemProvince] != null
          ? int.parse(map[BagConstants.itemProvince].toString())
          : null,
      itemRegion: map[BagConstants.itemRegion] != null
          ? map[BagConstants.itemRegion] as String
          : null,
      itemTotalPrice: map[BagConstants.itemTotalPrice] != null
          ? double.parse(map[BagConstants.itemTotalPrice].toString())
          : null,
      itemPriceType: map[BagConstants.itemPriceType] != null
          ? int.parse(map[BagConstants.itemPriceType].toString())
          : null,
      itemSalePriceType: map[BagConstants.itemSalePriceType] != null
          ? int.parse(map[BagConstants.itemSalePriceType].toString())
          : null,
      itemDiscountAmount: map[BagConstants.itemDiscountAmount] != null
          ? int.parse(map[BagConstants.itemDiscountAmount].toString())
          : null,
      itemType: map[BagConstants.itemType] != null
          ? int.parse(map[BagConstants.itemType].toString())
          : null,
      itemMaterial: map[BagConstants.itemMaterial] != null
          ? map[BagConstants.itemMaterial] as String
          : null,
      itemDescription: map[BagConstants.itemDescription] != null
          ? map[BagConstants.itemDescription] as String
          : null,
      itemStatus: map[BagConstants.itemStatus] != null
          ? int.parse(map[BagConstants.itemStatus].toString())
          : null,
      itemPublishStatus: map[BagConstants.itemPublishStatus] != null
          ? map[BagConstants.itemPublishStatus] as String
          : null,
      itemSoldStatus: map[BagConstants.itemSoldStatus] != null
          ? map[BagConstants.itemSoldStatus] as String
          : null,
      itemCreatedAt: map[BagConstants.itemCreatedAt] != null
          ? map[BagConstants.itemCreatedAt] as String
          : null,
      itemUpdatedAt: map[BagConstants.itemUpdatedAt] != null
          ? map[BagConstants.itemUpdatedAt] as String
          : null,
    );
  }

  factory BagModel.fromMapItemModel(Map<Object?, Object?> map) {
    return BagModel.itemModel(
      itemId: map[BagConstants.itemId] != null
          ? map[BagConstants.itemId] as int
          : null,
      itemCustomerId: map[BagConstants.itemCustomerId] != null
          ? map[BagConstants.itemCustomerId] as String
          : null,
      itemCategoryId: map[BagConstants.itemCategoryId] != null
          ? int.parse(map[BagConstants.itemCategoryId].toString())
          : null,
      itemSubCategoryId: map[BagConstants.itemSubCategoryId] != null
          ? int.parse(map[BagConstants.itemSubCategoryId].toString())
          : null,
      itemImages: HelperFunctions.getImages(
                  map, BagConstants.itemImages, BagConstants.apiBagsImages) !=
              null
          ? []
          : null,
      itemTitle: map[BagConstants.itemTitle] != null
          ? map[BagConstants.itemTitle] as String
          : null,
      itemProvince: map[BagConstants.itemProvince] != null
          ? int.parse(map[BagConstants.itemProvince].toString())
          : null,
      itemRegion: map[BagConstants.itemRegion] != null
          ? map[BagConstants.itemRegion] as String
          : null,
      itemTotalPrice: map[BagConstants.itemTotalPrice] != null
          ? double.parse(map[BagConstants.itemTotalPrice].toString())
          : null,
      itemPriceType: map[BagConstants.itemPriceType] != null
          ? int.parse(map[BagConstants.itemPriceType].toString())
          : null,
      itemSalePriceType: map[BagConstants.itemSalePriceType] != null
          ? int.parse(map[BagConstants.itemSalePriceType].toString())
          : null,
      itemDiscountAmount: map[BagConstants.itemDiscountAmount] != null
          ? int.parse(map[BagConstants.itemDiscountAmount].toString())
          : null,
      itemDescription: map[BagConstants.itemDescription] != null
          ? map[BagConstants.itemDescription] as String
          : null,
      itemPublishStatus: map[BagConstants.itemPublishStatus] != null
          ? map[BagConstants.itemPublishStatus] as String
          : null,
      itemSoldStatus: map[BagConstants.itemSoldStatus] != null
          ? map[BagConstants.itemSoldStatus] as String
          : null,
      itemCreatedAt: map[BagConstants.itemCreatedAt] != null
          ? map[BagConstants.itemCreatedAt] as String
          : null,
      itemUpdatedAt: map[BagConstants.itemUpdatedAt] != null
          ? map[BagConstants.itemUpdatedAt] as String
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory BagModel.fromJson(String source) =>
      BagModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'BagModel(itemId: $itemId, itemCustomerId: $itemCustomerId, itemCategoryId: $itemCategoryId, itemSubCategoryId: $itemSubCategoryId, itemImages: $itemImages, itemTitle: $itemTitle, itemProvince: $itemProvince, itemRegion: $itemRegion, itemTotalPrice: $itemTotalPrice, itemPriceType: $itemPriceType, itemSalePriceType: $itemSalePriceType, itemDiscountAmount: $itemDiscountAmount, itemType: $itemType, itemMaterial: $itemMaterial, itemDescription: $itemDescription, itemStatus: $itemStatus, itemPublishStatus: $itemPublishStatus, itemSoldStatus: $itemSoldStatus, itemCreatedAt: $itemCreatedAt, itemUpdatedAt: $itemUpdatedAt)';
  }

  @override
  bool operator ==(covariant BagModel other) {
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
        other.itemType == itemType &&
        other.itemMaterial == itemMaterial &&
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
        itemType.hashCode ^
        itemMaterial.hashCode ^
        itemDescription.hashCode ^
        itemStatus.hashCode ^
        itemPublishStatus.hashCode ^
        itemSoldStatus.hashCode ^
        itemCreatedAt.hashCode ^
        itemUpdatedAt.hashCode;
  }
}
