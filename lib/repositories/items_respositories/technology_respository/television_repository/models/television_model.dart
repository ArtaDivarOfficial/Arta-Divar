import 'dart:convert';

import 'package:divar/repositories/items_respositories/technology_respository/television_repository/constants/constants.dart';
import 'package:flutter/foundation.dart';

class TelevisionModel {
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
  final String? itemModel;
  final int? itemScreenSize;
  final String? itemDescription;
  final int? itemStatus;
  final int? itemHDMIPortCount;
  final int? itemUSBPortCount;
  final int? itemType;
  final bool? itemChangable;
  final String? itemPublishStatus;
  final String? itemSoldStatus;
  final String? itemCreatedAt;
  final String? itemUpdatedAt;

  TelevisionModel({
    this.itemId,
    this.itemCustomerId,
    this.itemCategoryId,
    this.itemSubCategoryId,
    this.itemImages,
    this.itemTitle,
    this.itemProvince,
    this.itemRegion,
    this.itemTotalPrice,
    this.itemPriceType,
    this.itemModel,
    this.itemScreenSize,
    this.itemDescription,
    this.itemStatus,
    this.itemHDMIPortCount,
    this.itemUSBPortCount,
    this.itemType,
    this.itemChangable,
    this.itemPublishStatus,
    this.itemSoldStatus,
    this.itemCreatedAt,
    this.itemUpdatedAt,
  });

  TelevisionModel.itemModel({
    this.itemId,
    this.itemCustomerId,
    this.itemCategoryId,
    this.itemSubCategoryId,
    this.itemImages,
    this.itemTitle,
    this.itemProvince,
    this.itemRegion,
    this.itemTotalPrice,
    this.itemPriceType,
    this.itemModel = '',
    this.itemScreenSize = -1,
    this.itemDescription = '',
    this.itemStatus = -1,
    this.itemHDMIPortCount = -1,
    this.itemUSBPortCount = -1,
    this.itemType = -1,
    this.itemChangable = false,
    this.itemPublishStatus,
    this.itemSoldStatus,
    this.itemCreatedAt,
    this.itemUpdatedAt,
  });

  TelevisionModel.televisionModel({
    this.itemId,
    this.itemCustomerId,
    this.itemCategoryId,
    this.itemSubCategoryId,
    this.itemImages,
    this.itemTitle,
    this.itemProvince,
    this.itemRegion,
    this.itemTotalPrice,
    this.itemPriceType,
    this.itemModel,
    this.itemScreenSize,
    this.itemDescription,
    this.itemStatus,
    this.itemHDMIPortCount,
    this.itemUSBPortCount,
    this.itemType,
    this.itemChangable,
    this.itemPublishStatus,
    this.itemSoldStatus,
    this.itemCreatedAt,
    this.itemUpdatedAt,
  });

  TelevisionModel copyWith({
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
    String? itemModel,
    int? itemScreenSize,
    String? itemDescription,
    int? itemStatus,
    int? itemHDMIPortCount,
    int? itemUSBPortCount,
    int? itemType,
    bool? itemChangable,
    String? itemPublishStatus,
    String? itemSoldStatus,
    String? itemCreatedAt,
    String? itemUpdatedAt,
  }) {
    return TelevisionModel(
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
      itemModel: itemModel ?? this.itemModel,
      itemScreenSize: itemScreenSize ?? this.itemScreenSize,
      itemDescription: itemDescription ?? this.itemDescription,
      itemStatus: itemStatus ?? this.itemStatus,
      itemHDMIPortCount: itemHDMIPortCount ?? this.itemHDMIPortCount,
      itemUSBPortCount: itemUSBPortCount ?? this.itemUSBPortCount,
      itemType: itemType ?? this.itemType,
      itemChangable: itemChangable ?? this.itemChangable,
      itemPublishStatus: itemPublishStatus ?? this.itemPublishStatus,
      itemSoldStatus: itemSoldStatus ?? this.itemSoldStatus,
      itemCreatedAt: itemCreatedAt ?? this.itemCreatedAt,
      itemUpdatedAt: itemUpdatedAt ?? this.itemUpdatedAt,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      TelevisionConstants.itemId: itemId,
      TelevisionConstants.itemCustomerId: itemCustomerId,
      TelevisionConstants.itemCategoryId: itemCategoryId,
      TelevisionConstants.itemSubCategoryId: itemSubCategoryId,
      TelevisionConstants.itemImages: itemImages,
      TelevisionConstants.itemTitle: itemTitle,
      TelevisionConstants.itemProvince: itemProvince,
      TelevisionConstants.itemRegion: itemRegion,
      TelevisionConstants.itemTotalPrice: itemTotalPrice,
      TelevisionConstants.itemPriceType: itemPriceType,
      TelevisionConstants.itemModel: itemModel,
      TelevisionConstants.itemScreenSize: itemScreenSize,
      TelevisionConstants.itemDescription: itemDescription,
      TelevisionConstants.itemStatus: itemStatus,
      TelevisionConstants.itemHDMIPortCount: itemHDMIPortCount,
      TelevisionConstants.itemUSBPortCount: itemUSBPortCount,
      TelevisionConstants.itemType: itemType,
      TelevisionConstants.itemChangable: itemChangable,
      TelevisionConstants.itemPublishStatus: itemPublishStatus,
      TelevisionConstants.itemSoldStatus: itemSoldStatus,
      TelevisionConstants.itemCreatedAt: itemCreatedAt,
      TelevisionConstants.itemUpdatedAt: itemUpdatedAt,
    };
  }

