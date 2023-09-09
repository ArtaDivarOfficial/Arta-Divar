import 'dart:convert';

import 'package:divar/repositories/items_respositories/technology_respository/mobile_repository/constants/constants.dart';
import 'package:flutter/foundation.dart';

class MobileModel {
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
  final int? itemBatteryCapacity;
  final String? itemRam;
  final String? itemStorage;
  final int? itemBrandAuthenticity;
  final int? itemSimCount;
  final int? itemCamera;
  final String? itemDescription;
  final int? itemStatus;
  final bool? itemChangable;
  final String? itemPublishStatus;
  final String? itemSoldStatus;
  final String? itemCreatedAt;
  final String? itemUpdatedAt;

  MobileModel({
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
    this.itemBatteryCapacity,
    this.itemRam,
    this.itemStorage,
    this.itemBrandAuthenticity,
    this.itemSimCount,
    this.itemCamera,
    this.itemDescription,
    this.itemStatus,
    this.itemChangable,
    this.itemPublishStatus,
    this.itemSoldStatus,
    this.itemCreatedAt,
    this.itemUpdatedAt,
  });

  MobileModel.itemModel({
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
    this.itemBatteryCapacity = -1,
    this.itemRam = '',
    this.itemStorage = '',
    this.itemBrandAuthenticity = -1,
    this.itemSimCount = -1,
    this.itemCamera = -1,
    this.itemDescription = '',
    this.itemStatus = -1,
    this.itemChangable = false,
    this.itemPublishStatus,
    this.itemSoldStatus,
    this.itemCreatedAt,
    this.itemUpdatedAt,
  });

  MobileModel.mobileModel({
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
    this.itemBatteryCapacity,
    this.itemRam,
    this.itemStorage,
    this.itemBrandAuthenticity,
    this.itemSimCount,
    this.itemCamera,
    this.itemDescription,
    this.itemStatus,
    this.itemChangable,
    this.itemPublishStatus,
    this.itemSoldStatus,
    this.itemCreatedAt,
    this.itemUpdatedAt,
  });

  MobileModel copyWith({
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
    int? itemBatteryCapacity,
    String? itemRam,
    String? itemStorage,
    int? itemBrandAuthenticity,
    int? itemSimCount,
    int? itemCamera,
    String? itemDescription,
    int? itemStatus,
    bool? itemChangable,
    String? itemPublishStatus,
    String? itemSoldStatus,
    String? itemCreatedAt,
    String? itemUpdatedAt,
  }) {
    return MobileModel(
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
      itemBatteryCapacity: itemBatteryCapacity ?? this.itemBatteryCapacity,
      itemRam: itemRam ?? this.itemRam,
      itemStorage: itemStorage ?? this.itemStorage,
      itemBrandAuthenticity:
          itemBrandAuthenticity ?? this.itemBrandAuthenticity,
      itemSimCount: itemSimCount ?? this.itemSimCount,
      itemCamera: itemCamera ?? this.itemCamera,
      itemDescription: itemDescription ?? this.itemDescription,
      itemStatus: itemStatus ?? this.itemStatus,
      itemChangable: itemChangable ?? this.itemChangable,
      itemPublishStatus: itemPublishStatus ?? this.itemPublishStatus,
      itemSoldStatus: itemSoldStatus ?? this.itemSoldStatus,
      itemCreatedAt: itemCreatedAt ?? this.itemCreatedAt,
      itemUpdatedAt: itemUpdatedAt ?? this.itemUpdatedAt,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      MobileConstants.itemId: itemId,
      MobileConstants.itemCustomerId: itemCustomerId,
      MobileConstants.itemCategoryId: itemCategoryId,
      MobileConstants.itemSubCategoryId: itemSubCategoryId,
      MobileConstants.itemImages: itemImages,
      MobileConstants.itemTitle: itemTitle,
      MobileConstants.itemProvince: itemProvince,
      MobileConstants.itemRegion: itemRegion,
      MobileConstants.itemTotalPrice: itemTotalPrice,
      MobileConstants.itemPriceType: itemPriceType,
      MobileConstants.itemModel: itemModel,
      MobileConstants.itemBatteryCapacity: itemBatteryCapacity,
      MobileConstants.itemRam: itemRam,
      MobileConstants.itemStorage: itemStorage,
      MobileConstants.itemBrandAuthenticity: itemBrandAuthenticity,
      MobileConstants.itemSimCount: itemSimCount,
      MobileConstants.itemCamera: itemCamera,
      MobileConstants.itemDescription: itemDescription,
      MobileConstants.itemStatus: itemStatus,
      MobileConstants.itemChangable: itemChangable,
      MobileConstants.itemPublishStatus: itemPublishStatus,
      MobileConstants.itemSoldStatus: itemSoldStatus,
      MobileConstants.itemCreatedAt: itemCreatedAt,
      MobileConstants.itemUpdatedAt: itemUpdatedAt,
    };
  }

