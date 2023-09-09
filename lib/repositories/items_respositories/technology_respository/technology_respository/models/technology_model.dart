import 'dart:convert';

import 'package:divar/repositories/items_respositories/technology_respository/technology_respository/constants/constants.dart';
import 'package:flutter/foundation.dart';

class TechnologyModel {
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
  final String? itemStorage;
  final String? itemSeries;
  final String? itemDescription;
  final int? itemStatus;
  final int? itemConnectionType;
  final int? itemUSBPort;
  final int? itemMemoryCardPort;
  final int? itemGamepadCount;
  final int? itemBrandAuthenticity;
  final int? itemOperatingSystemTypeConnection;
  final String? itemPublishStatus;
  final String? itemSoldStatus;
  final String? itemCreatedAt;
  final String? itemUpdatedAt;

  TechnologyModel({
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
    required this.itemModel,
    required this.itemStorage,
    required this.itemSeries,
    required this.itemDescription,
    required this.itemStatus,
    required this.itemConnectionType,
    required this.itemUSBPort,
    required this.itemMemoryCardPort,
    required this.itemGamepadCount,
    required this.itemBrandAuthenticity,
    required this.itemOperatingSystemTypeConnection,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  TechnologyModel.itemModel({
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
    this.itemModel = '',
    this.itemStorage = '',
    this.itemSeries = '',
    this.itemDescription = '',
    this.itemStatus = -1,
    this.itemConnectionType = -1,
    this.itemUSBPort = -1,
    this.itemMemoryCardPort = -1,
    this.itemGamepadCount = -1,
    this.itemBrandAuthenticity = -1,
    this.itemOperatingSystemTypeConnection = -1,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  TechnologyModel.audioPlayerModel({
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
    required this.itemModel,
    this.itemStorage = '',
    this.itemSeries = '',
    required this.itemDescription,
    required this.itemStatus,
    required this.itemConnectionType,
    required this.itemUSBPort,
    required this.itemMemoryCardPort,
    this.itemGamepadCount = -1,
    this.itemBrandAuthenticity = -1,
    this.itemOperatingSystemTypeConnection = -1,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  TechnologyModel.playStationModel({
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
    required this.itemModel,
    required this.itemStorage,
    this.itemSeries = '',
    required this.itemDescription,
    required this.itemStatus,
    this.itemConnectionType = -1,
    this.itemUSBPort = -1,
    this.itemMemoryCardPort = -1,
    required this.itemGamepadCount,
    this.itemBrandAuthenticity = -1,
    this.itemOperatingSystemTypeConnection = -1,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  TechnologyModel.wifiAppliancesModel({
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
    required this.itemModel,
    this.itemStorage = '',
    this.itemSeries = '',
    required this.itemDescription,
    required this.itemStatus,
    this.itemConnectionType = -1,
    this.itemUSBPort = -1,
    this.itemMemoryCardPort = -1,
    this.itemGamepadCount = -1,
    this.itemBrandAuthenticity = -1,
    this.itemOperatingSystemTypeConnection = -1,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  TechnologyModel.smartWatchModel({
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
    required this.itemModel,
    this.itemStorage = '',
    required this.itemSeries,
    required this.itemDescription,
    required this.itemStatus,
    this.itemConnectionType = -1,
    this.itemUSBPort = -1,
    this.itemMemoryCardPort = -1,
    this.itemGamepadCount = -1,
    required this.itemBrandAuthenticity,
    required this.itemOperatingSystemTypeConnection,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  TechnologyModel.cameraModel({
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
    required this.itemModel,
    this.itemStorage = '',
    this.itemSeries = '',
    required this.itemDescription,
    required this.itemStatus,
    this.itemConnectionType = -1,
    this.itemUSBPort = -1,
    this.itemMemoryCardPort = -1,
    this.itemGamepadCount = -1,
    this.itemBrandAuthenticity = -1,
    this.itemOperatingSystemTypeConnection = -1,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  TechnologyModel.accessoriesModel({
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
    this.itemModel = '',
    this.itemStorage = '',
    this.itemSeries = '',
    required this.itemDescription,
    required this.itemStatus,
    this.itemConnectionType = -1,
    this.itemUSBPort = -1,
    this.itemMemoryCardPort = -1,
    this.itemGamepadCount = -1,
    this.itemBrandAuthenticity = -1,
    this.itemOperatingSystemTypeConnection = -1,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  TechnologyModel.otherTechnologyModel({
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
    this.itemModel = '',
    this.itemStorage = '',
    this.itemSeries = '',
    required this.itemDescription,
    required this.itemStatus,
    this.itemConnectionType = -1,
    this.itemUSBPort = -1,
    this.itemMemoryCardPort = -1,
    this.itemGamepadCount = -1,
    this.itemBrandAuthenticity = -1,
    this.itemOperatingSystemTypeConnection = -1,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  TechnologyModel copyWith({
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
    String? itemStorage,
    String? itemSeries,
    String? itemDescription,
    int? itemStatus,
    int? itemConnectionType,
    int? itemUSBPort,
    int? itemMemoryCardPort,
    int? itemGamepadCount,
    int? itemBrandAuthenticity,
    int? itemOperatingSystemTypeConnection,
    bool? itemChangable,
    String? itemPublishStatus,
    String? itemSoldStatus,
    String? itemCreatedAt,
    String? itemUpdatedAt,
  }) {
    return TechnologyModel(
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
      itemStorage: itemStorage ?? this.itemStorage,
      itemSeries: itemSeries ?? this.itemSeries,
      itemDescription: itemDescription ?? this.itemDescription,
      itemStatus: itemStatus ?? this.itemStatus,
      itemConnectionType: itemConnectionType ?? this.itemConnectionType,
      itemUSBPort: itemUSBPort ?? this.itemUSBPort,
      itemMemoryCardPort: itemMemoryCardPort ?? this.itemMemoryCardPort,
      itemGamepadCount: itemGamepadCount ?? this.itemGamepadCount,
      itemBrandAuthenticity:
          itemBrandAuthenticity ?? this.itemBrandAuthenticity,
      itemOperatingSystemTypeConnection: itemOperatingSystemTypeConnection ??
          this.itemOperatingSystemTypeConnection,
      itemPublishStatus: itemPublishStatus ?? this.itemPublishStatus,
      itemSoldStatus: itemSoldStatus ?? this.itemSoldStatus,
      itemCreatedAt: itemCreatedAt ?? this.itemCreatedAt,
      itemUpdatedAt: itemUpdatedAt ?? this.itemUpdatedAt,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      TechnologyConstants.itemId: itemId,
      TechnologyConstants.itemCustomerId: itemCustomerId,
      TechnologyConstants.itemCategoryId: itemCategoryId,
      TechnologyConstants.itemSubCategoryId: itemSubCategoryId,
      TechnologyConstants.itemImages: itemImages,
      TechnologyConstants.itemTitle: itemTitle,
      TechnologyConstants.itemProvince: itemProvince,
      TechnologyConstants.itemRegion: itemRegion,
      TechnologyConstants.itemTotalPrice: itemTotalPrice,
      TechnologyConstants.itemPriceType: itemPriceType,
      TechnologyConstants.itemModel: itemModel,
      TechnologyConstants.itemStorage: itemStorage,
      TechnologyConstants.itemSeries: itemSeries,
      TechnologyConstants.itemDescription: itemDescription,
      TechnologyConstants.itemStatus: itemStatus,
      TechnologyConstants.itemConnectionType: itemConnectionType,
      TechnologyConstants.itemUSBPort: itemUSBPort,
      TechnologyConstants.itemMemoryCardPort: itemMemoryCardPort,
      TechnologyConstants.itemGamepadCount: itemGamepadCount,
      TechnologyConstants.itemBrandAuthenticity: itemBrandAuthenticity,
      TechnologyConstants.itemOperatingSystemTypeConnection:
          itemOperatingSystemTypeConnection,
      TechnologyConstants.itemPublishStatus: itemPublishStatus,
      TechnologyConstants.itemSoldStatus: itemSoldStatus,
      TechnologyConstants.itemCreatedAt: itemCreatedAt,
      TechnologyConstants.itemUpdatedAt: itemUpdatedAt,
    };
  }

  Map<String, dynamic> toMapItemModel() {
    return <String, dynamic>{
      TechnologyConstants.itemId: itemId,
      TechnologyConstants.itemCustomerId: itemCustomerId,
      TechnologyConstants.itemCategoryId: itemCategoryId,
      TechnologyConstants.itemSubCategoryId: itemSubCategoryId,
      TechnologyConstants.itemImages: itemImages,
      TechnologyConstants.itemTitle: itemTitle,
      TechnologyConstants.itemProvince: itemProvince,
      TechnologyConstants.itemRegion: itemRegion,
      TechnologyConstants.itemTotalPrice: itemTotalPrice,
      TechnologyConstants.itemPriceType: itemPriceType,
      TechnologyConstants.itemPublishStatus: itemPublishStatus,
      TechnologyConstants.itemSoldStatus: itemSoldStatus,
      TechnologyConstants.itemCreatedAt: itemCreatedAt,
      TechnologyConstants.itemUpdatedAt: itemUpdatedAt,
    };
  }

  factory TechnologyModel.fromMap(Map<String, dynamic> map) {
    return TechnologyModel(
      itemId: map[TechnologyConstants.itemId] != null
          ? map[TechnologyConstants.itemId] as int
          : null,
      itemCustomerId: map[TechnologyConstants.itemCustomerId] != null
          ? map[TechnologyConstants.itemCustomerId] as String
          : null,
      itemCategoryId: map[TechnologyConstants.itemCategoryId] != null
          ? map[TechnologyConstants.itemCategoryId] as int
          : null,
      itemSubCategoryId: map[TechnologyConstants.itemSubCategoryId] != null
          ? map[TechnologyConstants.itemSubCategoryId] as int
          : null,
      itemImages: map[TechnologyConstants.itemImages] != null
          ? List<String>.from(
              (map[TechnologyConstants.itemImages] as List<String>))
          : null,
      itemTitle: map[TechnologyConstants.itemTitle] != null
          ? map[TechnologyConstants.itemTitle] as String
          : null,
      itemProvince: map[TechnologyConstants.itemProvince] != null
          ? map[TechnologyConstants.itemProvince] as int
          : null,
      itemRegion: map[TechnologyConstants.itemRegion] != null
          ? map[TechnologyConstants.itemRegion] as String
          : null,
      itemTotalPrice: map[TechnologyConstants.itemTotalPrice] != null
          ? map[TechnologyConstants.itemTotalPrice] as String
          : null,
      itemPriceType: map[TechnologyConstants.itemPriceType] != null
          ? map[TechnologyConstants.itemPriceType] as int
          : null,
      itemModel: map[TechnologyConstants.itemModel] != null
          ? map[TechnologyConstants.itemModel] as String
          : null,
      itemStorage: map[TechnologyConstants.itemStorage] != null
          ? map[TechnologyConstants.itemStorage] as String
          : null,
      itemSeries: map[TechnologyConstants.itemSeries] != null
          ? map[TechnologyConstants.itemSeries] as String
          : null,
      itemDescription: map[TechnologyConstants.itemDescription] != null
          ? map[TechnologyConstants.itemDescription] as String
          : null,
      itemStatus: map[TechnologyConstants.itemStatus] != null
          ? map[TechnologyConstants.itemStatus] as int
          : null,
      itemConnectionType: map[TechnologyConstants.itemConnectionType] != null
          ? map[TechnologyConstants.itemConnectionType] as int
          : null,
      itemUSBPort: map[TechnologyConstants.itemUSBPort] != null
          ? map[TechnologyConstants.itemUSBPort] as int
          : null,
      itemMemoryCardPort: map[TechnologyConstants.itemMemoryCardPort] != null
          ? map[TechnologyConstants.itemMemoryCardPort] as int
          : null,
      itemGamepadCount: map[TechnologyConstants.itemGamepadCount] != null
          ? map[TechnologyConstants.itemGamepadCount] as int
          : null,
      itemBrandAuthenticity:
          map[TechnologyConstants.itemBrandAuthenticity] != null
              ? map[TechnologyConstants.itemBrandAuthenticity] as int
              : null,
      itemOperatingSystemTypeConnection:
          map[TechnologyConstants.itemOperatingSystemTypeConnection] != null
              ? map[TechnologyConstants.itemOperatingSystemTypeConnection]
                  as int
              : null,
      itemPublishStatus: map[TechnologyConstants.itemPublishStatus] != null
          ? map[TechnologyConstants.itemPublishStatus] as String
          : null,
      itemSoldStatus: map[TechnologyConstants.itemSoldStatus] != null
          ? map[TechnologyConstants.itemSoldStatus] as String
          : null,
      itemCreatedAt: map[TechnologyConstants.itemCreatedAt] != null
          ? map[TechnologyConstants.itemCreatedAt] as String
          : null,
      itemUpdatedAt: map[TechnologyConstants.itemUpdatedAt] != null
          ? map[TechnologyConstants.itemUpdatedAt] as String
          : null,
    );
  }

  factory TechnologyModel.fromMapItemModel(Map<String, dynamic> map) {
    return TechnologyModel.itemModel(
      itemId: map[TechnologyConstants.itemId] != null
          ? map[TechnologyConstants.itemId] as int
          : null,
      itemCustomerId: map[TechnologyConstants.itemCustomerId] != null
          ? map[TechnologyConstants.itemCustomerId] as String
          : null,
      itemCategoryId: map[TechnologyConstants.itemCategoryId] != null
          ? map[TechnologyConstants.itemCategoryId] as int
          : null,
      itemSubCategoryId: map[TechnologyConstants.itemSubCategoryId] != null
          ? map[TechnologyConstants.itemSubCategoryId] as int
          : null,
      itemImages: map[TechnologyConstants.itemImages] != null
          ? List<String>.from(
              (map[TechnologyConstants.itemImages] as List<String>))
          : null,
      itemTitle: map[TechnologyConstants.itemTitle] != null
          ? map[TechnologyConstants.itemTitle] as String
          : null,
      itemProvince: map[TechnologyConstants.itemProvince] != null
          ? map[TechnologyConstants.itemProvince] as int
          : null,
      itemRegion: map[TechnologyConstants.itemRegion] != null
          ? map[TechnologyConstants.itemRegion] as String
          : null,
      itemTotalPrice: map[TechnologyConstants.itemTotalPrice] != null
          ? map[TechnologyConstants.itemTotalPrice] as String
          : null,
      itemPriceType: map[TechnologyConstants.itemPriceType] != null
          ? map[TechnologyConstants.itemPriceType] as int
          : null,
      itemPublishStatus: map[TechnologyConstants.itemPublishStatus] != null
          ? map[TechnologyConstants.itemPublishStatus] as String
          : null,
      itemSoldStatus: map[TechnologyConstants.itemSoldStatus] != null
          ? map[TechnologyConstants.itemSoldStatus] as String
          : null,
      itemCreatedAt: map[TechnologyConstants.itemCreatedAt] != null
          ? map[TechnologyConstants.itemCreatedAt] as String
          : null,
      itemUpdatedAt: map[TechnologyConstants.itemUpdatedAt] != null
          ? map[TechnologyConstants.itemUpdatedAt] as String
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory TechnologyModel.fromJson(String source) =>
      TechnologyModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'TechnologyModel(itemId: $itemId, itemCustomerId: $itemCustomerId, itemCategoryId: $itemCategoryId, itemSubCategoryId: $itemSubCategoryId, itemImages: $itemImages, itemTitle: $itemTitle, itemProvince: $itemProvince, itemRegion: $itemRegion, itemTotalPrice: $itemTotalPrice, itemPriceType: $itemPriceType, itemModel: $itemModel, itemStorage: $itemStorage, itemSeries: $itemSeries, itemDescription: $itemDescription, itemStatus: $itemStatus, itemConnectionType: $itemConnectionType, itemUSBPort: $itemUSBPort, itemMemoryCardPort: $itemMemoryCardPort, itemGamepadCount: $itemGamepadCount, itemBrandAuthenticity: $itemBrandAuthenticity, itemOperatingSystemTypeConnection: $itemOperatingSystemTypeConnection, itemPublishStatus: $itemPublishStatus, itemSoldStatus: $itemSoldStatus, itemCreatedAt: $itemCreatedAt, itemUpdatedAt: $itemUpdatedAt)';
  }

  @override
  bool operator ==(covariant TechnologyModel other) {
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
        other.itemStorage == itemStorage &&
        other.itemSeries == itemSeries &&
        other.itemDescription == itemDescription &&
        other.itemStatus == itemStatus &&
        other.itemConnectionType == itemConnectionType &&
        other.itemUSBPort == itemUSBPort &&
        other.itemMemoryCardPort == itemMemoryCardPort &&
        other.itemGamepadCount == itemGamepadCount &&
        other.itemBrandAuthenticity == itemBrandAuthenticity &&
        other.itemOperatingSystemTypeConnection ==
            itemOperatingSystemTypeConnection &&
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
        itemStorage.hashCode ^
        itemSeries.hashCode ^
        itemDescription.hashCode ^
        itemStatus.hashCode ^
        itemConnectionType.hashCode ^
        itemUSBPort.hashCode ^
        itemMemoryCardPort.hashCode ^
        itemGamepadCount.hashCode ^
        itemBrandAuthenticity.hashCode ^
        itemOperatingSystemTypeConnection.hashCode ^
        itemPublishStatus.hashCode ^
        itemSoldStatus.hashCode ^
        itemCreatedAt.hashCode ^
        itemUpdatedAt.hashCode;
  }
}
