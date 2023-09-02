// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

class BackpackModel {
  final int itemId;
  final String itemCustomerId;
  final int itemCategoryId;
  final String itemPublishStatus;
  final int itemSubCategoryId;
  final List<String> itemImages;
  final String itemSoldStatus;
  final String itemTitle;
  final String itemAddress;
  final String itemStatus;
  final String itemType;
  final String itemMaterial;
  final String itemColor;
  final String itemTotalPrice;
  final String itemDescription;
  final String itemPriceType;
  final String itemCreatedAt;
  final String itemUpdatedAt;

  BackpackModel({
    required this.itemId,
    required this.itemCustomerId,
    required this.itemCategoryId,
    required this.itemPublishStatus,
    required this.itemSubCategoryId,
    required this.itemImages,
    required this.itemSoldStatus,
    required this.itemTitle,
    required this.itemAddress,
    required this.itemStatus,
    required this.itemType,
    required this.itemMaterial,
    required this.itemColor,
    required this.itemTotalPrice,
    required this.itemDescription,
    required this.itemPriceType,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  BackpackModel copyWith({
    int? itemId,
    String? itemCustomerId,
    int? itemCategoryId,
    String? itemPublishStatus,
    int? itemSubCategoryId,
    List<String>? itemImages,
    String? itemSoldStatus,
    String? itemTitle,
    String? itemAddress,
    String? itemStatus,
    String? itemType,
    String? itemMaterial,
    String? itemColor,
    String? itemTotalPrice,
    String? itemDescription,
    String? itemPriceType,
    String? itemCreatedAt,
    String? itemUpdatedAt,
  }) {
    return BackpackModel(
      itemId: itemId ?? this.itemId,
      itemCustomerId: itemCustomerId ?? this.itemCustomerId,
      itemCategoryId: itemCategoryId ?? this.itemCategoryId,
      itemPublishStatus: itemPublishStatus ?? this.itemPublishStatus,
      itemSubCategoryId: itemSubCategoryId ?? this.itemSubCategoryId,
      itemImages: itemImages ?? this.itemImages,
      itemSoldStatus: itemSoldStatus ?? this.itemSoldStatus,
      itemTitle: itemTitle ?? this.itemTitle,
      itemAddress: itemAddress ?? this.itemAddress,
      itemStatus: itemStatus ?? this.itemStatus,
      itemType: itemType ?? this.itemType,
      itemMaterial: itemMaterial ?? this.itemMaterial,
      itemColor: itemColor ?? this.itemColor,
      itemTotalPrice: itemTotalPrice ?? this.itemTotalPrice,
      itemDescription: itemDescription ?? this.itemDescription,
      itemPriceType: itemPriceType ?? this.itemPriceType,
      itemCreatedAt: itemCreatedAt ?? this.itemCreatedAt,
      itemUpdatedAt: itemUpdatedAt ?? this.itemUpdatedAt,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'itemId': itemId,
      'itemCustomerId': itemCustomerId,
      'itemCategoryId': itemCategoryId,
      'itemPublishStatus': itemPublishStatus,
      'itemSubCategoryId': itemSubCategoryId,
      'itemImages': itemImages,
      'itemSoldStatus': itemSoldStatus,
      'itemTitle': itemTitle,
      'itemAddress': itemAddress,
      'itemStatus': itemStatus,
      'itemType': itemType,
      'itemMaterial': itemMaterial,
      'itemColor': itemColor,
      'itemTotalPrice': itemTotalPrice,
      'itemDescription': itemDescription,
      'itemPriceType': itemPriceType,
      'itemCreatedAt': itemCreatedAt,
      'itemUpdatedAt': itemUpdatedAt,
    };
  }

  factory BackpackModel.fromMap(Map<String, dynamic> map) {
    return BackpackModel(
      itemId: map['itemId'] as int,
      itemCustomerId: map['itemCustomerId'] as String,
      itemCategoryId: map['itemCategoryId'] as int,
      itemPublishStatus: map['itemPublishStatus'] as String,
      itemSubCategoryId: map['itemSubCategoryId'] as int,
      itemImages: List<String>.from((map['itemImages'] as List<String>)),
      itemSoldStatus: map['itemSoldStatus'] as String,
      itemTitle: map['itemTitle'] as String,
      itemAddress: map['itemAddress'] as String,
      itemStatus: map['itemStatus'] as String,
      itemType: map['itemType'] as String,
      itemMaterial: map['itemMaterial'] as String,
      itemColor: map['itemColor'] as String,
      itemTotalPrice: map['itemTotalPrice'] as String,
      itemDescription: map['itemDescription'] as String,
      itemPriceType: map['itemPriceType'] as String,
      itemCreatedAt: map['itemCreatedAt'] as String,
      itemUpdatedAt: map['itemUpdatedAt'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory BackpackModel.fromJson(String source) =>
      BackpackModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'BackpackModel(itemId: $itemId, itemCustomerId: $itemCustomerId, itemCategoryId: $itemCategoryId, itemPublishStatus: $itemPublishStatus, itemSubCategoryId: $itemSubCategoryId, itemImages: $itemImages, itemSoldStatus: $itemSoldStatus, itemTitle: $itemTitle, itemAddress: $itemAddress, itemStatus: $itemStatus, itemType: $itemType, itemMaterial: $itemMaterial, itemColor: $itemColor, itemTotalPrice: $itemTotalPrice, itemDescription: $itemDescription, itemPriceType: $itemPriceType, itemCreatedAt: $itemCreatedAt, itemUpdatedAt: $itemUpdatedAt)';
  }

  @override
  bool operator ==(covariant BackpackModel other) {
    if (identical(this, other)) return true;

    return other.itemId == itemId &&
        other.itemCustomerId == itemCustomerId &&
        other.itemCategoryId == itemCategoryId &&
        other.itemPublishStatus == itemPublishStatus &&
        other.itemSubCategoryId == itemSubCategoryId &&
        listEquals(other.itemImages, itemImages) &&
        other.itemSoldStatus == itemSoldStatus &&
        other.itemTitle == itemTitle &&
        other.itemAddress == itemAddress &&
        other.itemStatus == itemStatus &&
        other.itemType == itemType &&
        other.itemMaterial == itemMaterial &&
        other.itemColor == itemColor &&
        other.itemTotalPrice == itemTotalPrice &&
        other.itemDescription == itemDescription &&
        other.itemPriceType == itemPriceType &&
        other.itemCreatedAt == itemCreatedAt &&
        other.itemUpdatedAt == itemUpdatedAt;
  }

  @override
  int get hashCode {
    return itemId.hashCode ^
        itemCustomerId.hashCode ^
        itemCategoryId.hashCode ^
        itemPublishStatus.hashCode ^
        itemSubCategoryId.hashCode ^
        itemImages.hashCode ^
        itemSoldStatus.hashCode ^
        itemTitle.hashCode ^
        itemAddress.hashCode ^
        itemStatus.hashCode ^
        itemType.hashCode ^
        itemMaterial.hashCode ^
        itemColor.hashCode ^
        itemTotalPrice.hashCode ^
        itemDescription.hashCode ^
        itemPriceType.hashCode ^
        itemCreatedAt.hashCode ^
        itemUpdatedAt.hashCode;
  }
}