  Map<String, dynamic> toMapItemModel() {
    return <String, dynamic>{
      MobileConstants.itemId: itemId,
      MobileConstants.itemCustomerId: itemCustomerId,
      MobileConstants.itemCategoryId: itemCategoryId,
      MobileConstants.itemSubCategoryId: itemSubCategoryId,
      MobileConstants.itemImages: itemImages,
      MobileConstants.itemTitle: itemTitle,
      MobileConstants.itemProvince: itemProvince,
      MobileConstants.itemRegion: itemRegion,
      MobileConstants.itemTotalPrice: itemTotalPrice,
      MobileConstants.itemPriceType: itemPriceType,
      MobileConstants.itemPublishStatus: itemPublishStatus,
      MobileConstants.itemSoldStatus: itemSoldStatus,
      MobileConstants.itemCreatedAt: itemCreatedAt,
      MobileConstants.itemUpdatedAt: itemUpdatedAt,
    };
  }

  factory MobileModel.fromMap(Map<String, dynamic> map) {
    return MobileModel(
      itemId: map[MobileConstants.itemId] != null
          ? map[MobileConstants.itemId] as int
          : null,
      itemCustomerId: map[MobileConstants.itemCustomerId] != null
          ? map[MobileConstants.itemCustomerId] as String
          : null,
      itemCategoryId: map[MobileConstants.itemCategoryId] != null
          ? map[MobileConstants.itemCategoryId] as int
          : null,
      itemSubCategoryId: map[MobileConstants.itemSubCategoryId] != null
          ? map[MobileConstants.itemSubCategoryId] as int
          : null,
      itemImages: map[MobileConstants.itemImages] != null
          ? List<String>.from((map[MobileConstants.itemImages] as List<String>))
          : null,
      itemTitle: map[MobileConstants.itemTitle] != null
          ? map[MobileConstants.itemTitle] as String
          : null,
      itemProvince: map[MobileConstants.itemProvince] != null
          ? map[MobileConstants.itemProvince] as int
          : null,
      itemRegion: map[MobileConstants.itemRegion] != null
          ? map[MobileConstants.itemRegion] as String
          : null,
      itemTotalPrice: map[MobileConstants.itemTotalPrice] != null
          ? map[MobileConstants.itemTotalPrice] as String
          : null,
      itemPriceType: map[MobileConstants.itemPriceType] != null
          ? map[MobileConstants.itemPriceType] as int
          : null,
      itemModel: map[MobileConstants.itemModel] != null
          ? map[MobileConstants.itemModel] as String
          : null,
      itemBatteryCapacity: map[MobileConstants.itemBatteryCapacity] != null
          ? map[MobileConstants.itemBatteryCapacity] as int
          : null,
      itemRam: map[MobileConstants.itemRam] != null
          ? map[MobileConstants.itemRam] as String
          : null,
      itemStorage: map[MobileConstants.itemStorage] != null
          ? map[MobileConstants.itemStorage] as String
          : null,
      itemBrandAuthenticity: map[MobileConstants.itemBrandAuthenticity] != null
          ? map[MobileConstants.itemBrandAuthenticity] as int
          : null,
      itemSimCount: map[MobileConstants.itemSimCount] != null
          ? map[MobileConstants.itemSimCount] as int
          : null,
      itemCamera: map[MobileConstants.itemCamera] != null
          ? map[MobileConstants.itemCamera] as int
          : null,
      itemDescription: map[MobileConstants.itemDescription] != null
          ? map[MobileConstants.itemDescription] as String
          : null,
      itemStatus: map[MobileConstants.itemStatus] != null
          ? map[MobileConstants.itemStatus] as int
          : null,
      itemChangable: map[MobileConstants.itemChangable] != null
          ? map[MobileConstants.itemChangable] as bool
          : null,
      itemPublishStatus: map[MobileConstants.itemPublishStatus] != null
          ? map[MobileConstants.itemPublishStatus] as String
          : null,
      itemSoldStatus: map[MobileConstants.itemSoldStatus] != null
          ? map[MobileConstants.itemSoldStatus] as String
          : null,
      itemCreatedAt: map[MobileConstants.itemCreatedAt] != null
          ? map[MobileConstants.itemCreatedAt] as String
          : null,
      itemUpdatedAt: map[MobileConstants.itemUpdatedAt] != null
          ? map[MobileConstants.itemUpdatedAt] as String
          : null,
    );
  }

