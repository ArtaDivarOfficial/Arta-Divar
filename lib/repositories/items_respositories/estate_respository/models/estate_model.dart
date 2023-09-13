import 'dart:convert';

import 'package:divar/repositories/items_respositories/estate_respository/constants/constants.dart';
import 'package:flutter/foundation.dart';

class EstateModel {
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
  final int? itemBuildingMeterage;
  final int? itemLandMeterage;
  final double? itemPerMeterPrice;
  final int? itemRoomCount;
  final double? itemFloor;
  final int? itemSaleType;
  final int? itemElectricityMeterType;
  final int? itemWaterMeterType;
  final bool? itemParking;
  final String? itemDescription;
  final String? itemPublishStatus;
  final String? itemSoldStatus;
  final String? itemCreatedAt;
  final String? itemUpdatedAt;

  EstateModel({
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
    required this.itemBuildingMeterage,
    required this.itemLandMeterage,
    required this.itemPerMeterPrice,
    required this.itemRoomCount,
    required this.itemFloor,
    required this.itemSaleType,
    required this.itemElectricityMeterType,
    required this.itemWaterMeterType,
    required this.itemParking,
    required this.itemDescription,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  EstateModel.itemModel({
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
    this.itemBuildingMeterage = -1,
    this.itemLandMeterage = -1,
    this.itemPerMeterPrice = -1,
    this.itemRoomCount = -1,
    this.itemFloor = -1,
    this.itemSaleType = -1,
    this.itemElectricityMeterType = -1,
    this.itemWaterMeterType = -1,
    this.itemParking = false,
    this.itemDescription = '',
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  EstateModel.residentialModel({
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
    required this.itemBuildingMeterage,
    required this.itemLandMeterage,
    required this.itemPerMeterPrice,
    required this.itemRoomCount,
    required this.itemFloor,
    required this.itemSaleType,
    required this.itemElectricityMeterType,
    required this.itemWaterMeterType,
    required this.itemParking,
    required this.itemDescription,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  EstateModel.commercialModel({
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
    required this.itemBuildingMeterage,
    required this.itemLandMeterage,
    required this.itemPerMeterPrice,
    required this.itemRoomCount,
    required this.itemFloor,
    required this.itemSaleType,
    required this.itemElectricityMeterType,
    required this.itemWaterMeterType,
    required this.itemParking,
    required this.itemDescription,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  EstateModel.shopModel({
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
    this.itemBuildingMeterage = -1,
    required this.itemLandMeterage,
    required this.itemPerMeterPrice,
    this.itemRoomCount = -1,
    required this.itemFloor,
    required this.itemSaleType,
    required this.itemElectricityMeterType,
    required this.itemWaterMeterType,
    required this.itemParking,
    required this.itemDescription,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  EstateModel.inventoryModel({
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
    this.itemBuildingMeterage = -1,
    required this.itemLandMeterage,
    required this.itemPerMeterPrice,
    this.itemRoomCount = -1,
    required this.itemFloor,
    required this.itemSaleType,
    required this.itemElectricityMeterType,
    required this.itemWaterMeterType,
    this.itemParking = false,
    required this.itemDescription,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  EstateModel copyWith({
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
    int? itemBuildingMeterage,
    int? itemLandMeterage,
    double? itemPerMeterPrice,
    int? itemRoomCount,
    double? itemFloor,
    int? itemSaleType,
    int? itemElectricityMeterType,
    int? itemWaterMeterType,
    bool? itemParking,
    String? itemDescription,
    String? itemPublishStatus,
    String? itemSoldStatus,
    String? itemCreatedAt,
    String? itemUpdatedAt,
  }) {
    return EstateModel(
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
      itemBuildingMeterage: itemBuildingMeterage ?? this.itemBuildingMeterage,
      itemLandMeterage: itemLandMeterage ?? this.itemLandMeterage,
      itemPerMeterPrice: itemPerMeterPrice ?? this.itemPerMeterPrice,
      itemRoomCount: itemRoomCount ?? this.itemRoomCount,
      itemFloor: itemFloor ?? this.itemFloor,
      itemSaleType: itemSaleType ?? this.itemSaleType,
      itemElectricityMeterType:
          itemElectricityMeterType ?? this.itemElectricityMeterType,
      itemWaterMeterType: itemWaterMeterType ?? this.itemWaterMeterType,
      itemParking: itemParking ?? this.itemParking,
      itemDescription: itemDescription ?? this.itemDescription,
      itemPublishStatus: itemPublishStatus ?? this.itemPublishStatus,
      itemSoldStatus: itemSoldStatus ?? this.itemSoldStatus,
      itemCreatedAt: itemCreatedAt ?? this.itemCreatedAt,
      itemUpdatedAt: itemUpdatedAt ?? this.itemUpdatedAt,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      EstateConstants.itemId: itemId,
      EstateConstants.itemCustomerId: itemCustomerId,
      EstateConstants.itemCategoryId: itemCategoryId,
      EstateConstants.itemSubCategoryId: itemSubCategoryId,
      EstateConstants.itemImages: itemImages,
      EstateConstants.itemTitle: itemTitle,
      EstateConstants.itemProvince: itemProvince,
      EstateConstants.itemRegion: itemRegion,
      EstateConstants.itemTotalPrice: itemTotalPrice,
      EstateConstants.itemPriceType: itemPriceType,
      EstateConstants.itemSalePriceType: itemSalePriceType,
      EstateConstants.itemDiscountAmount: itemDiscountAmount,
      EstateConstants.itemDiscountAmountType: itemDiscountAmountType,
      EstateConstants.itemBuildingMeterage: itemBuildingMeterage,
      EstateConstants.itemLandMeterage: itemLandMeterage,
      EstateConstants.itemPerMeterPrice: itemPerMeterPrice,
      EstateConstants.itemRoomCount: itemRoomCount,
      EstateConstants.itemFloor: itemFloor,
      EstateConstants.itemSaleType: itemSaleType,
      EstateConstants.itemElectricityMeterType: itemElectricityMeterType,
      EstateConstants.itemWaterMeterType: itemWaterMeterType,
      EstateConstants.itemParking: itemParking,
      EstateConstants.itemDescription: itemDescription,
      EstateConstants.itemPublishStatus: itemPublishStatus,
      EstateConstants.itemSoldStatus: itemSoldStatus,
      EstateConstants.itemCreatedAt: itemCreatedAt,
      EstateConstants.itemUpdatedAt: itemUpdatedAt,
    };
  }

  Map<String, dynamic> toMapItemModel() {
    return <String, dynamic>{
      EstateConstants.itemId: itemId,
      EstateConstants.itemCustomerId: itemCustomerId,
      EstateConstants.itemCategoryId: itemCategoryId,
      EstateConstants.itemSubCategoryId: itemSubCategoryId,
      EstateConstants.itemImages: itemImages,
      EstateConstants.itemTitle: itemTitle,
      EstateConstants.itemProvince: itemProvince,
      EstateConstants.itemRegion: itemRegion,
      EstateConstants.itemTotalPrice: itemTotalPrice,
      EstateConstants.itemPriceType: itemPriceType,
      EstateConstants.itemSalePriceType: itemSalePriceType,
      EstateConstants.itemDiscountAmount: itemDiscountAmount,
      EstateConstants.itemDiscountAmountType: itemDiscountAmountType,
      EstateConstants.itemPublishStatus: itemPublishStatus,
      EstateConstants.itemSoldStatus: itemSoldStatus,
      EstateConstants.itemCreatedAt: itemCreatedAt,
      EstateConstants.itemUpdatedAt: itemUpdatedAt,
    };
  }

  factory EstateModel.fromMap(Map<Object?, Object?> map) {
    return EstateModel(
      itemId: map[EstateConstants.itemId] != null
          ? map[EstateConstants.itemId] as int
          : null,
      itemCustomerId: map[EstateConstants.itemCustomerId] != null
          ? map[EstateConstants.itemCustomerId] as String
          : null,
      itemCategoryId: map[EstateConstants.itemCategoryId] != null
          ? map[EstateConstants.itemCategoryId] as int
          : null,
      itemSubCategoryId: map[EstateConstants.itemSubCategoryId] != null
          ? map[EstateConstants.itemSubCategoryId] as int
          : null,
      itemImages: map[EstateConstants.itemImages] != null
          ? List<String>.from((map[EstateConstants.itemImages] as List<String>))
          : null,
      itemTitle: map[EstateConstants.itemTitle] != null
          ? map[EstateConstants.itemTitle] as String
          : null,
      itemProvince: map[EstateConstants.itemProvince] != null
          ? map[EstateConstants.itemProvince] as int
          : null,
      itemRegion: map[EstateConstants.itemRegion] != null
          ? map[EstateConstants.itemRegion] as String
          : null,
      itemTotalPrice: map[EstateConstants.itemTotalPrice] != null
          ? map[EstateConstants.itemTotalPrice] as String
          : null,
      itemPriceType: map[EstateConstants.itemPriceType] != null
          ? map[EstateConstants.itemPriceType] as int
          : null,
      itemSalePriceType: map[EstateConstants.itemSalePriceType] != null
          ? map[EstateConstants.itemSalePriceType] as int
          : null,
      itemDiscountAmount: map[EstateConstants.itemDiscountAmount] != null
          ? map[EstateConstants.itemDiscountAmount] as int
          : null,
      itemDiscountAmountType:
          map[EstateConstants.itemDiscountAmountType] != null
              ? map[EstateConstants.itemDiscountAmountType] as int
              : null,
      itemBuildingMeterage: map[EstateConstants.itemBuildingMeterage] != null
          ? map[EstateConstants.itemBuildingMeterage] as int
          : null,
      itemLandMeterage: map[EstateConstants.itemLandMeterage] != null
          ? map[EstateConstants.itemLandMeterage] as int
          : null,
      itemPerMeterPrice: map[EstateConstants.itemPerMeterPrice] != null
          ? map[EstateConstants.itemPerMeterPrice] as double
          : null,
      itemRoomCount: map[EstateConstants.itemRoomCount] != null
          ? map[EstateConstants.itemRoomCount] as int
          : null,
      itemFloor: map[EstateConstants.itemFloor] != null
          ? map[EstateConstants.itemFloor] as double
          : null,
      itemSaleType: map[EstateConstants.itemSaleType] != null
          ? map[EstateConstants.itemSaleType] as int
          : null,
      itemElectricityMeterType:
          map[EstateConstants.itemElectricityMeterType] != null
              ? map[EstateConstants.itemElectricityMeterType] as int
              : null,
      itemWaterMeterType: map[EstateConstants.itemWaterMeterType] != null
          ? map[EstateConstants.itemWaterMeterType] as int
          : null,
      itemParking: map[EstateConstants.itemParking] != null
          ? map[EstateConstants.itemParking] as bool
          : null,
      itemDescription: map[EstateConstants.itemDescription] != null
          ? map[EstateConstants.itemDescription] as String
          : null,
      itemPublishStatus: map[EstateConstants.itemPublishStatus] != null
          ? map[EstateConstants.itemPublishStatus] as String
          : null,
      itemSoldStatus: map[EstateConstants.itemSoldStatus] != null
          ? map[EstateConstants.itemSoldStatus] as String
          : null,
      itemCreatedAt: map[EstateConstants.itemCreatedAt] != null
          ? map[EstateConstants.itemCreatedAt] as String
          : null,
      itemUpdatedAt: map[EstateConstants.itemUpdatedAt] != null
          ? map[EstateConstants.itemUpdatedAt] as String
          : null,
    );
  }

  factory EstateModel.fromMapItemModel(Map<Object?, Object?> map) {
    return EstateModel.itemModel(
      itemId: map[EstateConstants.itemId] != null
          ? map[EstateConstants.itemId] as int
          : null,
      itemCustomerId: map[EstateConstants.itemCustomerId] != null
          ? map[EstateConstants.itemCustomerId] as String
          : null,
      itemCategoryId: map[EstateConstants.itemCategoryId] != null
          ? map[EstateConstants.itemCategoryId] as int
          : null,
      itemSubCategoryId: map[EstateConstants.itemSubCategoryId] != null
          ? map[EstateConstants.itemSubCategoryId] as int
          : null,
      itemImages: map[EstateConstants.itemImages] != null
          ? List<String>.from((map[EstateConstants.itemImages] as List<String>))
          : null,
      itemTitle: map[EstateConstants.itemTitle] != null
          ? map[EstateConstants.itemTitle] as String
          : null,
      itemProvince: map[EstateConstants.itemProvince] != null
          ? map[EstateConstants.itemProvince] as int
          : null,
      itemRegion: map[EstateConstants.itemRegion] != null
          ? map[EstateConstants.itemRegion] as String
          : null,
      itemTotalPrice: map[EstateConstants.itemTotalPrice] != null
          ? map[EstateConstants.itemTotalPrice] as String
          : null,
      itemPriceType: map[EstateConstants.itemPriceType] != null
          ? map[EstateConstants.itemPriceType] as int
          : null,
      itemSalePriceType: map[EstateConstants.itemSalePriceType] != null
          ? map[EstateConstants.itemSalePriceType] as int
          : null,
      itemDiscountAmount: map[EstateConstants.itemDiscountAmount] != null
          ? map[EstateConstants.itemDiscountAmount] as int
          : null,
      itemDiscountAmountType:
          map[EstateConstants.itemDiscountAmountType] != null
              ? map[EstateConstants.itemDiscountAmountType] as int
              : null,
      itemPublishStatus: map[EstateConstants.itemPublishStatus] != null
          ? map[EstateConstants.itemPublishStatus] as String
          : null,
      itemSoldStatus: map[EstateConstants.itemSoldStatus] != null
          ? map[EstateConstants.itemSoldStatus] as String
          : null,
      itemCreatedAt: map[EstateConstants.itemCreatedAt] != null
          ? map[EstateConstants.itemCreatedAt] as String
          : null,
      itemUpdatedAt: map[EstateConstants.itemUpdatedAt] != null
          ? map[EstateConstants.itemUpdatedAt] as String
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory EstateModel.fromJson(String source) =>
      EstateModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'EstateModel(itemId: $itemId, itemCustomerId: $itemCustomerId, itemCategoryId: $itemCategoryId, itemSubCategoryId: $itemSubCategoryId, itemImages: $itemImages, itemTitle: $itemTitle, itemProvince: $itemProvince, itemRegion: $itemRegion, itemTotalPrice: $itemTotalPrice, itemPriceType: $itemPriceType, itemSalePriceType: $itemSalePriceType, itemDiscountAmount: $itemDiscountAmount, itemDiscountAmountType: $itemDiscountAmountType, itemBuildingMeterage: $itemBuildingMeterage, itemLandMeterage: $itemLandMeterage, itemPerMeterPrice: $itemPerMeterPrice, itemRoomCount: $itemRoomCount, itemFloor: $itemFloor, itemSaleType: $itemSaleType, itemElectricityMeterType: $itemElectricityMeterType, itemWaterMeterType: $itemWaterMeterType, itemParking: $itemParking, itemDescription: $itemDescription, itemPublishStatus: $itemPublishStatus, itemSoldStatus: $itemSoldStatus, itemCreatedAt: $itemCreatedAt, itemUpdatedAt: $itemUpdatedAt)';
  }

  @override
  bool operator ==(covariant EstateModel other) {
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
        other.itemBuildingMeterage == itemBuildingMeterage &&
        other.itemLandMeterage == itemLandMeterage &&
        other.itemPerMeterPrice == itemPerMeterPrice &&
        other.itemRoomCount == itemRoomCount &&
        other.itemFloor == itemFloor &&
        other.itemSaleType == itemSaleType &&
        other.itemElectricityMeterType == itemElectricityMeterType &&
        other.itemWaterMeterType == itemWaterMeterType &&
        other.itemParking == itemParking &&
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
        itemBuildingMeterage.hashCode ^
        itemLandMeterage.hashCode ^
        itemPerMeterPrice.hashCode ^
        itemRoomCount.hashCode ^
        itemFloor.hashCode ^
        itemSaleType.hashCode ^
        itemElectricityMeterType.hashCode ^
        itemWaterMeterType.hashCode ^
        itemParking.hashCode ^
        itemDescription.hashCode ^
        itemPublishStatus.hashCode ^
        itemSoldStatus.hashCode ^
        itemCreatedAt.hashCode ^
        itemUpdatedAt.hashCode;
  }
}
