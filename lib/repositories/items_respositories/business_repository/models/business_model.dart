import 'dart:convert';

import 'package:divar/repositories/items_respositories/business_repository/constants/constants.dart';
import 'package:flutter/foundation.dart';

class BusinessModel {
  final int? itemId;
  final String? itemCustomerId;
  final int? itemCategoryId;
  final int? itemSubCategoryId;
  final List<String>? itemImages;
  final String? itemTitle;
  final String? itemAddress;
  final String? itemTotalPrice;
  final int? itemPriceType;
  final String? itemDescription;
  final int? itemStatus;
  final String? itemPublishStatus;
  final String? itemSoldStatus;
  final String? itemCreatedAt;
  final String? itemUpdatedAt;

  BusinessModel({
    this.itemId,
    this.itemCustomerId,
    this.itemCategoryId,
    this.itemSubCategoryId,
    this.itemImages,
    this.itemTitle,
    this.itemAddress,
    this.itemTotalPrice,
    this.itemPriceType,
    this.itemDescription,
    this.itemStatus,
    this.itemPublishStatus,
    this.itemSoldStatus,
    this.itemCreatedAt,
    this.itemUpdatedAt,
  });

  BusinessModel.itemModel({
    this.itemId,
    this.itemCustomerId,
    this.itemCategoryId,
    this.itemSubCategoryId,
    this.itemImages,
    this.itemTitle,
    this.itemAddress,
    this.itemTotalPrice,
    this.itemPriceType,
    this.itemDescription = '',
    this.itemStatus = -1,
    this.itemPublishStatus,
    this.itemSoldStatus,
    this.itemCreatedAt,
    this.itemUpdatedAt,
  });

  BusinessModel.mdfModel({
    this.itemId,
    this.itemCustomerId,
    this.itemCategoryId,
    this.itemSubCategoryId,
    this.itemImages,
    this.itemTitle,
    this.itemAddress,
    this.itemTotalPrice,
    this.itemPriceType,
    this.itemDescription,
    this.itemStatus,
    this.itemPublishStatus,
    this.itemSoldStatus,
    this.itemCreatedAt,
    this.itemUpdatedAt,
  });

  BusinessModel.upvcModel({
    this.itemId,
    this.itemCustomerId,
    this.itemCategoryId,
    this.itemSubCategoryId,
    this.itemImages,
    this.itemTitle,
    this.itemAddress,
    this.itemTotalPrice,
    this.itemPriceType,
    this.itemDescription,
    this.itemStatus,
    this.itemPublishStatus,
    this.itemSoldStatus,
    this.itemCreatedAt,
    this.itemUpdatedAt,
  });

  BusinessModel.carpentaryModel({
    this.itemId,
    this.itemCustomerId,
    this.itemCategoryId,
    this.itemSubCategoryId,
    this.itemImages,
    this.itemTitle,
    this.itemAddress,
    this.itemTotalPrice,
    this.itemPriceType,
    this.itemDescription,
    this.itemStatus,
    this.itemPublishStatus,
    this.itemSoldStatus,
    this.itemCreatedAt,
    this.itemUpdatedAt,
  });

  BusinessModel.metalWorkModel({
    this.itemId,
    this.itemCustomerId,
    this.itemCategoryId,
    this.itemSubCategoryId,
    this.itemImages,
    this.itemTitle,
    this.itemAddress,
    this.itemTotalPrice,
    this.itemPriceType,
    this.itemDescription,
    this.itemStatus,
    this.itemPublishStatus,
    this.itemSoldStatus,
    this.itemCreatedAt,
    this.itemUpdatedAt,
  });

  BusinessModel.otherBusinessModel({
    this.itemId,
    this.itemCustomerId,
    this.itemCategoryId,
    this.itemSubCategoryId,
    this.itemImages,
    this.itemTitle,
    this.itemAddress,
    this.itemTotalPrice,
    this.itemPriceType,
    this.itemDescription,
    this.itemStatus,
    this.itemPublishStatus,
    this.itemSoldStatus,
    this.itemCreatedAt,
    this.itemUpdatedAt,
  });

