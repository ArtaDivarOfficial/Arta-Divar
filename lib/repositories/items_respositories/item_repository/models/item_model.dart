// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

class ItemModel {
  final int itemId;
  final String itemCustomerId;
  final int itemCategoryId;
  final int itemSubCategoryId;
  final String itemPublishStatus;
  final List<String> itemImages;
  final String itemSoldStatus;
  final String itemTitle;
  final String itemAddress;
  final String itemTotalPrice;
  final String itemPriceType;
  final String itemPerMeterPrice;
  final String itemCreatedAt;
  final String itemUpdatedAt;

  ItemModel({
    required this.itemId,
    required this.itemCustomerId,
    required this.itemCategoryId,
    required this.itemSubCategoryId,
    required this.itemPublishStatus,
    required this.itemImages,
    required this.itemSoldStatus,
    required this.itemTitle,
    required this.itemAddress,
    required this.itemTotalPrice,
    required this.itemPriceType,
    required this.itemPerMeterPrice,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  ItemModel copyWith({
    int? itemId,
    String? itemCustomerId,
    int? itemCategoryId,
    int? itemSubCategoryId,
    String? itemPublishStatus,
    List<String>? itemImages,
    String? itemSoldStatus,
    String? itemTitle,
    String? itemAddress,
    String? itemTotalPrice,
    String? itemPriceType,
    String? itemPerMeterPrice,
    String? itemCreatedAt,
    String? itemUpdatedAt,
  }) {
    return ItemModel(
      itemId: itemId ?? this.itemId,
      itemCustomerId: itemCustomerId ?? this.itemCustomerId,
      itemCategoryId: itemCategoryId ?? this.itemCategoryId,
      itemSubCategoryId: itemSubCategoryId ?? this.itemSubCategoryId,
      itemPublishStatus: itemPublishStatus ?? this.itemPublishStatus,
      itemImages: itemImages ?? this.itemImages,
      itemSoldStatus: itemSoldStatus ?? this.itemSoldStatus,
      itemTitle: itemTitle ?? this.itemTitle,
      itemAddress: itemAddress ?? this.itemAddress,
      itemTotalPrice: itemTotalPrice ?? this.itemTotalPrice,
      itemPriceType: itemPriceType ?? this.itemPriceType,
      itemPerMeterPrice: itemPerMeterPrice ?? this.itemPerMeterPrice,
      itemCreatedAt: itemCreatedAt ?? this.itemCreatedAt,
      itemUpdatedAt: itemUpdatedAt ?? this.itemUpdatedAt,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'itemId': itemId,
      'itemCustomerId': itemCustomerId,
      'itemCategoryId': itemCategoryId,
      'itemSubCategoryId': itemSubCategoryId,
      'itemPublishStatus': itemPublishStatus,
      'itemImages': itemImages,
      'itemSoldStatus': itemSoldStatus,
      'itemTitle': itemTitle,
      'itemAddress': itemAddress,
      'itemTotalPrice': itemTotalPrice,
      'itemPriceType': itemPriceType,
      'itemPerMeterPrice': itemPerMeterPrice,
      'itemCreatedAt': itemCreatedAt,
      'itemUpdatedAt': itemUpdatedAt,
    };
  }

  factory ItemModel.fromMap(Map<String, dynamic> map) {
    return ItemModel(
      itemId: map['itemId'] as int,
      itemCustomerId: map['itemCustomerId'] as String,
      itemCategoryId: map['itemCategoryId'] as int,
      itemSubCategoryId: map['itemSubCategoryId'] as int,
      itemPublishStatus: map['itemPublishStatus'] as String,
      itemImages: List<String>.from((map['itemImages'] as List<String>)),
      itemSoldStatus: map['itemSoldStatus'] as String,
      itemTitle: map['itemTitle'] as String,
      itemAddress: map['itemAddress'] as String,
      itemTotalPrice: map['itemTotalPrice'] as String,
      itemPriceType: map['itemPriceType'] as String,
      itemPerMeterPrice: map['itemPerMeterPrice'] as String,
      itemCreatedAt: map['itemCreatedAt'] as String,
      itemUpdatedAt: map['itemUpdatedAt'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ItemModel.fromJson(String source) =>
      ItemModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ItemModel(itemId: $itemId, itemCustomerId: $itemCustomerId, itemCategoryId: $itemCategoryId, itemSubCategoryId: $itemSubCategoryId, itemPublishStatus: $itemPublishStatus, itemImages: $itemImages, itemSoldStatus: $itemSoldStatus, itemTitle: $itemTitle, itemAddress: $itemAddress, itemTotalPrice: $itemTotalPrice, itemPriceType: $itemPriceType, itemPerMeterPrice: $itemPerMeterPrice, itemCreatedAt: $itemCreatedAt, itemUpdatedAt: $itemUpdatedAt)';
  }

  @override
  bool operator ==(covariant ItemModel other) {
    if (identical(this, other)) return true;

    return other.itemId == itemId &&
        other.itemCustomerId == itemCustomerId &&
        other.itemCategoryId == itemCategoryId &&
        other.itemSubCategoryId == itemSubCategoryId &&
        other.itemPublishStatus == itemPublishStatus &&
        listEquals(other.itemImages, itemImages) &&
        other.itemSoldStatus == itemSoldStatus &&
        other.itemTitle == itemTitle &&
        other.itemAddress == itemAddress &&
        other.itemTotalPrice == itemTotalPrice &&
        other.itemPriceType == itemPriceType &&
        other.itemPerMeterPrice == itemPerMeterPrice &&
        other.itemCreatedAt == itemCreatedAt &&
        other.itemUpdatedAt == itemUpdatedAt;
  }

  @override
  int get hashCode {
    return itemId.hashCode ^
        itemCustomerId.hashCode ^
        itemCategoryId.hashCode ^
        itemSubCategoryId.hashCode ^
        itemPublishStatus.hashCode ^
        itemImages.hashCode ^
        itemSoldStatus.hashCode ^
        itemTitle.hashCode ^
        itemAddress.hashCode ^
        itemTotalPrice.hashCode ^
        itemPriceType.hashCode ^
        itemPerMeterPrice.hashCode ^
        itemCreatedAt.hashCode ^
        itemUpdatedAt.hashCode;
  }
}
