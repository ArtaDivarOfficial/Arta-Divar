import 'dart:convert';

import 'package:divar/repositories/items_respositories/electric_appliances_respository/constants/constants.dart';
import 'package:flutter/foundation.dart';

class ElectricAppliancesModel {
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
  final String? itemMadeOf;
  final String? itemWattOrWolt;
  final String? itemDescription;
  final int? itemStatus;
  final String? itemPublishStatus;
  final String? itemSoldStatus;
  final String? itemCreatedAt;
  final String? itemUpdatedAt;

  ElectricAppliancesModel({
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
    required this.itemMadeOf,
    required this.itemWattOrWolt,
    required this.itemDescription,
    required this.itemStatus,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  ElectricAppliancesModel.itemModel({
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
    this.itemMadeOf = '',
    this.itemWattOrWolt = '',
    this.itemDescription = '',
    this.itemStatus = -1,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  ElectricAppliancesModel.lightningModel({
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
    required this.itemMadeOf,
    required this.itemWattOrWolt,
    required this.itemDescription,
    required this.itemStatus,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  ElectricAppliancesModel.industrialModel({
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
    required this.itemMadeOf,
    required this.itemWattOrWolt,
    required this.itemDescription,
    required this.itemStatus,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  ElectricAppliancesModel copyWith({
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
    String? itemMadeOf,
    String? itemWattOrWolt,
    String? itemDescription,
    int? itemStatus,
    String? itemPublishStatus,
    String? itemSoldStatus,
    String? itemCreatedAt,
    String? itemUpdatedAt,
  }) {
    return ElectricAppliancesModel(
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
      itemMadeOf: itemMadeOf ?? this.itemMadeOf,
      itemWattOrWolt: itemWattOrWolt ?? this.itemWattOrWolt,
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
      ElectricAppliancesConstants.itemId: itemId,
      ElectricAppliancesConstants.itemCustomerId: itemCustomerId,
      ElectricAppliancesConstants.itemCategoryId: itemCategoryId,
      ElectricAppliancesConstants.itemSubCategoryId: itemSubCategoryId,
      ElectricAppliancesConstants.itemImages: itemImages,
      ElectricAppliancesConstants.itemTitle: itemTitle,
      ElectricAppliancesConstants.itemProvince: itemProvince,
      ElectricAppliancesConstants.itemRegion: itemRegion,
      ElectricAppliancesConstants.itemTotalPrice: itemTotalPrice,
      ElectricAppliancesConstants.itemPriceType: itemPriceType,
      ElectricAppliancesConstants.itemMadeOf: itemMadeOf,
      ElectricAppliancesConstants.itemWattOrWolt: itemWattOrWolt,
      ElectricAppliancesConstants.itemDescription: itemDescription,
      ElectricAppliancesConstants.itemStatus: itemStatus,
      ElectricAppliancesConstants.itemPublishStatus: itemPublishStatus,
      ElectricAppliancesConstants.itemSoldStatus: itemSoldStatus,
      ElectricAppliancesConstants.itemCreatedAt: itemCreatedAt,
      ElectricAppliancesConstants.itemUpdatedAt: itemUpdatedAt,
    };
  }

  Map<String, dynamic> toMapItemModel() {
    return <String, dynamic>{
      ElectricAppliancesConstants.itemId: itemId,
      ElectricAppliancesConstants.itemCustomerId: itemCustomerId,
      ElectricAppliancesConstants.itemCategoryId: itemCategoryId,
      ElectricAppliancesConstants.itemSubCategoryId: itemSubCategoryId,
      ElectricAppliancesConstants.itemImages: itemImages,
      ElectricAppliancesConstants.itemTitle: itemTitle,
      ElectricAppliancesConstants.itemProvince: itemProvince,
      ElectricAppliancesConstants.itemRegion: itemRegion,
      ElectricAppliancesConstants.itemTotalPrice: itemTotalPrice,
      ElectricAppliancesConstants.itemPriceType: itemPriceType,
      ElectricAppliancesConstants.itemPublishStatus: itemPublishStatus,
      ElectricAppliancesConstants.itemSoldStatus: itemSoldStatus,
      ElectricAppliancesConstants.itemCreatedAt: itemCreatedAt,
      ElectricAppliancesConstants.itemUpdatedAt: itemUpdatedAt,
    };
  }

  factory ElectricAppliancesModel.fromMap(Map<String, dynamic> map) {
    return ElectricAppliancesModel(
      itemId: map[ElectricAppliancesConstants.itemId] != null
          ? map[ElectricAppliancesConstants.itemId] as int
          : null,
      itemCustomerId: map[ElectricAppliancesConstants.itemCustomerId] != null
          ? map[ElectricAppliancesConstants.itemCustomerId] as String
          : null,
      itemCategoryId: map[ElectricAppliancesConstants.itemCategoryId] != null
          ? map[ElectricAppliancesConstants.itemCategoryId] as int
          : null,
      itemSubCategoryId:
          map[ElectricAppliancesConstants.itemSubCategoryId] != null
              ? map[ElectricAppliancesConstants.itemSubCategoryId] as int
              : null,
      itemImages: map[ElectricAppliancesConstants.itemImages] != null
          ? List<String>.from(
              (map[ElectricAppliancesConstants.itemImages] as List<String>))
          : null,
      itemTitle: map[ElectricAppliancesConstants.itemTitle] != null
          ? map[ElectricAppliancesConstants.itemTitle] as String
          : null,
      itemProvince: map[ElectricAppliancesConstants.itemProvince] != null
          ? map[ElectricAppliancesConstants.itemProvince] as int
          : null,
      itemRegion: map[ElectricAppliancesConstants.itemRegion] != null
          ? map[ElectricAppliancesConstants.itemRegion] as String
          : null,
      itemTotalPrice: map[ElectricAppliancesConstants.itemTotalPrice] != null
          ? map[ElectricAppliancesConstants.itemTotalPrice] as String
          : null,
      itemPriceType: map[ElectricAppliancesConstants.itemPriceType] != null
          ? map[ElectricAppliancesConstants.itemPriceType] as int
          : null,
      itemMadeOf: map[ElectricAppliancesConstants.itemMadeOf] != null
          ? map[ElectricAppliancesConstants.itemMadeOf] as String
          : null,
      itemWattOrWolt: map[ElectricAppliancesConstants.itemWattOrWolt] != null
          ? map[ElectricAppliancesConstants.itemWattOrWolt] as String
          : null,
      itemDescription: map[ElectricAppliancesConstants.itemDescription] != null
          ? map[ElectricAppliancesConstants.itemDescription] as String
          : null,
      itemStatus: map[ElectricAppliancesConstants.itemStatus] != null
          ? map[ElectricAppliancesConstants.itemStatus] as int
          : null,
      itemPublishStatus:
          map[ElectricAppliancesConstants.itemPublishStatus] != null
              ? map[ElectricAppliancesConstants.itemPublishStatus] as String
              : null,
      itemSoldStatus: map[ElectricAppliancesConstants.itemSoldStatus] != null
          ? map[ElectricAppliancesConstants.itemSoldStatus] as String
          : null,
      itemCreatedAt: map[ElectricAppliancesConstants.itemCreatedAt] != null
          ? map[ElectricAppliancesConstants.itemCreatedAt] as String
          : null,
      itemUpdatedAt: map[ElectricAppliancesConstants.itemUpdatedAt] != null
          ? map[ElectricAppliancesConstants.itemUpdatedAt] as String
          : null,
    );
  }

  factory ElectricAppliancesModel.fromMapItemModel(Map<String, dynamic> map) {
    return ElectricAppliancesModel.itemModel(
      itemId: map[ElectricAppliancesConstants.itemId] != null
          ? map[ElectricAppliancesConstants.itemId] as int
          : null,
      itemCustomerId: map[ElectricAppliancesConstants.itemCustomerId] != null
          ? map[ElectricAppliancesConstants.itemCustomerId] as String
          : null,
      itemCategoryId: map[ElectricAppliancesConstants.itemCategoryId] != null
          ? map[ElectricAppliancesConstants.itemCategoryId] as int
          : null,
      itemSubCategoryId:
          map[ElectricAppliancesConstants.itemSubCategoryId] != null
              ? map[ElectricAppliancesConstants.itemCategoryId] as int
              : null,
      itemImages: map[ElectricAppliancesConstants.itemImages] != null
          ? List<String>.from(
              (map[ElectricAppliancesConstants.itemImages] as List<String>))
          : null,
      itemTitle: map[ElectricAppliancesConstants.itemTitle] != null
          ? map[ElectricAppliancesConstants.itemTitle] as String
          : null,
      itemProvince: map[ElectricAppliancesConstants.itemProvince] != null
          ? map[ElectricAppliancesConstants.itemProvince] as int
          : null,
      itemRegion: map[ElectricAppliancesConstants.itemRegion] != null
          ? map[ElectricAppliancesConstants.itemRegion] as String
          : null,
      itemTotalPrice: map[ElectricAppliancesConstants.itemTotalPrice] != null
          ? map[ElectricAppliancesConstants.itemTotalPrice] as String
          : null,
      itemPriceType: map[ElectricAppliancesConstants.itemPriceType] != null
          ? map[ElectricAppliancesConstants.itemPriceType] as int
          : null,
      itemPublishStatus:
          map[ElectricAppliancesConstants.itemPublishStatus] != null
              ? map[ElectricAppliancesConstants.itemPublishStatus] as String
              : null,
      itemSoldStatus: map[ElectricAppliancesConstants.itemSoldStatus] != null
          ? map[ElectricAppliancesConstants.itemSoldStatus] as String
          : null,
      itemCreatedAt: map[ElectricAppliancesConstants.itemCreatedAt] != null
          ? map[ElectricAppliancesConstants.itemCreatedAt] as String
          : null,
      itemUpdatedAt: map[ElectricAppliancesConstants.itemUpdatedAt] != null
          ? map[ElectricAppliancesConstants.itemUpdatedAt] as String
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ElectricAppliancesModel.fromJson(String source) =>
      ElectricAppliancesModel.fromMap(
          json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ElectricAppliancesModel(itemId: $itemId, itemCustomerId: $itemCustomerId, itemCategoryId: $itemCategoryId, itemSubCategoryId: $itemSubCategoryId, itemImages: $itemImages, itemTitle: $itemTitle, itemProvince: $itemProvince, itemRegion: $itemRegion, itemTotalPrice: $itemTotalPrice, itemPriceType: $itemPriceType, itemMadeOf: $itemMadeOf, itemWattOrWolt: $itemWattOrWolt, itemDescription: $itemDescription, itemStatus: $itemStatus, itemPublishStatus: $itemPublishStatus, itemSoldStatus: $itemSoldStatus, itemCreatedAt: $itemCreatedAt, itemUpdatedAt: $itemUpdatedAt)';
  }

  @override
  bool operator ==(covariant ElectricAppliancesModel other) {
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
        other.itemMadeOf == itemMadeOf &&
        other.itemWattOrWolt == itemWattOrWolt &&
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
        itemMadeOf.hashCode ^
        itemWattOrWolt.hashCode ^
        itemDescription.hashCode ^
        itemStatus.hashCode ^
        itemPublishStatus.hashCode ^
        itemSoldStatus.hashCode ^
        itemCreatedAt.hashCode ^
        itemUpdatedAt.hashCode;
  }
}
