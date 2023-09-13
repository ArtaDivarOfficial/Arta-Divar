import 'dart:convert';

import 'package:divar/repositories/items_respositories/my_advertisements_repository/constants/constants.dart';
import 'package:flutter/foundation.dart';

class MyAdvertisementModel {
  final int? itemId;
  final String? itemCustomerId;
  final int? itemCategoryId;
  final int? itemSubCategoryId;
  final List<String>? itemImages;
  final String? itemTitle;
  final String? itemAddress;
  final String? itemTotalPrice;
  final int? itemPriceType;
  final int? itemSalePriceType;
  final int? itemDiscountAmount;
  final int? itemDiscountAmountType;
  final String? itemPublishStatus;
  final String? itemSoldStatus;
  final String? itemCreatedAt;
  final String? itemUpdatedAt;

  MyAdvertisementModel({
    required this.itemId,
    required this.itemCustomerId,
    required this.itemCategoryId,
    required this.itemSubCategoryId,
    required this.itemImages,
    required this.itemTitle,
    required this.itemAddress,
    required this.itemTotalPrice,
    required this.itemPriceType,
    required this.itemSalePriceType,
    required this.itemDiscountAmount,
    required this.itemDiscountAmountType,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  MyAdvertisementModel.itemModel({
    required this.itemId,
    required this.itemCustomerId,
    required this.itemCategoryId,
    required this.itemSubCategoryId,
    required this.itemImages,
    required this.itemTitle,
    required this.itemAddress,
    required this.itemTotalPrice,
    required this.itemPriceType,
    required this.itemSalePriceType,
    required this.itemDiscountAmount,
    required this.itemDiscountAmountType,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  MyAdvertisementModel copyWith({
    int? itemId,
    String? itemCustomerId,
    int? itemCategoryId,
    int? itemSubCategoryId,
    List<String>? itemImages,
    String? itemTitle,
    String? itemAddress,
    String? itemTotalPrice,
    int? itemPriceType,
    int? itemSalePriceType,
    int? itemDiscountAmount,
    int? itemDiscountAmountType,
    String? itemPublishStatus,
    String? itemSoldStatus,
    String? itemCreatedAt,
    String? itemUpdatedAt,
  }) {
    return MyAdvertisementModel(
      itemId: itemId ?? this.itemId,
      itemCustomerId: itemCustomerId ?? this.itemCustomerId,
      itemCategoryId: itemCategoryId ?? this.itemCategoryId,
      itemSubCategoryId: itemSubCategoryId ?? this.itemSubCategoryId,
      itemImages: itemImages ?? this.itemImages,
      itemTitle: itemTitle ?? this.itemTitle,
      itemAddress: itemAddress ?? this.itemAddress,
      itemTotalPrice: itemTotalPrice ?? this.itemTotalPrice,
      itemPriceType: itemPriceType ?? this.itemPriceType,
      itemSalePriceType: itemSalePriceType ?? this.itemSalePriceType,
      itemDiscountAmount: itemDiscountAmount ?? this.itemDiscountAmount,
      itemDiscountAmountType:
          itemDiscountAmountType ?? this.itemDiscountAmountType,
      itemPublishStatus: itemPublishStatus ?? this.itemPublishStatus,
      itemSoldStatus: itemSoldStatus ?? this.itemSoldStatus,
      itemCreatedAt: itemCreatedAt ?? this.itemCreatedAt,
      itemUpdatedAt: itemUpdatedAt ?? this.itemUpdatedAt,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      MyAdvertisementsConstants.itemId: itemId,
      MyAdvertisementsConstants.itemCustomerId: itemCustomerId,
      MyAdvertisementsConstants.itemCategoryId: itemCategoryId,
      MyAdvertisementsConstants.itemSubCategoryId: itemSubCategoryId,
      MyAdvertisementsConstants.itemImages: itemImages,
      MyAdvertisementsConstants.itemTitle: itemTitle,
      MyAdvertisementsConstants.itemAddress: itemAddress,
      MyAdvertisementsConstants.itemTotalPrice: itemTotalPrice,
      MyAdvertisementsConstants.itemPriceType: itemPriceType,
      MyAdvertisementsConstants.itemSalePriceType: itemSalePriceType,
      MyAdvertisementsConstants.itemDiscountAmount: itemDiscountAmount,
      MyAdvertisementsConstants.itemDiscountAmountType: itemDiscountAmountType,
      MyAdvertisementsConstants.itemPublishStatus: itemPublishStatus,
      MyAdvertisementsConstants.itemSoldStatus: itemSoldStatus,
      MyAdvertisementsConstants.itemCreatedAt: itemCreatedAt,
      MyAdvertisementsConstants.itemUpdatedAt: itemUpdatedAt,
    };
  }

  Map<String, dynamic> toMapMyAdvertisementModel() {
    return <String, dynamic>{
      MyAdvertisementsConstants.itemId: itemId,
      MyAdvertisementsConstants.itemCustomerId: itemCustomerId,
      MyAdvertisementsConstants.itemCategoryId: itemCategoryId,
      MyAdvertisementsConstants.itemSubCategoryId: itemSubCategoryId,
      MyAdvertisementsConstants.itemImages: itemImages,
      MyAdvertisementsConstants.itemTitle: itemTitle,
      MyAdvertisementsConstants.itemAddress: itemAddress,
      MyAdvertisementsConstants.itemTotalPrice: itemTotalPrice,
      MyAdvertisementsConstants.itemPriceType: itemPriceType,
      MyAdvertisementsConstants.itemSalePriceType: itemSalePriceType,
      MyAdvertisementsConstants.itemDiscountAmount: itemDiscountAmount,
      MyAdvertisementsConstants.itemDiscountAmountType: itemDiscountAmountType,
      MyAdvertisementsConstants.itemPublishStatus: itemPublishStatus,
      MyAdvertisementsConstants.itemSoldStatus: itemSoldStatus,
      MyAdvertisementsConstants.itemCreatedAt: itemCreatedAt,
      MyAdvertisementsConstants.itemUpdatedAt: itemUpdatedAt,
    };
  }

  factory MyAdvertisementModel.fromMap(Map<String, dynamic> map) {
    return MyAdvertisementModel(
      itemId: map[MyAdvertisementsConstants.itemId] != null
          ? map[MyAdvertisementsConstants.itemId] as int
          : null,
      itemCustomerId: map[MyAdvertisementsConstants.itemCustomerId] != null
          ? map[MyAdvertisementsConstants.itemCustomerId] as String
          : null,
      itemCategoryId: map[MyAdvertisementsConstants.itemCategoryId] != null
          ? map[MyAdvertisementsConstants.itemCategoryId] as int
          : null,
      itemSubCategoryId:
          map[MyAdvertisementsConstants.itemSubCategoryId] != null
              ? map[MyAdvertisementsConstants.itemSubCategoryId] as int
              : null,
      itemImages: map[MyAdvertisementsConstants.itemImages] != null
          ? List<String>.from(
              (map[MyAdvertisementsConstants.itemImages] as List<String>))
          : null,
      itemTitle: map[MyAdvertisementsConstants.itemTitle] != null
          ? map[MyAdvertisementsConstants.itemTitle] as String
          : null,
      itemAddress: map[MyAdvertisementsConstants.itemAddress] != null
          ? map[MyAdvertisementsConstants.itemAddress] as String
          : null,
      itemTotalPrice: map[MyAdvertisementsConstants.itemTotalPrice] != null
          ? map[MyAdvertisementsConstants.itemTotalPrice] as String
          : null,
      itemPriceType: map[MyAdvertisementsConstants.itemPriceType] != null
          ? map[MyAdvertisementsConstants.itemPriceType] as int
          : null,
      itemSalePriceType:
          map[MyAdvertisementsConstants.itemSalePriceType] != null
              ? map[MyAdvertisementsConstants.itemSalePriceType] as int
              : null,
      itemDiscountAmount:
          map[MyAdvertisementsConstants.itemDiscountAmount] != null
              ? map[MyAdvertisementsConstants.itemDiscountAmount] as int
              : null,
      itemDiscountAmountType:
          map[MyAdvertisementsConstants.itemDiscountAmountType] != null
              ? map[MyAdvertisementsConstants.itemDiscountAmountType] as int
              : null,
      itemPublishStatus:
          map[MyAdvertisementsConstants.itemPublishStatus] != null
              ? map[MyAdvertisementsConstants.itemPublishStatus] as String
              : null,
      itemSoldStatus: map[MyAdvertisementsConstants.itemSoldStatus] != null
          ? map[MyAdvertisementsConstants.itemSoldStatus] as String
          : null,
      itemCreatedAt: map[MyAdvertisementsConstants.itemCreatedAt] != null
          ? map[MyAdvertisementsConstants.itemCreatedAt] as String
          : null,
      itemUpdatedAt: map[MyAdvertisementsConstants.itemUpdatedAt] != null
          ? map[MyAdvertisementsConstants.itemUpdatedAt] as String
          : null,
    );
  }

  factory MyAdvertisementModel.fromMapMyAdvertisementModel(
      Map<String, dynamic> map) {
    return MyAdvertisementModel.itemModel(
      itemId: map[MyAdvertisementsConstants.itemId] != null
          ? map[MyAdvertisementsConstants.itemId] as int
          : null,
      itemCustomerId: map[MyAdvertisementsConstants.itemCustomerId] != null
          ? map[MyAdvertisementsConstants.itemCustomerId] as String
          : null,
      itemCategoryId: map[MyAdvertisementsConstants.itemCategoryId] != null
          ? map[MyAdvertisementsConstants.itemCategoryId] as int
          : null,
      itemSubCategoryId:
          map[MyAdvertisementsConstants.itemSubCategoryId] != null
              ? map[MyAdvertisementsConstants.itemSubCategoryId] as int
              : null,
      itemImages: map[MyAdvertisementsConstants.itemImages] != null
          ? List<String>.from(
              (map[MyAdvertisementsConstants.itemImages] as List<String>))
          : null,
      itemTitle: map[MyAdvertisementsConstants.itemTitle] != null
          ? map[MyAdvertisementsConstants.itemTitle] as String
          : null,
      itemAddress: map[MyAdvertisementsConstants.itemAddress] != null
          ? map[MyAdvertisementsConstants.itemAddress] as String
          : null,
      itemTotalPrice: map[MyAdvertisementsConstants.itemTotalPrice] != null
          ? map[MyAdvertisementsConstants.itemTotalPrice] as String
          : null,
      itemPriceType: map[MyAdvertisementsConstants.itemPriceType] != null
          ? map[MyAdvertisementsConstants.itemPriceType] as int
          : null,
      itemSalePriceType:
          map[MyAdvertisementsConstants.itemSalePriceType] != null
              ? map[MyAdvertisementsConstants.itemSalePriceType] as int
              : null,
      itemDiscountAmount:
          map[MyAdvertisementsConstants.itemDiscountAmount] != null
              ? map[MyAdvertisementsConstants.itemDiscountAmount] as int
              : null,
      itemDiscountAmountType:
          map[MyAdvertisementsConstants.itemDiscountAmountType] != null
              ? map[MyAdvertisementsConstants.itemDiscountAmountType] as int
              : null,
      itemPublishStatus:
          map[MyAdvertisementsConstants.itemPublishStatus] != null
              ? map[MyAdvertisementsConstants.itemPublishStatus] as String
              : null,
      itemSoldStatus: map[MyAdvertisementsConstants.itemSoldStatus] != null
          ? map[MyAdvertisementsConstants.itemSoldStatus] as String
          : null,
      itemCreatedAt: map[MyAdvertisementsConstants.itemCreatedAt] != null
          ? map[MyAdvertisementsConstants.itemCreatedAt] as String
          : null,
      itemUpdatedAt: map[MyAdvertisementsConstants.itemUpdatedAt] != null
          ? map[MyAdvertisementsConstants.itemUpdatedAt] as String
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory MyAdvertisementModel.fromJson(String source) =>
      MyAdvertisementModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'MyAdvertisementModel(itemId: $itemId, itemCustomerId: $itemCustomerId, itemCategoryId: $itemCategoryId, itemSubCategoryId: $itemSubCategoryId, itemImages: $itemImages, itemTitle: $itemTitle, itemAddress: $itemAddress, itemTotalPrice: $itemTotalPrice, itemPriceType: $itemPriceType, itemSalePriceType: $itemSalePriceType, itemDiscountAmount: $itemDiscountAmount, itemDiscountAmountType: $itemDiscountAmountType, itemPublishStatus: $itemPublishStatus, itemSoldStatus: $itemSoldStatus, itemCreatedAt: $itemCreatedAt, itemUpdatedAt: $itemUpdatedAt)';
  }

  @override
  bool operator ==(covariant MyAdvertisementModel other) {
    if (identical(this, other)) return true;

    return other.itemId == itemId &&
        other.itemCustomerId == itemCustomerId &&
        other.itemCategoryId == itemCategoryId &&
        other.itemSubCategoryId == itemSubCategoryId &&
        listEquals(other.itemImages, itemImages) &&
        other.itemTitle == itemTitle &&
        other.itemAddress == itemAddress &&
        other.itemTotalPrice == itemTotalPrice &&
        other.itemPriceType == itemPriceType &&
        other.itemSalePriceType == itemSalePriceType &&
        other.itemDiscountAmount == itemDiscountAmount &&
        other.itemDiscountAmountType == itemDiscountAmountType &&
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
        itemAddress.hashCode ^
        itemTotalPrice.hashCode ^
        itemPriceType.hashCode ^
        itemSalePriceType.hashCode ^
        itemDiscountAmount.hashCode ^
        itemDiscountAmountType.hashCode ^
        itemPublishStatus.hashCode ^
        itemSoldStatus.hashCode ^
        itemCreatedAt.hashCode ^
        itemUpdatedAt.hashCode;
  }
}
