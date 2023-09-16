import 'dart:convert';

import 'package:divar/repositories/items_respositories/sport_respository/constants/constants.dart';
import 'package:flutter/foundation.dart';

class SportModel {
  final int? itemId;
  final String? itemCustomerId;
  final int? itemCategoryId;
  final int? itemSubCategoryId;
  final List<String>? itemImages;
  final String? itemTitle;
  final int? itemProvince;
  final String? itemRegion;
  final double? itemTotalPrice;
  final int? itemPriceType;
  final int? itemSalePriceType;
  final int? itemDiscountAmount;
  final String? itemColor;
  final String? itemBrand;
  final String? itemSize;
  final String? itemDescription;
  final int? itemStatus;
  final String? itemPublishStatus;
  final String? itemSoldStatus;
  final String? itemCreatedAt;
  final String? itemUpdatedAt;

  SportModel({
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
    required this.itemColor,
    required this.itemBrand,
    required this.itemSize,
    required this.itemDescription,
    required this.itemStatus,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  SportModel.itemModel({
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
    this.itemColor = '',
    this.itemBrand = '',
    this.itemSize = '',
    this.itemDescription = '',
    this.itemStatus = -1,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  SportModel.clothModel({
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
    required this.itemColor,
    required this.itemBrand,
    required this.itemSize,
    required this.itemDescription,
    required this.itemStatus,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  SportModel.shoeModel({
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
    required this.itemColor,
    required this.itemBrand,
    required this.itemSize,
    required this.itemDescription,
    required this.itemStatus,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  SportModel.bagModel({
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
    this.itemColor = '',
    this.itemBrand = '',
    required this.itemSize,
    required this.itemDescription,
    required this.itemStatus,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  SportModel.appliancesModel({
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
    this.itemColor = '',
    this.itemBrand = '',
    this.itemSize = '',
    required this.itemDescription,
    required this.itemStatus,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  SportModel.otherSportModel({
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
    this.itemColor = '',
    this.itemBrand = '',
    this.itemSize = '',
    required this.itemDescription,
    required this.itemStatus,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  SportModel copyWith({
    int? itemId,
    String? itemCustomerId,
    int? itemCategoryId,
    int? itemSubCategoryId,
    List<String>? itemImages,
    String? itemTitle,
    int? itemProvince,
    String? itemRegion,
    double? itemTotalPrice,
    int? itemPriceType,
    int? itemSalePriceType,
    int? itemDiscountAmount,
    int? itemDiscountAmountType,
    String? itemColor,
    String? itemBrand,
    String? itemSize,
    String? itemDescription,
    int? itemStatus,
    String? itemPublishStatus,
    String? itemSoldStatus,
    String? itemCreatedAt,
    String? itemUpdatedAt,
  }) {
    return SportModel(
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
      itemColor: itemColor ?? this.itemColor,
      itemBrand: itemBrand ?? this.itemBrand,
      itemSize: itemSize ?? this.itemSize,
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
      SportConstants.itemId: itemId,
      SportConstants.itemCustomerId: itemCustomerId,
      SportConstants.itemCategoryId: itemCategoryId,
      SportConstants.itemSubCategoryId: itemSubCategoryId,
      SportConstants.itemImages: itemImages,
      SportConstants.itemTitle: itemTitle,
      SportConstants.itemProvince: itemProvince,
      SportConstants.itemRegion: itemRegion,
      SportConstants.itemTotalPrice: itemTotalPrice,
      SportConstants.itemPriceType: itemPriceType,
      SportConstants.itemSalePriceType: itemSalePriceType,
      SportConstants.itemDiscountAmount: itemDiscountAmount,
      SportConstants.itemColor: itemColor,
      SportConstants.itemBrand: itemBrand,
      SportConstants.itemSize: itemSize,
      SportConstants.itemDescription: itemDescription,
      SportConstants.itemStatus: itemStatus,
      SportConstants.itemPublishStatus: itemPublishStatus,
      SportConstants.itemSoldStatus: itemSoldStatus,
      SportConstants.itemCreatedAt: itemCreatedAt,
      SportConstants.itemUpdatedAt: itemUpdatedAt,
    };
  }

  Map<String, dynamic> toMapItemModel() {
    return <String, dynamic>{
      SportConstants.itemId: itemId,
      SportConstants.itemCustomerId: itemCustomerId,
      SportConstants.itemCategoryId: itemCategoryId,
      SportConstants.itemSubCategoryId: itemSubCategoryId,
      SportConstants.itemImages: itemImages,
      SportConstants.itemTitle: itemTitle,
      SportConstants.itemProvince: itemProvince,
      SportConstants.itemRegion: itemRegion,
      SportConstants.itemTotalPrice: itemTotalPrice,
      SportConstants.itemPriceType: itemPriceType,
      SportConstants.itemSalePriceType: itemSalePriceType,
      SportConstants.itemDiscountAmount: itemDiscountAmount,
      SportConstants.itemPublishStatus: itemPublishStatus,
      SportConstants.itemSoldStatus: itemSoldStatus,
      SportConstants.itemCreatedAt: itemCreatedAt,
      SportConstants.itemUpdatedAt: itemUpdatedAt,
    };
  }

  factory SportModel.fromMap(Map<Object?, Object?> map) {
    return SportModel(
      itemId: map[SportConstants.itemId] != null
          ? map[SportConstants.itemId] as int
          : null,
      itemCustomerId: map[SportConstants.itemCustomerId] != null
          ? map[SportConstants.itemCustomerId] as String
          : null,
      itemCategoryId: map[SportConstants.itemCategoryId] != null
          ? map[SportConstants.itemCategoryId] as int
          : null,
      itemSubCategoryId: map[SportConstants.itemSubCategoryId] != null
          ? map[SportConstants.itemSubCategoryId] as int
          : null,
      itemImages: map[SportConstants.itemImages] != null
          ? List<String>.from((map[SportConstants.itemImages] as List<String>))
          : null,
      itemTitle: map[SportConstants.itemTitle] != null
          ? map[SportConstants.itemTitle] as String
          : null,
      itemProvince: map[SportConstants.itemProvince] != null
          ? map[SportConstants.itemProvince] as int
          : null,
      itemRegion: map[SportConstants.itemRegion] != null
          ? map[SportConstants.itemRegion] as String
          : null,
      itemTotalPrice: map[SportConstants.itemTotalPrice] != null
          ? map[SportConstants.itemTotalPrice] as double
          : null,
      itemPriceType: map[SportConstants.itemPriceType] != null
          ? map[SportConstants.itemPriceType] as int
          : null,
      itemSalePriceType: map[SportConstants.itemSalePriceType] != null
          ? map[SportConstants.itemSalePriceType] as int
          : null,
      itemDiscountAmount: map[SportConstants.itemDiscountAmount] != null
          ? map[SportConstants.itemDiscountAmount] as int
          : null,
      itemColor: map[SportConstants.itemColor] != null
          ? map[SportConstants.itemColor] as String
          : null,
      itemBrand: map[SportConstants.itemBrand] != null
          ? map[SportConstants.itemBrand] as String
          : null,
      itemSize: map[SportConstants.itemSize] != null
          ? map[SportConstants.itemSize] as String
          : null,
      itemDescription: map[SportConstants.itemDescription] != null
          ? map[SportConstants.itemDescription] as String
          : null,
      itemStatus: map[SportConstants.itemStatus] != null
          ? map[SportConstants.itemStatus] as int
          : null,
      itemPublishStatus: map[SportConstants.itemPublishStatus] != null
          ? map[SportConstants.itemPublishStatus] as String
          : null,
      itemSoldStatus: map[SportConstants.itemSoldStatus] != null
          ? map[SportConstants.itemSoldStatus] as String
          : null,
      itemCreatedAt: map[SportConstants.itemCreatedAt] != null
          ? map[SportConstants.itemCreatedAt] as String
          : null,
      itemUpdatedAt: map[SportConstants.itemUpdatedAt] != null
          ? map[SportConstants.itemUpdatedAt] as String
          : null,
    );
  }

  factory SportModel.fromMapItemModel(Map<Object?, Object?> map) {
    return SportModel.itemModel(
      itemId: map[SportConstants.itemId] != null
          ? map[SportConstants.itemId] as int
          : null,
      itemCustomerId: map[SportConstants.itemCustomerId] != null
          ? map[SportConstants.itemCustomerId] as String
          : null,
      itemCategoryId: map[SportConstants.itemCategoryId] != null
          ? map[SportConstants.itemCategoryId] as int
          : null,
      itemSubCategoryId: map[SportConstants.itemSubCategoryId] != null
          ? map[SportConstants.itemSubCategoryId] as int
          : null,
      itemImages: map[SportConstants.itemImages] != null
          ? List<String>.from((map[SportConstants.itemImages] as List<String>))
          : null,
      itemTitle: map[SportConstants.itemTitle] != null
          ? map[SportConstants.itemTitle] as String
          : null,
      itemProvince: map[SportConstants.itemProvince] != null
          ? map[SportConstants.itemProvince] as int
          : null,
      itemRegion: map[SportConstants.itemRegion] != null
          ? map[SportConstants.itemRegion] as String
          : null,
      itemTotalPrice: map[SportConstants.itemTotalPrice] != null
          ? map[SportConstants.itemTotalPrice] as double
          : null,
      itemPriceType: map[SportConstants.itemPriceType] != null
          ? map[SportConstants.itemPriceType] as int
          : null,
      itemSalePriceType: map[SportConstants.itemSalePriceType] != null
          ? map[SportConstants.itemSalePriceType] as int
          : null,
      itemDiscountAmount: map[SportConstants.itemDiscountAmount] != null
          ? map[SportConstants.itemDiscountAmount] as int
          : null,
      itemPublishStatus: map[SportConstants.itemPublishStatus] != null
          ? map[SportConstants.itemPublishStatus] as String
          : null,
      itemSoldStatus: map[SportConstants.itemSoldStatus] != null
          ? map[SportConstants.itemSoldStatus] as String
          : null,
      itemCreatedAt: map[SportConstants.itemCreatedAt] != null
          ? map[SportConstants.itemCreatedAt] as String
          : null,
      itemUpdatedAt: map[SportConstants.itemUpdatedAt] != null
          ? map[SportConstants.itemUpdatedAt] as String
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory SportModel.fromJson(String source) =>
      SportModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'SportModel(itemId: $itemId, itemCustomerId: $itemCustomerId, itemCategoryId: $itemCategoryId, itemSubCategoryId: $itemSubCategoryId, itemImages: $itemImages, itemTitle: $itemTitle, itemProvince: $itemProvince, itemRegion: $itemRegion, itemTotalPrice: $itemTotalPrice, itemPriceType: $itemPriceType, itemSalePriceType: $itemSalePriceType, itemDiscountAmount: $itemDiscountAmount, itemColor: $itemColor, itemBrand: $itemBrand, itemSize: $itemSize, itemDescription: $itemDescription, itemStatus: $itemStatus, itemPublishStatus: $itemPublishStatus, itemSoldStatus: $itemSoldStatus, itemCreatedAt: $itemCreatedAt, itemUpdatedAt: $itemUpdatedAt)';
  }

  @override
  bool operator ==(covariant SportModel other) {
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
        other.itemColor == itemColor &&
        other.itemBrand == itemBrand &&
        other.itemSize == itemSize &&
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
        itemColor.hashCode ^
        itemBrand.hashCode ^
        itemSize.hashCode ^
        itemDescription.hashCode ^
        itemStatus.hashCode ^
        itemPublishStatus.hashCode ^
        itemSoldStatus.hashCode ^
        itemCreatedAt.hashCode ^
        itemUpdatedAt.hashCode;
  }
}
