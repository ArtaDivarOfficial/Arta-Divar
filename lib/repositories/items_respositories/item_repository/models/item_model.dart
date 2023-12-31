import 'dart:convert';

import 'package:divar/heplers/functions/helper_functions.dart';
import 'package:divar/repositories/items_respositories/bags_respository/constants/constants.dart';
import 'package:divar/repositories/items_respositories/item_repository/constants/constants.dart';
import 'package:flutter/foundation.dart';

class ItemModel {
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
  final String? itemPublishStatus;
  final String? itemSoldStatus;
  final String? itemCreatedAt;
  final String? itemUpdatedAt;

  ItemModel({
    this.itemId = -1,
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
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  ItemModel.itemModel({
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
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  ItemModel copyWith({
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
    String? itemPublishStatus,
    String? itemSoldStatus,
    String? itemCreatedAt,
    String? itemUpdatedAt,
  }) {
    return ItemModel(
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
      itemPublishStatus: itemPublishStatus ?? this.itemPublishStatus,
      itemSoldStatus: itemSoldStatus ?? this.itemSoldStatus,
      itemCreatedAt: itemCreatedAt ?? this.itemCreatedAt,
      itemUpdatedAt: itemUpdatedAt ?? this.itemUpdatedAt,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      ItemConstants.itemId: itemId,
      ItemConstants.itemCustomerId: itemCustomerId,
      ItemConstants.itemCategoryId: itemCategoryId,
      ItemConstants.itemSubCategoryId: itemSubCategoryId,
      ItemConstants.itemImages: itemImages,
      ItemConstants.itemTitle: itemTitle,
      ItemConstants.itemProvince: itemProvince,
      ItemConstants.itemRegion: itemRegion,
      ItemConstants.itemTotalPrice: itemTotalPrice,
      ItemConstants.itemPriceType: itemPriceType,
      ItemConstants.itemSalePriceType: itemSalePriceType,
      ItemConstants.itemDiscountAmount: itemDiscountAmount,
      ItemConstants.itemPublishStatus: itemPublishStatus,
      ItemConstants.itemSoldStatus: itemSoldStatus,
      ItemConstants.itemCreatedAt: itemCreatedAt,
      ItemConstants.itemUpdatedAt: itemUpdatedAt,
    };
  }

  Map<String, dynamic> toMapItemModel() {
    return <String, dynamic>{
      ItemConstants.itemId: itemId,
      ItemConstants.itemCustomerId: itemCustomerId,
      ItemConstants.itemCategoryId: itemCategoryId,
      ItemConstants.itemSubCategoryId: itemSubCategoryId,
      ItemConstants.itemImages: itemImages,
      ItemConstants.itemTitle: itemTitle,
      ItemConstants.itemProvince: itemProvince,
      ItemConstants.itemRegion: itemRegion,
      ItemConstants.itemTotalPrice: itemTotalPrice,
      ItemConstants.itemPriceType: itemPriceType,
      ItemConstants.itemSalePriceType: itemSalePriceType,
      ItemConstants.itemDiscountAmount: itemDiscountAmount,
      ItemConstants.itemPublishStatus: itemPublishStatus,
      ItemConstants.itemSoldStatus: itemSoldStatus,
      ItemConstants.itemCreatedAt: itemCreatedAt,
      ItemConstants.itemUpdatedAt: itemUpdatedAt,
    };
  }

  factory ItemModel.fromMap(Map<String, dynamic> map) {
    return ItemModel(
      itemId: map[ItemConstants.itemId] != null
          ? map[ItemConstants.itemId] as int
          : null,
      itemCustomerId: map[ItemConstants.itemCustomerId] != null
          ? map[ItemConstants.itemCustomerId] as String
          : null,
      itemCategoryId: map[ItemConstants.itemCategoryId] != null
          ? map[ItemConstants.itemCategoryId] as int
          : null,
      itemSubCategoryId: map[ItemConstants.itemSubCategoryId] != null
          ? map[ItemConstants.itemSubCategoryId] as int
          : null,
      itemImages: map[ItemConstants.itemImages] != null
          ? List<String>.from((map[ItemConstants.itemImages] as List<String>))
          : null,
      itemTitle: map[ItemConstants.itemTitle] != null
          ? map[ItemConstants.itemTitle] as String
          : null,
      itemProvince: map[ItemConstants.itemProvince] != null
          ? map[ItemConstants.itemProvince] as int
          : null,
      itemRegion: map[ItemConstants.itemRegion] != null
          ? map[ItemConstants.itemRegion] as String
          : null,
      itemTotalPrice: map[ItemConstants.itemTotalPrice] != null
          ? map[ItemConstants.itemTotalPrice] as double
          : null,
      itemPriceType: map[ItemConstants.itemPriceType] != null
          ? map[ItemConstants.itemPriceType] as int
          : null,
      itemSalePriceType: map[ItemConstants.itemSalePriceType] != null
          ? map[ItemConstants.itemSalePriceType] as int
          : null,
      itemDiscountAmount: map[ItemConstants.itemDiscountAmount] != null
          ? map[ItemConstants.itemDiscountAmount] as int
          : null,
      itemPublishStatus: map[ItemConstants.itemPublishStatus] != null
          ? map[ItemConstants.itemPublishStatus] as String
          : null,
      itemSoldStatus: map[ItemConstants.itemSoldStatus] != null
          ? map[ItemConstants.itemSoldStatus] as String
          : null,
      itemCreatedAt: map[ItemConstants.itemCreatedAt] != null
          ? map[ItemConstants.itemCreatedAt] as String
          : null,
      itemUpdatedAt: map[ItemConstants.itemUpdatedAt] != null
          ? map[ItemConstants.itemUpdatedAt] as String
          : null,
    );
  }

  factory ItemModel.fromMapItemModel(Map<String, dynamic> map) {
    print('object');
    return ItemModel.itemModel(
      itemId: map[ItemConstants.itemId] != null
          ? map[ItemConstants.itemId] as int
          : null,
      itemCustomerId: map[ItemConstants.itemCustomerId] != null
          ? map[ItemConstants.itemCustomerId] as String
          : null,
      itemCategoryId: map[ItemConstants.itemCategoryId] != null
          ? int.parse(map[ItemConstants.itemCategoryId].toString())
          : null,
      itemSubCategoryId: map[ItemConstants.itemSubCategoryId] != null
          ? int.parse(map[ItemConstants.itemSubCategoryId].toString())
          : null,
      itemImages: HelperFunctions.getImages(
                  map, ItemConstants.itemImages, BagConstants.apiBagsImages) !=
              null
          ? []
          : null,
      itemTitle: map[ItemConstants.itemTitle] != null
          ? map[ItemConstants.itemTitle] as String
          : null,
      itemProvince: map[ItemConstants.itemProvince] != null
          ? int.parse(map[ItemConstants.itemProvince].toString())
          : null,
      itemRegion: map[ItemConstants.itemRegion] != null
          ? map[ItemConstants.itemRegion] as String
          : null,
      itemTotalPrice: map[ItemConstants.itemTotalPrice] != null
          ? double.parse(map[ItemConstants.itemTotalPrice].toString())
          : null,
      itemPriceType: map[ItemConstants.itemPriceType] != null
          ? int.parse(map[ItemConstants.itemPriceType].toString())
          : null,
      itemSalePriceType: map[ItemConstants.itemSalePriceType] != null
          ? int.parse(map[ItemConstants.itemSalePriceType].toString())
          : null,
      itemDiscountAmount: map[ItemConstants.itemDiscountAmount] != null
          ? int.parse(map[ItemConstants.itemDiscountAmount].toString())
          : null,
      itemPublishStatus: map[ItemConstants.itemPublishStatus] != null
          ? map[ItemConstants.itemPublishStatus] as String
          : null,
      itemSoldStatus: map[ItemConstants.itemSoldStatus] != null
          ? map[ItemConstants.itemSoldStatus] as String
          : null,
      itemCreatedAt: map[ItemConstants.itemCreatedAt] != null
          ? map[ItemConstants.itemCreatedAt] as String
          : null,
      itemUpdatedAt: map[ItemConstants.itemUpdatedAt] != null
          ? map[ItemConstants.itemUpdatedAt] as String
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ItemModel.fromJson(String source) =>
      ItemModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ItemModel(itemId: $itemId, itemCustomerId: $itemCustomerId, itemCategoryId: $itemCategoryId, itemSubCategoryId: $itemSubCategoryId, itemImages: $itemImages, itemTitle: $itemTitle, itemProvince: $itemProvince, itemRegion: $itemRegion, itemTotalPrice: $itemTotalPrice, itemPriceType: $itemPriceType, itemSalePriceType: $itemSalePriceType, itemDiscountAmount: $itemDiscountAmount, itemPublishStatus: $itemPublishStatus, itemSoldStatus: $itemSoldStatus, itemCreatedAt: $itemCreatedAt, itemUpdatedAt: $itemUpdatedAt)';
  }

  @override
  bool operator ==(covariant ItemModel other) {
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
        itemPublishStatus.hashCode ^
        itemSoldStatus.hashCode ^
        itemCreatedAt.hashCode ^
        itemUpdatedAt.hashCode;
  }
}
