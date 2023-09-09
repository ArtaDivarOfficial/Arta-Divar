import 'dart:convert';

import 'package:divar/repositories/items_respositories/toy_respository/constants/constants.dart';
import 'package:flutter/foundation.dart';

class ToyModel {
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
  final int? itemType;
  final String? itemDescription;
  final int? itemStatus;
  final String? itemPublishStatus;
  final String? itemSoldStatus;
  final String? itemCreatedAt;
  final String? itemUpdatedAt;

  ToyModel({
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
    required this.itemType,
    required this.itemDescription,
    required this.itemStatus,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  ToyModel.itemModel({
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
    this.itemType = -1,
    this.itemDescription = '',
    this.itemStatus = -1,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  ToyModel.toyModel({
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
    required this.itemType,
    required this.itemDescription,
    required this.itemStatus,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  ToyModel copyWith({
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
    int? itemType,
    String? itemDescription,
    int? itemStatus,
    String? itemPublishStatus,
    String? itemSoldStatus,
    String? itemCreatedAt,
    String? itemUpdatedAt,
  }) {
    return ToyModel(
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
      itemType: itemType ?? this.itemType,
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
      ToyConstants.itemId: itemId,
      ToyConstants.itemCustomerId: itemCustomerId,
      ToyConstants.itemCategoryId: itemCategoryId,
      ToyConstants.itemSubCategoryId: itemSubCategoryId,
      ToyConstants.itemImages: itemImages,
      ToyConstants.itemTitle: itemTitle,
      ToyConstants.itemProvince: itemProvince,
      ToyConstants.itemRegion: itemRegion,
      ToyConstants.itemTotalPrice: itemTotalPrice,
      ToyConstants.itemPriceType: itemPriceType,
      ToyConstants.itemType: itemType,
      ToyConstants.itemDescription: itemDescription,
      ToyConstants.itemStatus: itemStatus,
      ToyConstants.itemPublishStatus: itemPublishStatus,
      ToyConstants.itemSoldStatus: itemSoldStatus,
      ToyConstants.itemCreatedAt: itemCreatedAt,
      ToyConstants.itemUpdatedAt: itemUpdatedAt,
    };
  }

  Map<String, dynamic> toMapItemModel() {
    return <String, dynamic>{
      ToyConstants.itemId: itemId,
      ToyConstants.itemCustomerId: itemCustomerId,
      ToyConstants.itemCategoryId: itemCategoryId,
      ToyConstants.itemSubCategoryId: itemSubCategoryId,
      ToyConstants.itemImages: itemImages,
      ToyConstants.itemTitle: itemTitle,
      ToyConstants.itemProvince: itemProvince,
      ToyConstants.itemRegion: itemRegion,
      ToyConstants.itemTotalPrice: itemTotalPrice,
      ToyConstants.itemPriceType: itemPriceType,
      ToyConstants.itemPublishStatus: itemPublishStatus,
      ToyConstants.itemSoldStatus: itemSoldStatus,
      ToyConstants.itemCreatedAt: itemCreatedAt,
      ToyConstants.itemUpdatedAt: itemUpdatedAt,
    };
  }

  factory ToyModel.fromMap(Map<String, dynamic> map) {
    return ToyModel(
      itemId: map[ToyConstants.itemId] != null
          ? map[ToyConstants.itemId] as int
          : null,
      itemCustomerId: map[ToyConstants.itemCustomerId] != null
          ? map[ToyConstants.itemCustomerId] as String
          : null,
      itemCategoryId: map[ToyConstants.itemCategoryId] != null
          ? map[ToyConstants.itemCategoryId] as int
          : null,
      itemSubCategoryId: map[ToyConstants.itemSubCategoryId] != null
          ? map[ToyConstants.itemSubCategoryId] as int
          : null,
      itemImages: map[ToyConstants.itemImages] != null
          ? List<String>.from((map[ToyConstants.itemImages] as List<String>))
          : null,
      itemTitle: map[ToyConstants.itemTitle] != null
          ? map[ToyConstants.itemTitle] as String
          : null,
      itemProvince: map[ToyConstants.itemProvince] != null
          ? map[ToyConstants.itemProvince] as int
          : null,
      itemRegion: map[ToyConstants.itemRegion] != null
          ? map[ToyConstants.itemRegion] as String
          : null,
      itemTotalPrice: map[ToyConstants.itemTotalPrice] != null
          ? map[ToyConstants.itemTotalPrice] as String
          : null,
      itemPriceType: map[ToyConstants.itemPriceType] != null
          ? map[ToyConstants.itemPriceType] as int
          : null,
      itemType: map[ToyConstants.itemType] != null
          ? map[ToyConstants.itemType] as int
          : null,
      itemDescription: map[ToyConstants.itemDescription] != null
          ? map[ToyConstants.itemDescription] as String
          : null,
      itemStatus: map[ToyConstants.itemStatus] != null
          ? map[ToyConstants.itemStatus] as int
          : null,
      itemPublishStatus: map[ToyConstants.itemPublishStatus] != null
          ? map[ToyConstants.itemPublishStatus] as String
          : null,
      itemSoldStatus: map[ToyConstants.itemSoldStatus] != null
          ? map[ToyConstants.itemSoldStatus] as String
          : null,
      itemCreatedAt: map[ToyConstants.itemCreatedAt] != null
          ? map[ToyConstants.itemCreatedAt] as String
          : null,
      itemUpdatedAt: map[ToyConstants.itemUpdatedAt] != null
          ? map[ToyConstants.itemUpdatedAt] as String
          : null,
    );
  }

  factory ToyModel.fromMapItemModel(Map<String, dynamic> map) {
    return ToyModel.itemModel(
      itemId: map[ToyConstants.itemId] != null
          ? map[ToyConstants.itemId] as int
          : null,
      itemCustomerId: map[ToyConstants.itemCustomerId] != null
          ? map[ToyConstants.itemCustomerId] as String
          : null,
      itemCategoryId: map[ToyConstants.itemCategoryId] != null
          ? map[ToyConstants.itemCategoryId] as int
          : null,
      itemSubCategoryId: map[ToyConstants.itemSubCategoryId] != null
          ? map[ToyConstants.itemSubCategoryId] as int
          : null,
      itemImages: map[ToyConstants.itemImages] != null
          ? List<String>.from((map[ToyConstants.itemImages] as List<String>))
          : null,
      itemTitle: map[ToyConstants.itemTitle] != null
          ? map[ToyConstants.itemTitle] as String
          : null,
      itemProvince: map[ToyConstants.itemProvince] != null
          ? map[ToyConstants.itemProvince] as int
          : null,
      itemRegion: map[ToyConstants.itemRegion] != null
          ? map[ToyConstants.itemRegion] as String
          : null,
      itemTotalPrice: map[ToyConstants.itemTotalPrice] != null
          ? map[ToyConstants.itemTotalPrice] as String
          : null,
      itemPriceType: map[ToyConstants.itemPriceType] != null
          ? map[ToyConstants.itemPriceType] as int
          : null,
      itemPublishStatus: map[ToyConstants.itemPublishStatus] != null
          ? map[ToyConstants.itemPublishStatus] as String
          : null,
      itemSoldStatus: map[ToyConstants.itemSoldStatus] != null
          ? map[ToyConstants.itemSoldStatus] as String
          : null,
      itemCreatedAt: map[ToyConstants.itemCreatedAt] != null
          ? map[ToyConstants.itemCreatedAt] as String
          : null,
      itemUpdatedAt: map[ToyConstants.itemUpdatedAt] != null
          ? map[ToyConstants.itemUpdatedAt] as String
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ToyModel.fromJson(String source) =>
      ToyModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ToyModel(itemId: $itemId, itemCustomerId: $itemCustomerId, itemCategoryId: $itemCategoryId, itemSubCategoryId: $itemSubCategoryId, itemImages: $itemImages, itemTitle: $itemTitle, itemProvince: $itemProvince, itemRegion: $itemRegion, itemTotalPrice: $itemTotalPrice, itemPriceType: $itemPriceType, itemType: $itemType, itemDescription: $itemDescription, itemStatus: $itemStatus, itemPublishStatus: $itemPublishStatus, itemSoldStatus: $itemSoldStatus, itemCreatedAt: $itemCreatedAt, itemUpdatedAt: $itemUpdatedAt)';
  }

  @override
  bool operator ==(covariant ToyModel other) {
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
        other.itemType == itemType &&
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
        itemType.hashCode ^
        itemDescription.hashCode ^
        itemStatus.hashCode ^
        itemPublishStatus.hashCode ^
        itemSoldStatus.hashCode ^
        itemCreatedAt.hashCode ^
        itemUpdatedAt.hashCode;
  }
}