  Map<String, dynamic> toMapItemModel() {
    return <String, dynamic>{
      TelevisionConstants.itemId: itemId,
      TelevisionConstants.itemCustomerId: itemCustomerId,
      TelevisionConstants.itemCategoryId: itemCategoryId,
      TelevisionConstants.itemSubCategoryId: itemSubCategoryId,
      TelevisionConstants.itemImages: itemImages,
      TelevisionConstants.itemTitle: itemTitle,
      TelevisionConstants.itemProvince: itemProvince,
      TelevisionConstants.itemRegion: itemRegion,
      TelevisionConstants.itemTotalPrice: itemTotalPrice,
      TelevisionConstants.itemPriceType: itemPriceType,
      TelevisionConstants.itemPublishStatus: itemPublishStatus,
      TelevisionConstants.itemSoldStatus: itemSoldStatus,
      TelevisionConstants.itemCreatedAt: itemCreatedAt,
      TelevisionConstants.itemUpdatedAt: itemUpdatedAt,
    };
  }

  factory TelevisionModel.fromMap(Map<String, dynamic> map) {
    return TelevisionModel(
      itemId: map[TelevisionConstants.itemId] != null
          ? map[TelevisionConstants.itemId] as int
          : null,
      itemCustomerId: map[TelevisionConstants.itemCustomerId] != null
          ? map[TelevisionConstants.itemCustomerId] as String
          : null,
      itemCategoryId: map[TelevisionConstants.itemCategoryId] != null
          ? map[TelevisionConstants.itemCategoryId] as int
          : null,
      itemSubCategoryId: map[TelevisionConstants.itemSubCategoryId] != null
          ? map[TelevisionConstants.itemSubCategoryId] as int
          : null,
      itemImages: map[TelevisionConstants.itemImages] != null
          ? List<String>.from(
              (map[TelevisionConstants.itemImages] as List<String>))
          : null,
      itemTitle: map[TelevisionConstants.itemTitle] != null
          ? map[TelevisionConstants.itemTitle] as String
          : null,
      itemProvince: map[TelevisionConstants.itemProvince] != null
          ? map[TelevisionConstants.itemProvince] as int
          : null,
      itemRegion: map[TelevisionConstants.itemRegion] != null
          ? map[TelevisionConstants.itemRegion] as String
          : null,
      itemTotalPrice: map[TelevisionConstants.itemTotalPrice] != null
          ? map[TelevisionConstants.itemTotalPrice] as String
          : null,
      itemPriceType: map[TelevisionConstants.itemPriceType] != null
          ? map[TelevisionConstants.itemPriceType] as int
          : null,
      itemModel: map[TelevisionConstants.itemModel] != null
          ? map[TelevisionConstants.itemModel] as String
          : null,
      itemScreenSize: map[TelevisionConstants.itemScreenSize] != null
          ? map[TelevisionConstants.itemScreenSize] as int
          : null,
      itemDescription: map[TelevisionConstants.itemDescription] != null
          ? map[TelevisionConstants.itemDescription] as String
          : null,
      itemStatus: map[TelevisionConstants.itemStatus] != null
          ? map[TelevisionConstants.itemStatus] as int
          : null,
      itemHDMIPortCount: map[TelevisionConstants.itemHDMIPortCount] != null
          ? map[TelevisionConstants.itemHDMIPortCount] as int
          : null,
      itemUSBPortCount: map[TelevisionConstants.itemUSBPortCount] != null
          ? map[TelevisionConstants.itemUSBPortCount] as int
          : null,
      itemType: map[TelevisionConstants.itemType] != null
          ? map[TelevisionConstants.itemType] as int
          : null,
      itemChangable: map[TelevisionConstants.itemChangable] != null
          ? map[TelevisionConstants.itemChangable] as bool
          : null,
      itemPublishStatus: map[TelevisionConstants.itemPublishStatus] != null
          ? map[TelevisionConstants.itemPublishStatus] as String
          : null,
      itemSoldStatus: map[TelevisionConstants.itemSoldStatus] != null
          ? map[TelevisionConstants.itemSoldStatus] as String
          : null,
      itemCreatedAt: map[TelevisionConstants.itemCreatedAt] != null
          ? map[TelevisionConstants.itemCreatedAt] as String
          : null,
      itemUpdatedAt: map[TelevisionConstants.itemUpdatedAt] != null
          ? map[TelevisionConstants.itemUpdatedAt] as String
          : null,
    );
  }

