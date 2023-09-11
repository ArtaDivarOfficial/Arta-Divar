import 'dart:convert';

import 'package:divar/repositories/items_respositories/item_repository/constants/constants.dart';
import 'package:flutter/foundation.dart';

class ItemModel {
  final int itemId;
  final String itemCustomerId;
  final int itemCategoryId;
  final int itemSubCategoryId;
  final List<String> itemImages;
  final String itemTitle;
  final String itemAddress;
  final String itemTotalPrice;
  final String itemPriceType;
  final String itemPublishStatus;
  final String itemSoldStatus;
  final String itemCreatedAt;
  final String itemUpdatedAt;

  ItemModel({
    required this.itemId,
    required this.itemCustomerId,
    required this.itemCategoryId,
    required this.itemSubCategoryId,
    required this.itemImages,
    required this.itemTitle,
    required this.itemAddress,
    required this.itemTotalPrice,
    required this.itemPriceType,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  ItemModel copyWith({
    int? itemId,
    String? itemCustomerId,
    int? itemCategoryId,
    int? itemSubCategoryId,
    List<String>? itemImages,
    String? itemTitle,
    String? itemAddress,
    String? itemTotalPrice,
    String? itemPriceType,
    String? itemPublishStatus,
    String? itemSoldStatus,
    String? itemCreatedAt,
    String? itemUpdatedAt,
  }) {
    return ItemModel(
      itemId: itemId ?? this.itemId,
      itemCustomerId: itemCustomerId ?? this.itemCustomerId,
      itemCategoryId: itemCategoryId ?? this.itemCategoryId,
      itemSubCategoryId: itemSubCategoryId ?? this.itemSubCategoryId,
      itemImages: itemImages ?? this.itemImages,
      itemTitle: itemTitle ?? this.itemTitle,
      itemAddress: itemAddress ?? this.itemAddress,
      itemTotalPrice: itemTotalPrice ?? this.itemTotalPrice,
      itemPriceType: itemPriceType ?? this.itemPriceType,
      itemPublishStatus: itemPublishStatus ?? this.itemPublishStatus,
      itemSoldStatus: itemSoldStatus ?? this.itemSoldStatus,
      itemCreatedAt: itemCreatedAt ?? this.itemCreatedAt,
      itemUpdatedAt: itemUpdatedAt ?? this.itemUpdatedAt,
    );
  }

  Map<String, dynamic> toMap() {
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

  factory ItemModel.fromMap(Map<Object?, Object?> map) {
    return ItemModel(
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

  factory ItemModel.fromJson(String source) =>
      ItemModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ItemModel(itemId: $itemId, itemCustomerId: $itemCustomerId, itemCategoryId: $itemCategoryId, itemSubCategoryId: $itemSubCategoryId, itemImages: $itemImages, itemTitle: $itemTitle, itemAddress: $itemAddress, itemTotalPrice: $itemTotalPrice, itemPriceType: $itemPriceType, itemPublishStatus: $itemPublishStatus, itemSoldStatus: $itemSoldStatus, itemCreatedAt: $itemCreatedAt, itemUpdatedAt: $itemUpdatedAt)';
  }

  @override
  bool operator ==(covariant ItemModel other) {
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
        itemPublishStatus.hashCode ^
        itemSoldStatus.hashCode ^
        itemCreatedAt.hashCode ^
        itemUpdatedAt.hashCode;
  }
}
