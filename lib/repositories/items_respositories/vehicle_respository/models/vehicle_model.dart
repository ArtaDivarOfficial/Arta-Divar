import 'dart:convert';

import 'package:divar/repositories/items_respositories/vehicle_respository/constants/constants.dart';
import 'package:flutter/foundation.dart';

class VehicleModel {
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
  final int? itemUsedInKilometers;
  final String? itemModel;
  final int? itemCCCount;
  final int? itemCylindersCount;
  final int? itemDocumentType;
  final int? itemSteerType;
  final int? itemGearbox;
  final int? itemSize;
  final String? itemDescription;
  final int? itemStatus;
  final bool? itemChangable;
  final String? itemPublishStatus;
  final String? itemSoldStatus;
  final String? itemCreatedAt;
  final String? itemUpdatedAt;

  VehicleModel({
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
    required this.itemUsedInKilometers,
    required this.itemModel,
    required this.itemCCCount,
    required this.itemCylindersCount,
    required this.itemDocumentType,
    required this.itemSteerType,
    required this.itemGearbox,
    required this.itemSize,
    required this.itemDescription,
    required this.itemStatus,
    required this.itemChangable,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  VehicleModel.itemModel({
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
    this.itemUsedInKilometers = -1,
    this.itemModel = '',
    this.itemCCCount = -1,
    this.itemCylindersCount = -1,
    this.itemDocumentType = -1,
    this.itemSteerType = -1,
    this.itemGearbox = -1,
    this.itemSize = -1,
    this.itemDescription = '',
    this.itemStatus = -1,
    this.itemChangable = false,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  VehicleModel.carModel({
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
    required this.itemUsedInKilometers,
    required this.itemModel,
    this.itemCCCount = -1,
    required this.itemCylindersCount,
    required this.itemDocumentType,
    required this.itemSteerType,
    required this.itemGearbox,
    this.itemSize = -1,
    required this.itemDescription,
    this.itemStatus = -1,
    required this.itemChangable,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  VehicleModel.motorcycleModel({
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
    required this.itemUsedInKilometers,
    required this.itemModel,
    required this.itemCCCount,
    this.itemCylindersCount = -1,
    required this.itemDocumentType,
    this.itemSteerType = -1,
    this.itemGearbox = -1,
    this.itemSize = -1,
    required this.itemDescription,
    this.itemStatus = -1,
    required this.itemChangable,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  VehicleModel.threewheelModel({
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
    required this.itemUsedInKilometers,
    required this.itemModel,
    required this.itemCCCount,
    this.itemCylindersCount = -1,
    required this.itemDocumentType,
    this.itemSteerType = -1,
    this.itemGearbox = -1,
    this.itemSize = -1,
    required this.itemDescription,
    this.itemStatus = -1,
    required this.itemChangable,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  VehicleModel.bicycleModel({
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
    this.itemUsedInKilometers = -1,
    this.itemModel = '',
    this.itemCCCount = -1,
    this.itemCylindersCount = -1,
    this.itemDocumentType = -1,
    this.itemSteerType = -1,
    this.itemGearbox = -1,
    this.itemSize = -1,
    required this.itemDescription,
    this.itemStatus = -1,
    this.itemChangable = false,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  VehicleModel.accessoriesModel({
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
    this.itemUsedInKilometers = -1,
    this.itemModel = '',
    this.itemCCCount = -1,
    this.itemCylindersCount = -1,
    this.itemDocumentType = -1,
    this.itemSteerType = -1,
    this.itemGearbox = -1,
    this.itemSize = -1,
    required this.itemDescription,
    required this.itemStatus,
    this.itemChangable = false,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  VehicleModel copyWith({
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
    int? itemUsedInKilometers,
    String? itemModel,
    int? itemCCCount,
    int? itemCylindersCount,
    int? itemDocumentType,
    int? itemSteerType,
    int? itemGearbox,
    int? itemSize,
    String? itemDescription,
    int? itemStatus,
    bool? itemChangable,
    String? itemPublishStatus,
    String? itemSoldStatus,
    String? itemCreatedAt,
    String? itemUpdatedAt,
  }) {
    return VehicleModel(
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
      itemUsedInKilometers: itemUsedInKilometers ?? this.itemUsedInKilometers,
      itemModel: itemModel ?? this.itemModel,
      itemCCCount: itemCCCount ?? this.itemCCCount,
      itemCylindersCount: itemCylindersCount ?? this.itemCylindersCount,
      itemDocumentType: itemDocumentType ?? this.itemDocumentType,
      itemSteerType: itemSteerType ?? this.itemSteerType,
      itemGearbox: itemGearbox ?? this.itemGearbox,
      itemSize: itemSize ?? this.itemSize,
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
      VehicleConstants.itemId: itemId,
      VehicleConstants.itemCustomerId: itemCustomerId,
      VehicleConstants.itemCategoryId: itemCategoryId,
      VehicleConstants.itemSubCategoryId: itemSubCategoryId,
      VehicleConstants.itemImages: itemImages,
      VehicleConstants.itemTitle: itemTitle,
      VehicleConstants.itemProvince: itemProvince,
      VehicleConstants.itemRegion: itemRegion,
      VehicleConstants.itemTotalPrice: itemTotalPrice,
      VehicleConstants.itemPriceType: itemPriceType,
      VehicleConstants.itemUsedInKilometers: itemUsedInKilometers,
      VehicleConstants.itemModel: itemModel,
      VehicleConstants.itemCCCount: itemCCCount,
      VehicleConstants.itemCylindersCount: itemCylindersCount,
      VehicleConstants.itemDocumentType: itemDocumentType,
      VehicleConstants.itemSteerType: itemSteerType,
      VehicleConstants.itemGearbox: itemGearbox,
      VehicleConstants.itemSize: itemSize,
      VehicleConstants.itemDescription: itemDescription,
      VehicleConstants.itemStatus: itemStatus,
      VehicleConstants.itemChangable: itemChangable,
      VehicleConstants.itemPublishStatus: itemPublishStatus,
      VehicleConstants.itemSoldStatus: itemSoldStatus,
      VehicleConstants.itemCreatedAt: itemCreatedAt,
      VehicleConstants.itemUpdatedAt: itemUpdatedAt,
    };
  }

  Map<String, dynamic> toMapItemModel() {
    return <String, dynamic>{
      VehicleConstants.itemId: itemId,
      VehicleConstants.itemCustomerId: itemCustomerId,
      VehicleConstants.itemCategoryId: itemCategoryId,
      VehicleConstants.itemSubCategoryId: itemSubCategoryId,
      VehicleConstants.itemImages: itemImages,
      VehicleConstants.itemTitle: itemTitle,
      VehicleConstants.itemProvince: itemProvince,
      VehicleConstants.itemRegion: itemRegion,
      VehicleConstants.itemTotalPrice: itemTotalPrice,
      VehicleConstants.itemPriceType: itemPriceType,
      VehicleConstants.itemPublishStatus: itemPublishStatus,
      VehicleConstants.itemSoldStatus: itemSoldStatus,
      VehicleConstants.itemCreatedAt: itemCreatedAt,
      VehicleConstants.itemUpdatedAt: itemUpdatedAt,
    };
  }

  factory VehicleModel.fromMap(Map<String, dynamic> map) {
    return VehicleModel(
      itemId: map[VehicleConstants.itemId] != null
          ? map[VehicleConstants.itemId] as int
          : null,
      itemCustomerId: map[VehicleConstants.itemCustomerId] != null
          ? map[VehicleConstants.itemCustomerId] as String
          : null,
      itemCategoryId: map[VehicleConstants.itemCategoryId] != null
          ? map[VehicleConstants.itemCategoryId] as int
          : null,
      itemSubCategoryId: map[VehicleConstants.itemSubCategoryId] != null
          ? map[VehicleConstants.itemSubCategoryId] as int
          : null,
      itemImages: map[VehicleConstants.itemImages] != null
          ? List<String>.from(
              (map[VehicleConstants.itemImages] as List<String>))
          : null,
      itemTitle: map[VehicleConstants.itemTitle] != null
          ? map[VehicleConstants.itemTitle] as String
          : null,
      itemProvince: map[VehicleConstants.itemProvince] != null
          ? map[VehicleConstants.itemProvince] as int
          : null,
      itemRegion: map[VehicleConstants.itemRegion] != null
          ? map[VehicleConstants.itemRegion] as String
          : null,
      itemTotalPrice: map[VehicleConstants.itemTotalPrice] != null
          ? map[VehicleConstants.itemTotalPrice] as String
          : null,
      itemPriceType: map[VehicleConstants.itemPriceType] != null
          ? map[VehicleConstants.itemPriceType] as int
          : null,
      itemUsedInKilometers: map[VehicleConstants.itemUsedInKilometers] != null
          ? map[VehicleConstants.itemUsedInKilometers] as int
          : null,
      itemModel: map[VehicleConstants.itemModel] != null
          ? map[VehicleConstants.itemModel] as String
          : null,
      itemCCCount: map[VehicleConstants.itemCCCount] != null
          ? map[VehicleConstants.itemCCCount] as int
          : null,
      itemCylindersCount: map[VehicleConstants.itemCylindersCount] != null
          ? map[VehicleConstants.itemCylindersCount] as int
          : null,
      itemDocumentType: map[VehicleConstants.itemDocumentType] != null
          ? map[VehicleConstants.itemDocumentType] as int
          : null,
      itemSteerType: map[VehicleConstants.itemSteerType] != null
          ? map[VehicleConstants.itemSteerType] as int
          : null,
      itemGearbox: map[VehicleConstants.itemGearbox] != null
          ? map[VehicleConstants.itemGearbox] as int
          : null,
      itemSize: map[VehicleConstants.itemSize] != null
          ? map[VehicleConstants.itemSize] as int
          : null,
      itemDescription: map[VehicleConstants.itemDescription] != null
          ? map[VehicleConstants.itemDescription] as String
          : null,
      itemStatus: map[VehicleConstants.itemStatus] != null
          ? map[VehicleConstants.itemStatus] as int
          : null,
      itemChangable: map[VehicleConstants.itemChangable] != null
          ? map[VehicleConstants.itemChangable] as bool
          : null,
      itemPublishStatus: map[VehicleConstants.itemPublishStatus] != null
          ? map[VehicleConstants.itemPublishStatus] as String
          : null,
      itemSoldStatus: map[VehicleConstants.itemSoldStatus] != null
          ? map[VehicleConstants.itemSoldStatus] as String
          : null,
      itemCreatedAt: map[VehicleConstants.itemCreatedAt] != null
          ? map[VehicleConstants.itemCreatedAt] as String
          : null,
      itemUpdatedAt: map[VehicleConstants.itemUpdatedAt] != null
          ? map[VehicleConstants.itemUpdatedAt] as String
          : null,
    );
  }

  factory VehicleModel.fromMapItemModel(Map<String, dynamic> map) {
    return VehicleModel.itemModel(
      itemId: map[VehicleConstants.itemId] != null
          ? map[VehicleConstants.itemId] as int
          : null,
      itemCustomerId: map[VehicleConstants.itemCustomerId] != null
          ? map[VehicleConstants.itemCustomerId] as String
          : null,
      itemCategoryId: map[VehicleConstants.itemCategoryId] != null
          ? map[VehicleConstants.itemCategoryId] as int
          : null,
      itemSubCategoryId: map[VehicleConstants.itemSubCategoryId] != null
          ? map[VehicleConstants.itemSubCategoryId] as int
          : null,
      itemImages: map[VehicleConstants.itemImages] != null
          ? List<String>.from(
              (map[VehicleConstants.itemImages] as List<String>))
          : null,
      itemTitle: map[VehicleConstants.itemTitle] != null
          ? map[VehicleConstants.itemTitle] as String
          : null,
      itemProvince: map[VehicleConstants.itemProvince] != null
          ? map[VehicleConstants.itemProvince] as int
          : null,
      itemRegion: map[VehicleConstants.itemRegion] != null
          ? map[VehicleConstants.itemRegion] as String
          : null,
      itemTotalPrice: map[VehicleConstants.itemTotalPrice] != null
          ? map[VehicleConstants.itemTotalPrice] as String
          : null,
      itemPriceType: map[VehicleConstants.itemPriceType] != null
          ? map[VehicleConstants.itemPriceType] as int
          : null,
      itemPublishStatus: map[VehicleConstants.itemPublishStatus] != null
          ? map[VehicleConstants.itemPublishStatus] as String
          : null,
      itemSoldStatus: map[VehicleConstants.itemSoldStatus] != null
          ? map[VehicleConstants.itemSoldStatus] as String
          : null,
      itemCreatedAt: map[VehicleConstants.itemCreatedAt] != null
          ? map[VehicleConstants.itemCreatedAt] as String
          : null,
      itemUpdatedAt: map[VehicleConstants.itemUpdatedAt] != null
          ? map[VehicleConstants.itemUpdatedAt] as String
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory VehicleModel.fromJson(String source) =>
      VehicleModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'VehicleModel(itemId: $itemId, itemCustomerId: $itemCustomerId, itemCategoryId: $itemCategoryId, itemSubCategoryId: $itemSubCategoryId, itemImages: $itemImages, itemTitle: $itemTitle, itemProvince: $itemProvince, itemRegion: $itemRegion, itemTotalPrice: $itemTotalPrice, itemPriceType: $itemPriceType, itemUsedInKilometers: $itemUsedInKilometers, itemModel: $itemModel, itemCCCount: $itemCCCount, itemCylindersCount: $itemCylindersCount, itemDocumentType: $itemDocumentType, itemSteerType: $itemSteerType, itemGearbox: $itemGearbox, itemSize: $itemSize, itemDescription: $itemDescription, itemStatus: $itemStatus, itemChangable: $itemChangable, itemPublishStatus: $itemPublishStatus, itemSoldStatus: $itemSoldStatus, itemCreatedAt: $itemCreatedAt, itemUpdatedAt: $itemUpdatedAt)';
  }

  @override
  bool operator ==(covariant VehicleModel other) {
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
        other.itemUsedInKilometers == itemUsedInKilometers &&
        other.itemModel == itemModel &&
        other.itemCCCount == itemCCCount &&
        other.itemCylindersCount == itemCylindersCount &&
        other.itemDocumentType == itemDocumentType &&
        other.itemSteerType == itemSteerType &&
        other.itemGearbox == itemGearbox &&
        other.itemSize == itemSize &&
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
        itemUsedInKilometers.hashCode ^
        itemModel.hashCode ^
        itemCCCount.hashCode ^
        itemCylindersCount.hashCode ^
        itemDocumentType.hashCode ^
        itemSteerType.hashCode ^
        itemGearbox.hashCode ^
        itemSize.hashCode ^
        itemDescription.hashCode ^
        itemStatus.hashCode ^
        itemChangable.hashCode ^
        itemPublishStatus.hashCode ^
        itemSoldStatus.hashCode ^
        itemCreatedAt.hashCode ^
        itemUpdatedAt.hashCode;
  }
}
