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
  final int? itemProvince;
  final String? itemRegion;
  final String? itemTotalPrice;
  final int? itemPriceType;
  final int? itemSalePriceType;
  final int? itemDiscountAmount;
  final int? itemDiscountAmountType;
  final String? itemDescription;
  final int? itemStatus;
  final String? itemPublishStatus;
  final String? itemSoldStatus;
  final String? itemCreatedAt;
  final String? itemUpdatedAt;

  BusinessModel({
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
    required this.itemSalePriceType,
    required this.itemDiscountAmount,
    required this.itemDiscountAmountType,
    required this.itemDescription,
    required this.itemStatus,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  BusinessModel.itemModel({
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
    this.itemSalePriceType = -1,
    this.itemDiscountAmount = -1,
    this.itemDiscountAmountType = -1,
    this.itemDescription = '',
    this.itemStatus = -1,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  BusinessModel.mdfModel({
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
    required this.itemSalePriceType,
    required this.itemDiscountAmount,
    required this.itemDiscountAmountType,
    required this.itemDescription,
    required this.itemStatus,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  BusinessModel.upvcModel({
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
    required this.itemSalePriceType,
    required this.itemDiscountAmount,
    required this.itemDiscountAmountType,
    required this.itemDescription,
    required this.itemStatus,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  BusinessModel.carpentaryModel({
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
    required this.itemSalePriceType,
    required this.itemDiscountAmount,
    required this.itemDiscountAmountType,
    required this.itemDescription,
    required this.itemStatus,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  BusinessModel.metalWorkModel({
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
    required this.itemSalePriceType,
    required this.itemDiscountAmount,
    required this.itemDiscountAmountType,
    required this.itemDescription,
    required this.itemStatus,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  BusinessModel.otherBusinessModel({
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
    required this.itemSalePriceType,
    required this.itemDiscountAmount,
    required this.itemDiscountAmountType,
    required this.itemDescription,
    required this.itemStatus,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  BusinessModel copyWith({
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
    int? itemSalePriceType,
    int? itemDiscountAmount,
    int? itemDiscountAmountType,
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
      itemProvince: itemProvince ?? this.itemProvince,
      itemRegion: itemRegion ?? this.itemRegion,
      itemTotalPrice: itemTotalPrice ?? this.itemTotalPrice,
      itemPriceType: itemPriceType ?? this.itemPriceType,
      itemSalePriceType: itemSalePriceType ?? this.itemSalePriceType,
      itemDiscountAmount: itemDiscountAmount ?? this.itemDiscountAmount,
      itemDiscountAmountType:
          itemDiscountAmountType ?? this.itemDiscountAmountType,
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
      BusinessConstants.itemProvince: itemProvince,
      BusinessConstants.itemRegion: itemRegion,
      BusinessConstants.itemTotalPrice: itemTotalPrice,
      BusinessConstants.itemPriceType: itemPriceType,
      BusinessConstants.itemSalePriceType: itemSalePriceType,
      BusinessConstants.itemDiscountAmount: itemDiscountAmount,
      BusinessConstants.itemDiscountAmountType: itemDiscountAmountType,
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
      BusinessConstants.itemProvince: itemProvince,
      BusinessConstants.itemRegion: itemRegion,
      BusinessConstants.itemTotalPrice: itemTotalPrice,
      BusinessConstants.itemPriceType: itemPriceType,
      BusinessConstants.itemSalePriceType: itemSalePriceType,
      BusinessConstants.itemDiscountAmount: itemDiscountAmount,
      BusinessConstants.itemDiscountAmountType: itemDiscountAmountType,
      BusinessConstants.itemPublishStatus: itemPublishStatus,
      BusinessConstants.itemSoldStatus: itemSoldStatus,
      BusinessConstants.itemCreatedAt: itemCreatedAt,
      BusinessConstants.itemUpdatedAt: itemUpdatedAt,
    };
  }

  factory BusinessModel.fromMap(Map<Object?, Object?> map) {
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
      itemProvince: map[BusinessConstants.itemProvince] != null
          ? map[BusinessConstants.itemProvince] as int
          : null,
      itemRegion: map[BusinessConstants.itemRegion] != null
          ? map[BusinessConstants.itemRegion] as String
          : null,
      itemTotalPrice: map[BusinessConstants.itemTotalPrice] != null
          ? map[BusinessConstants.itemTotalPrice] as String
          : null,
      itemPriceType: map[BusinessConstants.itemPriceType] != null
          ? map[BusinessConstants.itemPriceType] as int
          : null,
      itemSalePriceType: map[BusinessConstants.itemSalePriceType] != null
          ? map[BusinessConstants.itemSalePriceType] as int
          : null,
      itemDiscountAmount: map[BusinessConstants.itemDiscountAmount] != null
          ? map[BusinessConstants.itemDiscountAmount] as int
          : null,
      itemDiscountAmountType:
          map[BusinessConstants.itemDiscountAmountType] != null
              ? map[BusinessConstants.itemDiscountAmountType] as int
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

  factory BusinessModel.fromMapItemModel(Map<Object?, Object?> map) {
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
      itemProvince: map[BusinessConstants.itemProvince] != null
          ? map[BusinessConstants.itemProvince] as int
          : null,
      itemRegion: map[BusinessConstants.itemRegion] != null
          ? map[BusinessConstants.itemRegion] as String
          : null,
      itemTotalPrice: map[BusinessConstants.itemTotalPrice] != null
          ? map[BusinessConstants.itemTotalPrice] as String
          : null,
      itemPriceType: map[BusinessConstants.itemPriceType] != null
          ? map[BusinessConstants.itemPriceType] as int
          : null,
      itemSalePriceType: map[BusinessConstants.itemSalePriceType] != null
          ? map[BusinessConstants.itemSalePriceType] as int
          : null,
      itemDiscountAmount: map[BusinessConstants.itemDiscountAmount] != null
          ? map[BusinessConstants.itemDiscountAmount] as int
          : null,
      itemDiscountAmountType:
          map[BusinessConstants.itemDiscountAmountType] != null
              ? map[BusinessConstants.itemDiscountAmountType] as int
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
    return 'BusinessModel(itemId: $itemId, itemCustomerId: $itemCustomerId, itemCategoryId: $itemCategoryId, itemSubCategoryId: $itemSubCategoryId, itemImages: $itemImages, itemTitle: $itemTitle, itemProvince: $itemProvince, itemRegion: $itemRegion, itemTotalPrice: $itemTotalPrice, itemPriceType: $itemPriceType, itemSalePriceType: $itemSalePriceType, itemDiscountAmount: $itemDiscountAmount, itemDiscountAmountType: $itemDiscountAmountType, itemDescription: $itemDescription, itemStatus: $itemStatus, itemPublishStatus: $itemPublishStatus, itemSoldStatus: $itemSoldStatus, itemCreatedAt: $itemCreatedAt, itemUpdatedAt: $itemUpdatedAt)';
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
        other.itemProvince == itemProvince &&
        other.itemRegion == itemRegion &&
        other.itemTotalPrice == itemTotalPrice &&
        other.itemPriceType == itemPriceType &&
        other.itemSalePriceType == itemSalePriceType &&
        other.itemDiscountAmount == itemDiscountAmount &&
        other.itemDiscountAmountType == itemDiscountAmountType &&
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
        itemSalePriceType.hashCode ^
        itemDiscountAmount.hashCode ^
        itemDiscountAmountType.hashCode ^
        itemDescription.hashCode ^
        itemStatus.hashCode ^
        itemPublishStatus.hashCode ^
        itemSoldStatus.hashCode ^
        itemCreatedAt.hashCode ^
        itemUpdatedAt.hashCode;
  }
}
