import 'dart:convert';

import 'package:divar/repositories/items_respositories/bags_respository/constants/constants.dart';
import 'package:divar/repositories/items_respositories/item_repository/constants/constants.dart';
import 'package:flutter/foundation.dart';

class BagModel {
  final int itemId;
  final String itemCustomerId;
  final int itemCategoryId;
  final int itemSubCategoryId;
  final List<String> itemImages;
  final String itemTitle;
  final String itemAddress;
  final String itemTotalPrice;
  final String itemPriceType;
  final String itemType;
  final String itemMaterial;
  final String itemColor;
  final String itemDescription;
  final String itemStatus;
  final String itemPublishStatus;
  final String itemSoldStatus;
  final String itemCreatedAt;
  final String itemUpdatedAt;

  BagModel({
    required this.itemId,
    required this.itemCustomerId,
    required this.itemCategoryId,
    required this.itemSubCategoryId,
    required this.itemImages,
    required this.itemTitle,
    required this.itemAddress,
    required this.itemTotalPrice,
    required this.itemPriceType,
    required this.itemType,
    required this.itemMaterial,
    required this.itemColor,
    required this.itemDescription,
    required this.itemStatus,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  BagModel.itemModel({
    required this.itemId,
    required this.itemCustomerId,
    required this.itemCategoryId,
    required this.itemSubCategoryId,
    required this.itemImages,
    required this.itemTitle,
    required this.itemAddress,
    required this.itemTotalPrice,
    required this.itemPriceType,
    this.itemType = '',
    this.itemMaterial = '',
    this.itemColor = '',
    this.itemDescription = '',
    this.itemStatus = '',
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  BagModel copyWith({
    int? itemId,
    String? itemCustomerId,
    int? itemCategoryId,
    int? itemSubCategoryId,
    List<String>? itemImages,
    String? itemTitle,
    String? itemAddress,
    String? itemTotalPrice,
    String? itemPriceType,
    String? itemType,
    String? itemMaterial,
    String? itemColor,
    String? itemDescription,
    String? itemStatus,
    String? itemPublishStatus,
    String? itemSoldStatus,
    String? itemCreatedAt,
    String? itemUpdatedAt,
  }) {
    return BagModel(
      itemId: itemId ?? this.itemId,
      itemCustomerId: itemCustomerId ?? this.itemCustomerId,
      itemCategoryId: itemCategoryId ?? this.itemCategoryId,
      itemSubCategoryId: itemSubCategoryId ?? this.itemSubCategoryId,
      itemImages: itemImages ?? this.itemImages,
      itemTitle: itemTitle ?? this.itemTitle,
      itemAddress: itemAddress ?? this.itemAddress,
      itemTotalPrice: itemTotalPrice ?? this.itemTotalPrice,
      itemPriceType: itemPriceType ?? this.itemPriceType,
      itemType: itemType ?? this.itemType,
      itemMaterial: itemMaterial ?? this.itemMaterial,
      itemColor: itemColor ?? this.itemColor,
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
      BagConstants.itemId: itemId,
      BagConstants.itemCustomerId: itemCustomerId,
      BagConstants.itemCategoryId: itemCategoryId,
      BagConstants.itemSubCategoryId: itemSubCategoryId,
      BagConstants.itemImages: itemImages,
      BagConstants.itemTitle: itemTitle,
      BagConstants.itemAddress: itemAddress,
      BagConstants.itemTotalPrice: itemTotalPrice,
      BagConstants.itemPriceType: itemPriceType,
      BagConstants.itemType: itemType,
      BagConstants.itemMaterial: itemMaterial,
      BagConstants.itemColor: itemColor,
      BagConstants.itemDescription: itemDescription,
      BagConstants.itemStatus: itemStatus,
      BagConstants.itemPublishStatus: itemPublishStatus,
      BagConstants.itemSoldStatus: itemSoldStatus,
      BagConstants.itemCreatedAt: itemCreatedAt,
      BagConstants.itemUpdatedAt: itemUpdatedAt,
    };
  }

  Map<String, dynamic> toMapItemModel() {
    return <String, dynamic>{
      ItemConstants.itemId: itemId,
      ItemConstants.itemCustomerId: itemCustomerId,
      ItemConstants.itemCategoryId: itemCategoryId,
      ItemConstants.itemSubCategoryId: itemSubCategoryId,
      ItemConstants.itemImages: itemImages,
      ItemConstants.itemTitle: itemTitle,
      ItemConstants.itemAddress: itemAddress,
      ItemConstants.itemTotalPrice: itemTotalPrice,
      ItemConstants.itemPriceType: itemPriceType,
      ItemConstants.itemPublishStatus: itemPublishStatus,
      ItemConstants.itemSoldStatus: itemSoldStatus,
      ItemConstants.itemCreatedAt: itemCreatedAt,
      ItemConstants.itemUpdatedAt: itemUpdatedAt,
    };
  }

  factory BagModel.fromMap(Map<String, dynamic> map) {
    return BagModel(
      itemId: map[BagConstants.itemId] as int,
      itemCustomerId: map[BagConstants.itemCustomerId] as String,
      itemCategoryId: map[BagConstants.itemCategoryId] as int,
      itemSubCategoryId: map[BagConstants.itemSubCategoryId] as int,
      itemImages:
          List<String>.from((map[BagConstants.itemImages] as List<String>)),
      itemTitle: map[BagConstants.itemTitle] as String,
      itemAddress: map[BagConstants.itemAddress] as String,
      itemTotalPrice: map[BagConstants.itemTotalPrice] as String,
      itemPriceType: map[BagConstants.itemPriceType] as String,
      itemType: map[BagConstants.itemType] as String,
      itemMaterial: map[BagConstants.itemMaterial] as String,
      itemColor: map[BagConstants.itemColor] as String,
      itemDescription: map[BagConstants.itemDescription] as String,
      itemStatus: map[BagConstants.itemStatus] as String,
      itemPublishStatus: map[BagConstants.itemPublishStatus] as String,
      itemSoldStatus: map[BagConstants.itemSoldStatus] as String,
      itemCreatedAt: map[BagConstants.itemCreatedAt] as String,
      itemUpdatedAt: map[BagConstants.itemUpdatedAt] as String,
    );
  }

  factory BagModel.fromMapItemModel(Map<String, dynamic> map) {
    return BagModel.itemModel(
      itemId: map[ItemConstants.itemId] as int,
      itemCustomerId: map[ItemConstants.itemCustomerId] as String,
      itemCategoryId: map[ItemConstants.itemCategoryId] as int,
      itemSubCategoryId: map[ItemConstants.itemSubCategoryId] as int,
      itemImages:
          List<String>.from((map[ItemConstants.itemImages] as List<String>)),
      itemTitle: map[ItemConstants.itemTitle] as String,
      itemAddress: map[ItemConstants.itemAddress] as String,
      itemTotalPrice: map[ItemConstants.itemTotalPrice] as String,
      itemPriceType: map[ItemConstants.itemPriceType] as String,
      itemPublishStatus: map[ItemConstants.itemPublishStatus] as String,
      itemSoldStatus: map[ItemConstants.itemSoldStatus] as String,
      itemCreatedAt: map[ItemConstants.itemCreatedAt] as String,
      itemUpdatedAt: map[ItemConstants.itemUpdatedAt] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory BagModel.fromJson(String source) =>
      BagModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'BagModel(itemId: $itemId, itemCustomerId: $itemCustomerId, itemCategoryId: $itemCategoryId, itemSubCategoryId: $itemSubCategoryId, itemImages: $itemImages, itemTitle: $itemTitle, itemAddress: $itemAddress, itemTotalPrice: $itemTotalPrice, itemPriceType: $itemPriceType, itemType: $itemType, itemMaterial: $itemMaterial, itemColor: $itemColor, itemDescription: $itemDescription, itemStatus: $itemStatus, itemPublishStatus: $itemPublishStatus, itemSoldStatus: $itemSoldStatus, itemCreatedAt: $itemCreatedAt, itemUpdatedAt: $itemUpdatedAt)';
  }

  @override
  bool operator ==(covariant BagModel other) {
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
        other.itemType == itemType &&
        other.itemMaterial == itemMaterial &&
        other.itemColor == itemColor &&
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
        itemAddress.hashCode ^
        itemTotalPrice.hashCode ^
        itemPriceType.hashCode ^
        itemType.hashCode ^
        itemMaterial.hashCode ^
        itemColor.hashCode ^
        itemDescription.hashCode ^
        itemStatus.hashCode ^
        itemPublishStatus.hashCode ^
        itemSoldStatus.hashCode ^
        itemCreatedAt.hashCode ^
        itemUpdatedAt.hashCode;
  }
}