  factory TelevisionModel.fromMapItemModel(Map<String, dynamic> map) {
    return TelevisionModel.itemModel(
      itemId: map[TelevisionConstants.itemId] != null
          ? map[TelevisionConstants.itemId] as int
          : null,
      itemCustomerId: map[TelevisionConstants.itemCustomerId] != null
          ? map[TelevisionConstants.itemCustomerId] as String
          : null,
      itemCategoryId: map[TelevisionConstants.itemCategoryId] != null
          ? map[TelevisionConstants.itemCategoryId] as int
          : null,
      itemSubCategoryId: map[TelevisionConstants.itemSubCategoryId] != null
          ? map[TelevisionConstants.itemSubCategoryId] as int
          : null,
      itemImages: map[TelevisionConstants.itemImages] != null
          ? List<String>.from(
              (map[TelevisionConstants.itemImages] as List<String>))
          : null,
      itemTitle: map[TelevisionConstants.itemTitle] != null
          ? map[TelevisionConstants.itemTitle] as String
          : null,
      itemProvince: map[TelevisionConstants.itemProvince] != null
          ? map[TelevisionConstants.itemProvince] as int
          : null,
      itemRegion: map[TelevisionConstants.itemRegion] != null
          ? map[TelevisionConstants.itemRegion] as String
          : null,
      itemTotalPrice: map[TelevisionConstants.itemTotalPrice] != null
          ? map[TelevisionConstants.itemTotalPrice] as String
          : null,
      itemPriceType: map[TelevisionConstants.itemPriceType] != null
          ? map[TelevisionConstants.itemPriceType] as int
          : null,
      itemPublishStatus: map[TelevisionConstants.itemPublishStatus] != null
          ? map[TelevisionConstants.itemPublishStatus] as String
          : null,
      itemSoldStatus: map[TelevisionConstants.itemSoldStatus] != null
          ? map[TelevisionConstants.itemSoldStatus] as String
          : null,
      itemCreatedAt: map[TelevisionConstants.itemCreatedAt] != null
          ? map[TelevisionConstants.itemCreatedAt] as String
          : null,
      itemUpdatedAt: map[TelevisionConstants.itemUpdatedAt] != null
          ? map[TelevisionConstants.itemUpdatedAt] as String
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory TelevisionModel.fromJson(String source) =>
      TelevisionModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'TelevisionModel(itemId: $itemId, itemCustomerId: $itemCustomerId, itemCategoryId: $itemCategoryId, itemSubCategoryId: $itemSubCategoryId, itemImages: $itemImages, itemTitle: $itemTitle, itemProvince: $itemProvince, itemRegion: $itemRegion, itemTotalPrice: $itemTotalPrice, itemPriceType: $itemPriceType, itemModel: $itemModel, itemScreenSize: $itemScreenSize, itemDescription: $itemDescription, itemStatus: $itemStatus, itemHDMIPortCount: $itemHDMIPortCount, itemUSBPortCount: $itemUSBPortCount, itemType: $itemType, itemChangable: $itemChangable, itemPublishStatus: $itemPublishStatus, itemSoldStatus: $itemSoldStatus, itemCreatedAt: $itemCreatedAt, itemUpdatedAt: $itemUpdatedAt)';
  }

  @override
  bool operator ==(covariant TelevisionModel other) {
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
        other.itemModel == itemModel &&
        other.itemScreenSize == itemScreenSize &&
        other.itemDescription == itemDescription &&
        other.itemStatus == itemStatus &&
        other.itemHDMIPortCount == itemHDMIPortCount &&
        other.itemUSBPortCount == itemUSBPortCount &&
        other.itemType == itemType &&
        other.itemChangable == itemChangable &&
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
        itemModel.hashCode ^
        itemScreenSize.hashCode ^
        itemDescription.hashCode ^
        itemStatus.hashCode ^
        itemHDMIPortCount.hashCode ^
        itemUSBPortCount.hashCode ^
        itemType.hashCode ^
        itemChangable.hashCode ^
        itemPublishStatus.hashCode ^
        itemSoldStatus.hashCode ^
        itemCreatedAt.hashCode ^
        itemUpdatedAt.hashCode;
  }
}