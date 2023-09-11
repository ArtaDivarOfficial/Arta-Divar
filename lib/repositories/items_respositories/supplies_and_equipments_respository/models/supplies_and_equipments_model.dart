import 'dart:convert';

import 'package:divar/repositories/items_respositories/supplies_and_equipments_respository/constants/constants.dart';
import 'package:flutter/foundation.dart';

class SuppliesAndEquipmentsModel {
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
  final String? itemDescription;
  final int? itemStatus;
  final String? itemPublishStatus;
  final String? itemSoldStatus;
  final String? itemCreatedAt;
  final String? itemUpdatedAt;

  SuppliesAndEquipmentsModel({
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
    required this.itemDescription,
    required this.itemStatus,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  SuppliesAndEquipmentsModel.itemModel({
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
    this.itemDescription = '',
    this.itemStatus = -1,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  SuppliesAndEquipmentsModel.buildingModel({
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
    required this.itemDescription,
    required this.itemStatus,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  SuppliesAndEquipmentsModel.medicalModel({
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
    required this.itemDescription,
    required this.itemStatus,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  SuppliesAndEquipmentsModel.toolsModel({
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
    required this.itemDescription,
    required this.itemStatus,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  SuppliesAndEquipmentsModel.industrialMachineryModel({
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
    required this.itemDescription,
    required this.itemStatus,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  SuppliesAndEquipmentsModel.otherSuppliesAndEquipmentsModel({
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
    required this.itemDescription,
    required this.itemStatus,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  SuppliesAndEquipmentsModel copyWith({
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
    String? itemDescription,
    int? itemStatus,
    String? itemPublishStatus,
    String? itemSoldStatus,
    String? itemCreatedAt,
    String? itemUpdatedAt,
  }) {
    return SuppliesAndEquipmentsModel(
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
      SuppliesAndEquipmentsConstants.itemId: itemId,
      SuppliesAndEquipmentsConstants.itemCustomerId: itemCustomerId,
      SuppliesAndEquipmentsConstants.itemCategoryId: itemCategoryId,
      SuppliesAndEquipmentsConstants.itemSubCategoryId: itemSubCategoryId,
      SuppliesAndEquipmentsConstants.itemImages: itemImages,
      SuppliesAndEquipmentsConstants.itemTitle: itemTitle,
      SuppliesAndEquipmentsConstants.itemProvince: itemProvince,
      SuppliesAndEquipmentsConstants.itemRegion: itemRegion,
      SuppliesAndEquipmentsConstants.itemTotalPrice: itemTotalPrice,
      SuppliesAndEquipmentsConstants.itemPriceType: itemPriceType,
      SuppliesAndEquipmentsConstants.itemMadeOf: itemMadeOf,
      SuppliesAndEquipmentsConstants.itemDescription: itemDescription,
      SuppliesAndEquipmentsConstants.itemStatus: itemStatus,
      SuppliesAndEquipmentsConstants.itemPublishStatus: itemPublishStatus,
      SuppliesAndEquipmentsConstants.itemSoldStatus: itemSoldStatus,
      SuppliesAndEquipmentsConstants.itemCreatedAt: itemCreatedAt,
      SuppliesAndEquipmentsConstants.itemUpdatedAt: itemUpdatedAt,
    };
  }

  Map<String, dynamic> toMapItemModel() {
    return <String, dynamic>{
      SuppliesAndEquipmentsConstants.itemId: itemId,
      SuppliesAndEquipmentsConstants.itemCustomerId: itemCustomerId,
      SuppliesAndEquipmentsConstants.itemCategoryId: itemCategoryId,
      SuppliesAndEquipmentsConstants.itemSubCategoryId: itemSubCategoryId,
      SuppliesAndEquipmentsConstants.itemImages: itemImages,
      SuppliesAndEquipmentsConstants.itemTitle: itemTitle,
      SuppliesAndEquipmentsConstants.itemProvince: itemProvince,
      SuppliesAndEquipmentsConstants.itemRegion: itemRegion,
      SuppliesAndEquipmentsConstants.itemTotalPrice: itemTotalPrice,
      SuppliesAndEquipmentsConstants.itemPriceType: itemPriceType,
      SuppliesAndEquipmentsConstants.itemPublishStatus: itemPublishStatus,
      SuppliesAndEquipmentsConstants.itemSoldStatus: itemSoldStatus,
      SuppliesAndEquipmentsConstants.itemCreatedAt: itemCreatedAt,
      SuppliesAndEquipmentsConstants.itemUpdatedAt: itemUpdatedAt,
    };
  }

  factory SuppliesAndEquipmentsModel.fromMap(Map<Object?, Object?> map) {
    return SuppliesAndEquipmentsModel(
      itemId: map[SuppliesAndEquipmentsConstants.itemId] != null
          ? map[SuppliesAndEquipmentsConstants.itemId] as int
          : null,
      itemCustomerId: map[SuppliesAndEquipmentsConstants.itemCustomerId] != null
          ? map[SuppliesAndEquipmentsConstants.itemCustomerId] as String
          : null,
      itemCategoryId: map[SuppliesAndEquipmentsConstants.itemCategoryId] != null
          ? map[SuppliesAndEquipmentsConstants.itemCategoryId] as int
          : null,
      itemSubCategoryId:
          map[SuppliesAndEquipmentsConstants.itemSubCategoryId] != null
              ? map[SuppliesAndEquipmentsConstants.itemSubCategoryId] as int
              : null,
      itemImages: map[SuppliesAndEquipmentsConstants.itemImages] != null
          ? List<String>.from(
              (map[SuppliesAndEquipmentsConstants.itemImages] as List<String>))
          : null,
      itemTitle: map[SuppliesAndEquipmentsConstants.itemTitle] != null
          ? map[SuppliesAndEquipmentsConstants.itemTitle] as String
          : null,
      itemProvince: map[SuppliesAndEquipmentsConstants.itemProvince] != null
          ? map[SuppliesAndEquipmentsConstants.itemProvince] as int
          : null,
      itemRegion: map[SuppliesAndEquipmentsConstants.itemRegion] != null
          ? map[SuppliesAndEquipmentsConstants.itemRegion] as String
          : null,
      itemTotalPrice: map[SuppliesAndEquipmentsConstants.itemTotalPrice] != null
          ? map[SuppliesAndEquipmentsConstants.itemTotalPrice] as String
          : null,
      itemPriceType: map[SuppliesAndEquipmentsConstants.itemPriceType] != null
          ? map[SuppliesAndEquipmentsConstants.itemPriceType] as int
          : null,
      itemMadeOf: map[SuppliesAndEquipmentsConstants.itemMadeOf] != null
          ? map[SuppliesAndEquipmentsConstants.itemMadeOf] as String
          : null,
      itemDescription:
          map[SuppliesAndEquipmentsConstants.itemDescription] != null
              ? map[SuppliesAndEquipmentsConstants.itemDescription] as String
              : null,
      itemStatus: map[SuppliesAndEquipmentsConstants.itemStatus] != null
          ? map[SuppliesAndEquipmentsConstants.itemStatus] as int
          : null,
      itemPublishStatus:
          map[SuppliesAndEquipmentsConstants.itemPublishStatus] != null
              ? map[SuppliesAndEquipmentsConstants.itemPublishStatus] as String
              : null,
      itemSoldStatus: map[SuppliesAndEquipmentsConstants.itemSoldStatus] != null
          ? map[SuppliesAndEquipmentsConstants.itemSoldStatus] as String
          : null,
      itemCreatedAt: map[SuppliesAndEquipmentsConstants.itemCreatedAt] != null
          ? map[SuppliesAndEquipmentsConstants.itemCreatedAt] as String
          : null,
      itemUpdatedAt: map[SuppliesAndEquipmentsConstants.itemUpdatedAt] != null
          ? map[SuppliesAndEquipmentsConstants.itemUpdatedAt] as String
          : null,
    );
  }

  factory SuppliesAndEquipmentsModel.fromMapItemModel(
      Map<String, dynamic> map) {
    return SuppliesAndEquipmentsModel.itemModel(
      itemId: map[SuppliesAndEquipmentsConstants.itemId] != null
          ? map[SuppliesAndEquipmentsConstants.itemId] as int
          : null,
      itemCustomerId: map[SuppliesAndEquipmentsConstants.itemCustomerId] != null
          ? map[SuppliesAndEquipmentsConstants.itemCustomerId] as String
          : null,
      itemCategoryId: map[SuppliesAndEquipmentsConstants.itemCategoryId] != null
          ? map[SuppliesAndEquipmentsConstants.itemCategoryId] as int
          : null,
      itemSubCategoryId:
          map[SuppliesAndEquipmentsConstants.itemSubCategoryId] != null
              ? map[SuppliesAndEquipmentsConstants.itemSubCategoryId] as int
              : null,
      itemImages: map[SuppliesAndEquipmentsConstants.itemImages] != null
          ? List<String>.from(
              (map[SuppliesAndEquipmentsConstants.itemImages] as List<String>))
          : null,
      itemTitle: map[SuppliesAndEquipmentsConstants.itemTitle] != null
          ? map[SuppliesAndEquipmentsConstants.itemTitle] as String
          : null,
      itemProvince: map[SuppliesAndEquipmentsConstants.itemProvince] != null
          ? map[SuppliesAndEquipmentsConstants.itemProvince] as int
          : null,
      itemRegion: map[SuppliesAndEquipmentsConstants.itemRegion] != null
          ? map[SuppliesAndEquipmentsConstants.itemRegion] as String
          : null,
      itemTotalPrice: map[SuppliesAndEquipmentsConstants.itemTotalPrice] != null
          ? map[SuppliesAndEquipmentsConstants.itemTotalPrice] as String
          : null,
      itemPriceType: map[SuppliesAndEquipmentsConstants.itemPriceType] != null
          ? map[SuppliesAndEquipmentsConstants.itemPriceType] as int
          : null,
      itemPublishStatus:
          map[SuppliesAndEquipmentsConstants.itemPublishStatus] != null
              ? map[SuppliesAndEquipmentsConstants.itemPublishStatus] as String
              : null,
      itemSoldStatus: map[SuppliesAndEquipmentsConstants.itemSoldStatus] != null
          ? map[SuppliesAndEquipmentsConstants.itemSoldStatus] as String
          : null,
      itemCreatedAt: map[SuppliesAndEquipmentsConstants.itemCreatedAt] != null
          ? map[SuppliesAndEquipmentsConstants.itemCreatedAt] as String
          : null,
      itemUpdatedAt: map[SuppliesAndEquipmentsConstants.itemUpdatedAt] != null
          ? map[SuppliesAndEquipmentsConstants.itemUpdatedAt] as String
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory SuppliesAndEquipmentsModel.fromJson(String source) =>
      SuppliesAndEquipmentsModel.fromMap(
          json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'SuppliesAndEquipmentsModel(itemId: $itemId, itemCustomerId: $itemCustomerId, itemCategoryId: $itemCategoryId, itemSubCategoryId: $itemSubCategoryId, itemImages: $itemImages, itemTitle: $itemTitle, itemProvince: $itemProvince, itemRegion: $itemRegion, itemTotalPrice: $itemTotalPrice, itemPriceType: $itemPriceType, itemMadeOf: $itemMadeOf, itemDescription: $itemDescription, itemStatus: $itemStatus, itemPublishStatus: $itemPublishStatus, itemSoldStatus: $itemSoldStatus, itemCreatedAt: $itemCreatedAt, itemUpdatedAt: $itemUpdatedAt)';
  }

  @override
  bool operator ==(covariant SuppliesAndEquipmentsModel other) {
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
        itemDescription.hashCode ^
        itemStatus.hashCode ^
        itemPublishStatus.hashCode ^
        itemSoldStatus.hashCode ^
        itemCreatedAt.hashCode ^
        itemUpdatedAt.hashCode;
  }
}
