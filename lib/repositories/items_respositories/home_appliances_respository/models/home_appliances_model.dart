import 'dart:convert';

import 'package:divar/repositories/items_respositories/home_appliances_respository/constants/constants.dart';
import 'package:flutter/foundation.dart';

class HomeAppliancesModel {
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
  final String? itemBrand;
  final String? itemDescription;
  final int? itemStatus;
  final String? itemPublishStatus;
  final String? itemSoldStatus;
  final String? itemCreatedAt;
  final String? itemUpdatedAt;

  HomeAppliancesModel({
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
    required this.itemBrand,
    required this.itemDescription,
    required this.itemStatus,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  HomeAppliancesModel.itemModel({
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
    this.itemBrand = '',
    this.itemDescription = '',
    this.itemStatus = -1,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  HomeAppliancesModel.homeAppliancesModel({
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
    required this.itemBrand,
    required this.itemDescription,
    required this.itemStatus,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  HomeAppliancesModel.kitchenAppliancesModel({
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
    required this.itemBrand,
    required this.itemDescription,
    required this.itemStatus,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  HomeAppliancesModel.bathroomAppliancesModel({
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
    required this.itemBrand,
    required this.itemDescription,
    required this.itemStatus,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  HomeAppliancesModel.decorationModel({
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
    required this.itemBrand,
    required this.itemDescription,
    required this.itemStatus,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  HomeAppliancesModel.otherHomeAppliancesModel({
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
    required this.itemBrand,
    required this.itemDescription,
    required this.itemStatus,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  HomeAppliancesModel copyWith({
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
    String? itemBrand,
    String? itemDescription,
    int? itemStatus,
    String? itemPublishStatus,
    String? itemSoldStatus,
    String? itemCreatedAt,
    String? itemUpdatedAt,
  }) {
    return HomeAppliancesModel(
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
      HomeAppliancesConstants.itemId: itemId,
      HomeAppliancesConstants.itemCustomerId: itemCustomerId,
      HomeAppliancesConstants.itemCategoryId: itemCategoryId,
      HomeAppliancesConstants.itemSubCategoryId: itemSubCategoryId,
      HomeAppliancesConstants.itemImages: itemImages,
      HomeAppliancesConstants.itemTitle: itemTitle,
      HomeAppliancesConstants.itemProvince: itemProvince,
      HomeAppliancesConstants.itemRegion: itemRegion,
      HomeAppliancesConstants.itemTotalPrice: itemTotalPrice,
      HomeAppliancesConstants.itemPriceType: itemPriceType,
      HomeAppliancesConstants.itemSalePriceType: itemSalePriceType,
      HomeAppliancesConstants.itemDiscountAmount: itemDiscountAmount,
      HomeAppliancesConstants.itemBrand: itemBrand,
      HomeAppliancesConstants.itemDescription: itemDescription,
      HomeAppliancesConstants.itemStatus: itemStatus,
      HomeAppliancesConstants.itemPublishStatus: itemPublishStatus,
      HomeAppliancesConstants.itemSoldStatus: itemSoldStatus,
      HomeAppliancesConstants.itemCreatedAt: itemCreatedAt,
      HomeAppliancesConstants.itemUpdatedAt: itemUpdatedAt,
    };
  }

  Map<String, dynamic> toMapItemModel() {
    return <String, dynamic>{
      HomeAppliancesConstants.itemId: itemId,
      HomeAppliancesConstants.itemCustomerId: itemCustomerId,
      HomeAppliancesConstants.itemCategoryId: itemCategoryId,
      HomeAppliancesConstants.itemSubCategoryId: itemSubCategoryId,
      HomeAppliancesConstants.itemImages: itemImages,
      HomeAppliancesConstants.itemTitle: itemTitle,
      HomeAppliancesConstants.itemProvince: itemProvince,
      HomeAppliancesConstants.itemRegion: itemRegion,
      HomeAppliancesConstants.itemTotalPrice: itemTotalPrice,
      HomeAppliancesConstants.itemPriceType: itemPriceType,
      HomeAppliancesConstants.itemSalePriceType: itemSalePriceType,
      HomeAppliancesConstants.itemDiscountAmount: itemDiscountAmount,
      HomeAppliancesConstants.itemPublishStatus: itemPublishStatus,
      HomeAppliancesConstants.itemSoldStatus: itemSoldStatus,
      HomeAppliancesConstants.itemCreatedAt: itemCreatedAt,
      HomeAppliancesConstants.itemUpdatedAt: itemUpdatedAt,
    };
  }

  factory HomeAppliancesModel.fromMap(Map<Object?, Object?> map) {
    return HomeAppliancesModel(
      itemId: map[HomeAppliancesConstants.itemId] != null
          ? map[HomeAppliancesConstants.itemId] as int
          : null,
      itemCustomerId: map[HomeAppliancesConstants.itemCustomerId] != null
          ? map[HomeAppliancesConstants.itemCustomerId] as String
          : null,
      itemCategoryId: map[HomeAppliancesConstants.itemCategoryId] != null
          ? map[HomeAppliancesConstants.itemCategoryId] as int
          : null,
      itemSubCategoryId: map[HomeAppliancesConstants.itemSubCategoryId] != null
          ? map[HomeAppliancesConstants.itemSubCategoryId] as int
          : null,
      itemImages: map[HomeAppliancesConstants.itemImages] != null
          ? List<String>.from(
              (map[HomeAppliancesConstants.itemImages] as List<String>))
          : null,
      itemTitle: map[HomeAppliancesConstants.itemTitle] != null
          ? map[HomeAppliancesConstants.itemTitle] as String
          : null,
      itemProvince: map[HomeAppliancesConstants.itemProvince] != null
          ? map[HomeAppliancesConstants.itemProvince] as int
          : null,
      itemRegion: map[HomeAppliancesConstants.itemRegion] != null
          ? map[HomeAppliancesConstants.itemRegion] as String
          : null,
      itemTotalPrice: map[HomeAppliancesConstants.itemTotalPrice] != null
          ? map[HomeAppliancesConstants.itemTotalPrice] as double
          : null,
      itemPriceType: map[HomeAppliancesConstants.itemPriceType] != null
          ? map[HomeAppliancesConstants.itemPriceType] as int
          : null,
      itemSalePriceType: map[HomeAppliancesConstants.itemSalePriceType] != null
          ? map[HomeAppliancesConstants.itemSalePriceType] as int
          : null,
      itemDiscountAmount:
          map[HomeAppliancesConstants.itemDiscountAmount] != null
              ? map[HomeAppliancesConstants.itemDiscountAmount] as int
              : null,
      itemBrand: map[HomeAppliancesConstants.itemBrand] != null
          ? map[HomeAppliancesConstants.itemBrand] as String
          : null,
      itemDescription: map[HomeAppliancesConstants.itemDescription] != null
          ? map[HomeAppliancesConstants.itemDescription] as String
          : null,
      itemStatus: map[HomeAppliancesConstants.itemStatus] != null
          ? map[HomeAppliancesConstants.itemStatus] as int
          : null,
      itemPublishStatus: map[HomeAppliancesConstants.itemPublishStatus] != null
          ? map[HomeAppliancesConstants.itemPublishStatus] as String
          : null,
      itemSoldStatus: map[HomeAppliancesConstants.itemSoldStatus] != null
          ? map[HomeAppliancesConstants.itemSoldStatus] as String
          : null,
      itemCreatedAt: map[HomeAppliancesConstants.itemCreatedAt] != null
          ? map[HomeAppliancesConstants.itemCreatedAt] as String
          : null,
      itemUpdatedAt: map[HomeAppliancesConstants.itemUpdatedAt] != null
          ? map[HomeAppliancesConstants.itemUpdatedAt] as String
          : null,
    );
  }

  factory HomeAppliancesModel.fromMapItemModel(Map<Object?, Object?> map) {
    return HomeAppliancesModel.itemModel(
      itemId: map[HomeAppliancesConstants.itemId] != null
          ? map[HomeAppliancesConstants.itemId] as int
          : null,
      itemCustomerId: map[HomeAppliancesConstants.itemCustomerId] != null
          ? map[HomeAppliancesConstants.itemCustomerId] as String
          : null,
      itemCategoryId: map[HomeAppliancesConstants.itemCategoryId] != null
          ? map[HomeAppliancesConstants.itemCategoryId] as int
          : null,
      itemSubCategoryId: map[HomeAppliancesConstants.itemSubCategoryId] != null
          ? map[HomeAppliancesConstants.itemSubCategoryId] as int
          : null,
      itemImages: map[HomeAppliancesConstants.itemImages] != null
          ? List<String>.from(
              (map[HomeAppliancesConstants.itemImages] as List<String>))
          : null,
      itemTitle: map[HomeAppliancesConstants.itemTitle] != null
          ? map[HomeAppliancesConstants.itemTitle] as String
          : null,
      itemProvince: map[HomeAppliancesConstants.itemProvince] != null
          ? map[HomeAppliancesConstants.itemProvince] as int
          : null,
      itemRegion: map[HomeAppliancesConstants.itemRegion] != null
          ? map[HomeAppliancesConstants.itemRegion] as String
          : null,
      itemTotalPrice: map[HomeAppliancesConstants.itemTotalPrice] != null
          ? map[HomeAppliancesConstants.itemTotalPrice] as double
          : null,
      itemPriceType: map[HomeAppliancesConstants.itemPriceType] != null
          ? map[HomeAppliancesConstants.itemPriceType] as int
          : null,
      itemSalePriceType: map[HomeAppliancesConstants.itemSalePriceType] != null
          ? map[HomeAppliancesConstants.itemSalePriceType] as int
          : null,
      itemDiscountAmount:
          map[HomeAppliancesConstants.itemDiscountAmount] != null
              ? map[HomeAppliancesConstants.itemDiscountAmount] as int
              : null,
      itemPublishStatus: map[HomeAppliancesConstants.itemPublishStatus] != null
          ? map[HomeAppliancesConstants.itemPublishStatus] as String
          : null,
      itemSoldStatus: map[HomeAppliancesConstants.itemSoldStatus] != null
          ? map[HomeAppliancesConstants.itemSoldStatus] as String
          : null,
      itemCreatedAt: map[HomeAppliancesConstants.itemCreatedAt] != null
          ? map[HomeAppliancesConstants.itemCreatedAt] as String
          : null,
      itemUpdatedAt: map[HomeAppliancesConstants.itemUpdatedAt] != null
          ? map[HomeAppliancesConstants.itemUpdatedAt] as String
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory HomeAppliancesModel.fromJson(String source) =>
      HomeAppliancesModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'HomeAppliancesModel(itemId: $itemId, itemCustomerId: $itemCustomerId, itemCategoryId: $itemCategoryId, itemSubCategoryId: $itemSubCategoryId, itemImages: $itemImages, itemTitle: $itemTitle, itemProvince: $itemProvince, itemRegion: $itemRegion itemTotalPrice: $itemTotalPrice, itemPriceType: $itemPriceType, itemSalePriceType: $itemSalePriceType, itemDiscountAmount: $itemDiscountAmount, itemBrand: $itemBrand, itemDescription: $itemDescription, itemStatus: $itemStatus, itemPublishStatus: $itemPublishStatus, itemSoldStatus: $itemSoldStatus, itemCreatedAt: $itemCreatedAt, itemUpdatedAt: $itemUpdatedAt)';
  }

  @override
  bool operator ==(covariant HomeAppliancesModel other) {
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
        itemBrand.hashCode ^
        itemDescription.hashCode ^
        itemStatus.hashCode ^
        itemPublishStatus.hashCode ^
        itemSoldStatus.hashCode ^
        itemCreatedAt.hashCode ^
        itemUpdatedAt.hashCode;
  }
}