  BusinessModel copyWith({
    int? itemId,
    String? itemCustomerId,
    int? itemCategoryId,
    int? itemSubCategoryId,
    List<String>? itemImages,
    String? itemTitle,
    String? itemAddress,
    String? itemTotalPrice,
    int? itemPriceType,
    String? itemDescription,
    int? itemStatus,
    String? itemPublishStatus,
    String? itemSoldStatus,
    String? itemCreatedAt,
    String? itemUpdatedAt,
  }) {
    return BusinessModel(
      itemId: itemId ?? this.itemId,
      itemCustomerId: itemCustomerId ?? this.itemCustomerId,
      itemCategoryId: itemCategoryId ?? this.itemCategoryId,
      itemSubCategoryId: itemSubCategoryId ?? this.itemSubCategoryId,
      itemImages: itemImages ?? this.itemImages,
      itemTitle: itemTitle ?? this.itemTitle,
      itemAddress: itemAddress ?? this.itemAddress,
      itemTotalPrice: itemTotalPrice ?? this.itemTotalPrice,
      itemPriceType: itemPriceType ?? this.itemPriceType,
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
      BusinessConstants.itemId: itemId,
      BusinessConstants.itemCustomerId: itemCustomerId,
      BusinessConstants.itemCategoryId: itemCategoryId,
      BusinessConstants.itemSubCategoryId: itemSubCategoryId,
      BusinessConstants.itemImages: itemImages,
      BusinessConstants.itemTitle: itemTitle,
      BusinessConstants.itemAddress: itemAddress,
      BusinessConstants.itemTotalPrice: itemTotalPrice,
      BusinessConstants.itemPriceType: itemPriceType,
      BusinessConstants.itemDescription: itemDescription,
      BusinessConstants.itemStatus: itemStatus,
      BusinessConstants.itemPublishStatus: itemPublishStatus,
      BusinessConstants.itemSoldStatus: itemSoldStatus,
      BusinessConstants.itemCreatedAt: itemCreatedAt,
      BusinessConstants.itemUpdatedAt: itemUpdatedAt,
    };
  }

  Map<String, dynamic> toMapItemModel() {
    return <String, dynamic>{
      BusinessConstants.itemId: itemId,
      BusinessConstants.itemCustomerId: itemCustomerId,
      BusinessConstants.itemCategoryId: itemCategoryId,
      BusinessConstants.itemSubCategoryId: itemSubCategoryId,
      BusinessConstants.itemImages: itemImages,
      BusinessConstants.itemTitle: itemTitle,
      BusinessConstants.itemAddress: itemAddress,
      BusinessConstants.itemTotalPrice: itemTotalPrice,
      BusinessConstants.itemPriceType: itemPriceType,
      BusinessConstants.itemPublishStatus: itemPublishStatus,
      BusinessConstants.itemSoldStatus: itemSoldStatus,
      BusinessConstants.itemCreatedAt: itemCreatedAt,
      BusinessConstants.itemUpdatedAt: itemUpdatedAt,
    };
  }

  factory BusinessModel.fromMap(Map<String, dynamic> map) {
    return BusinessModel(
      itemId: map[BusinessConstants.itemId] != null
          ? map[BusinessConstants.itemId] as int
          : null,
      itemCustomerId: map[BusinessConstants.itemCustomerId] != null
          ? map[BusinessConstants.itemCustomerId] as String
          : null,
      itemCategoryId: map[BusinessConstants.itemCategoryId] != null
          ? map[BusinessConstants.itemCategoryId] as int
          : null,
      itemSubCategoryId: map[BusinessConstants.itemSubCategoryId] != null
          ? map[BusinessConstants.itemSubCategoryId] as int
          : null,
      itemImages: map[BusinessConstants.itemImages] != null
          ? List<String>.from(
              (map[BusinessConstants.itemImages] as List<String>))
          : null,
      itemTitle: map[BusinessConstants.itemTitle] != null
          ? map[BusinessConstants.itemTitle] as String
          : null,
      itemAddress: map[BusinessConstants.itemAddress] != null
          ? map[BusinessConstants.itemAddress] as String
          : null,
      itemTotalPrice: map[BusinessConstants.itemTotalPrice] != null
          ? map[BusinessConstants.itemTotalPrice] as String
          : null,
      itemPriceType: map[BusinessConstants.itemPriceType] != null
          ? map[BusinessConstants.itemPriceType] as int
          : null,
      itemDescription: map[BusinessConstants.itemDescription] != null
          ? map[BusinessConstants.itemDescription] as String
          : null,
      itemStatus: map[BusinessConstants.itemStatus] != null
          ? map[BusinessConstants.itemStatus] as int
          : null,
      itemPublishStatus: map[BusinessConstants.itemPublishStatus] != null
          ? map[BusinessConstants.itemPublishStatus] as String
          : null,
      itemSoldStatus: map[BusinessConstants.itemSoldStatus] != null
          ? map[BusinessConstants.itemSoldStatus] as String
          : null,
      itemCreatedAt: map[BusinessConstants.itemCreatedAt] != null
          ? map[BusinessConstants.itemCreatedAt] as String
          : null,
      itemUpdatedAt: map[BusinessConstants.itemUpdatedAt] != null
          ? map[BusinessConstants.itemUpdatedAt] as String
          : null,
    );
  }

