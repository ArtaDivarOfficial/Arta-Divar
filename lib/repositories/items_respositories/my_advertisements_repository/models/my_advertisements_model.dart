import 'dart:convert';

import 'package:divar/repositories/items_respositories/my_advertisements_repository/constants/constants.dart';
import 'package:flutter/foundation.dart';

class MyAdvertisementsModel {
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

  MyAdvertisementsModel({
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

  MyAdvertisementsModel copyWith({
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
    return MyAdvertisementsModel(
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
      MyAdvertisementsConstants.itemId: itemId,
      MyAdvertisementsConstants.itemCustomerId: itemCustomerId,
      MyAdvertisementsConstants.itemCategoryId: itemCategoryId,
      MyAdvertisementsConstants.itemSubCategoryId: itemSubCategoryId,
      MyAdvertisementsConstants.itemImages: itemImages,
      MyAdvertisementsConstants.itemTitle: itemTitle,
      MyAdvertisementsConstants.itemAddress: itemAddress,
      MyAdvertisementsConstants.itemTotalPrice: itemTotalPrice,
      MyAdvertisementsConstants.itemPriceType: itemPriceType,
      MyAdvertisementsConstants.itemPublishStatus: itemPublishStatus,
      MyAdvertisementsConstants.itemSoldStatus: itemSoldStatus,
      MyAdvertisementsConstants.itemCreatedAt: itemCreatedAt,
      MyAdvertisementsConstants.itemUpdatedAt: itemUpdatedAt,
    };
  }

  factory MyAdvertisementsModel.fromMap(Map<String, dynamic> map) {
    return MyAdvertisementsModel(
      itemId: map[MyAdvertisementsConstants.itemId] as int,
      itemCustomerId: map[MyAdvertisementsConstants.itemCustomerId] as String,
      itemCategoryId: map[MyAdvertisementsConstants.itemCategoryId] as int,
      itemSubCategoryId:
          map[MyAdvertisementsConstants.itemSubCategoryId] as int,
      itemImages: List<String>.from(
          (map[MyAdvertisementsConstants.itemImages] as List<String>)),
      itemTitle: map[MyAdvertisementsConstants.itemTitle] as String,
      itemAddress: map[MyAdvertisementsConstants.itemAddress] as String,
      itemTotalPrice: map[MyAdvertisementsConstants.itemTotalPrice] as String,
      itemPriceType: map[MyAdvertisementsConstants.itemPriceType] as String,
      itemPublishStatus:
          map[MyAdvertisementsConstants.itemPublishStatus] as String,
      itemSoldStatus: map[MyAdvertisementsConstants.itemSoldStatus] as String,
      itemCreatedAt: map[MyAdvertisementsConstants.itemCreatedAt] as String,
      itemUpdatedAt: map[MyAdvertisementsConstants.itemUpdatedAt] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory MyAdvertisementsModel.fromJson(String source) =>
      MyAdvertisementsModel.fromMap(
          json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'MyAdvertisementsModel(itemId: $itemId, itemCustomerId: $itemCustomerId, itemCategoryId: $itemCategoryId, itemSubCategoryId: $itemSubCategoryId, itemImages: $itemImages, itemTitle: $itemTitle, itemAddress: $itemAddress, itemTotalPrice: $itemTotalPrice, itemPriceType: $itemPriceType, itemPublishStatus: $itemPublishStatus, itemSoldStatus: $itemSoldStatus, itemCreatedAt: $itemCreatedAt, itemUpdatedAt: $itemUpdatedAt)';
  }

  @override
  bool operator ==(covariant MyAdvertisementsModel other) {
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