  factory MobileModel.fromMapItemModel(Map<String, dynamic> map) {
    return MobileModel.itemModel(
      itemId: map[MobileConstants.itemId] != null
          ? map[MobileConstants.itemId] as int
          : null,
      itemCustomerId: map[MobileConstants.itemCustomerId] != null
          ? map[MobileConstants.itemCustomerId] as String
          : null,
      itemCategoryId: map[MobileConstants.itemCategoryId] != null
          ? map[MobileConstants.itemCategoryId] as int
          : null,
      itemSubCategoryId: map[MobileConstants.itemSubCategoryId] != null
          ? map[MobileConstants.itemSubCategoryId] as int
          : null,
      itemImages: map[MobileConstants.itemImages] != null
          ? List<String>.from((map[MobileConstants.itemImages] as List<String>))
          : null,
      itemTitle: map[MobileConstants.itemTitle] != null
          ? map[MobileConstants.itemTitle] as String
          : null,
      itemProvince: map[MobileConstants.itemProvince] != null
          ? map[MobileConstants.itemProvince] as int
          : null,
      itemRegion: map[MobileConstants.itemRegion] != null
          ? map[MobileConstants.itemRegion] as String
          : null,
      itemTotalPrice: map[MobileConstants.itemTotalPrice] != null
          ? map[MobileConstants.itemTotalPrice] as String
          : null,
      itemPriceType: map[MobileConstants.itemPriceType] != null
          ? map[MobileConstants.itemPriceType] as int
          : null,
      itemPublishStatus: map[MobileConstants.itemPublishStatus] != null
          ? map[MobileConstants.itemPublishStatus] as String
          : null,
      itemSoldStatus: map[MobileConstants.itemSoldStatus] != null
          ? map[MobileConstants.itemSoldStatus] as String
          : null,
      itemCreatedAt: map[MobileConstants.itemCreatedAt] != null
          ? map[MobileConstants.itemCreatedAt] as String
          : null,
      itemUpdatedAt: map[MobileConstants.itemUpdatedAt] != null
          ? map[MobileConstants.itemUpdatedAt] as String
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory MobileModel.fromJson(String source) =>
      MobileModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'MobileModel(itemId: $itemId, itemCustomerId: $itemCustomerId, itemCategoryId: $itemCategoryId, itemSubCategoryId: $itemSubCategoryId, itemImages: $itemImages, itemTitle: $itemTitle, itemProvince: $itemProvince, itemRegion: $itemRegion, itemTotalPrice: $itemTotalPrice, itemPriceType: $itemPriceType, itemModel: $itemModel, itemBatteryCapacity: $itemBatteryCapacity, itemRam: $itemRam, itemStorage: $itemStorage, itemBrandAuthenticity: $itemBrandAuthenticity, itemSimCount: $itemSimCount, itemCamera: $itemCamera, itemDescription: $itemDescription, itemStatus: $itemStatus, itemChangable: $itemChangable, itemPublishStatus: $itemPublishStatus, itemSoldStatus: $itemSoldStatus, itemCreatedAt: $itemCreatedAt, itemUpdatedAt: $itemUpdatedAt)';
  }

  @override
  bool operator ==(covariant MobileModel other) {
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
        other.itemBatteryCapacity == itemBatteryCapacity &&
        other.itemRam == itemRam &&
        other.itemStorage == itemStorage &&
        other.itemBrandAuthenticity == itemBrandAuthenticity &&
        other.itemSimCount == itemSimCount &&
        other.itemCamera == itemCamera &&
        other.itemDescription == itemDescription &&
        other.itemStatus == itemStatus &&
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
        itemBatteryCapacity.hashCode ^
        itemRam.hashCode ^
        itemStorage.hashCode ^
        itemBrandAuthenticity.hashCode ^
        itemSimCount.hashCode ^
        itemCamera.hashCode ^
        itemDescription.hashCode ^
        itemStatus.hashCode ^
        itemChangable.hashCode ^
        itemPublishStatus.hashCode ^
        itemSoldStatus.hashCode ^
        itemCreatedAt.hashCode ^
        itemUpdatedAt.hashCode;
  }
}