  factory BusinessModel.fromMapItemModel(Map<String, dynamic> map) {
    return BusinessModel.itemModel(
      itemId: map[BusinessConstants.itemId] != null
          ? map[BusinessConstants.itemId] as int
          : null,
      itemCustomerId: map[BusinessConstants.itemCustomerId] != null
          ? map[BusinessConstants.itemCustomerId] as String
          : null,
      itemCategoryId: map[BusinessConstants.itemCategoryId] != null
          ? map[BusinessConstants.itemCategoryId] as int
          : null,
      itemSubCategoryId: map[BusinessConstants.itemSubCategoryId] != null
          ? map[BusinessConstants.itemCategoryId] as int
          : null,
      itemImages: map[BusinessConstants.itemImages] != null
          ? List<String>.from(
              (map[BusinessConstants.itemImages] as List<String>))
          : null,
      itemTitle: map[BusinessConstants.itemTitle] != null
          ? map[BusinessConstants.itemTitle] as String
          : null,
      itemAddress: map[BusinessConstants.itemAddress] != null
          ? map[BusinessConstants.itemAddress] as String
          : null,
      itemTotalPrice: map[BusinessConstants.itemTotalPrice] != null
          ? map[BusinessConstants.itemTotalPrice] as String
          : null,
      itemPriceType: map[BusinessConstants.itemPriceType] != null
          ? map[BusinessConstants.itemPriceType] as int
          : null,
      itemDescription: map[BusinessConstants.itemDescription] != null
          ? map[BusinessConstants.itemDescription] as String
          : null,
      itemPublishStatus: map[BusinessConstants.itemPublishStatus] != null
          ? map[BusinessConstants.itemPublishStatus] as String
          : null,
      itemSoldStatus: map[BusinessConstants.itemSoldStatus] != null
          ? map[BusinessConstants.itemSoldStatus] as String
          : null,
      itemCreatedAt: map[BusinessConstants.itemCreatedAt] != null
          ? map[BusinessConstants.itemCreatedAt] as String
          : null,
      itemUpdatedAt: map[BusinessConstants.itemUpdatedAt] != null
          ? map[BusinessConstants.itemUpdatedAt] as String
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory BusinessModel.fromJson(String source) =>
      BusinessModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'BusinessModel(itemId: $itemId, itemCustomerId: $itemCustomerId, itemCategoryId: $itemCategoryId, itemSubCategoryId: $itemSubCategoryId, itemImages: $itemImages, itemTitle: $itemTitle, itemAddress: $itemAddress, itemTotalPrice: $itemTotalPrice, itemPriceType: $itemPriceType, itemDescription: $itemDescription, itemStatus: $itemStatus, itemPublishStatus: $itemPublishStatus, itemSoldStatus: $itemSoldStatus, itemCreatedAt: $itemCreatedAt, itemUpdatedAt: $itemUpdatedAt)';
  }

  @override
  bool operator ==(covariant BusinessModel other) {
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
        itemDescription.hashCode ^
        itemStatus.hashCode ^
        itemPublishStatus.hashCode ^
        itemSoldStatus.hashCode ^
        itemCreatedAt.hashCode ^
        itemUpdatedAt.hashCode;
  }
}
