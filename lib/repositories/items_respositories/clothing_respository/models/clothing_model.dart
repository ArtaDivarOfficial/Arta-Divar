import 'dart:convert';

import 'package:divar/repositories/items_respositories/clothing_respository/constants/constants.dart';
import 'package:flutter/foundation.dart';

class ClothingModel {
  final int? itemId;
  final String? itemCustomerId;
  final int? itemCategoryId;
  final int? itemSubCategoryId;
  final List<String>? itemImages;
  final String? itemTitle;
  final String? itemAddress;
  final String? itemTotalPrice;
  final int? itemPriceType;
  final int? itemType;
  final String? itemColor;
  final String? itemSize;
  final String? itemBrand;
  final String? itemDescription;
  final int? itemStatus;
  final String? itemPublishStatus;
  final String? itemSoldStatus;
  final String? itemCreatedAt;
  final String? itemUpdatedAt;

  ClothingModel({
    this.itemId,
    this.itemCustomerId,
    this.itemCategoryId,
    this.itemSubCategoryId,
    this.itemImages,
    this.itemTitle,
    this.itemAddress,
    this.itemTotalPrice,
    this.itemPriceType,
    this.itemType,
    this.itemColor,
    this.itemSize,
    this.itemBrand,
    this.itemDescription,
    this.itemStatus,
    this.itemPublishStatus,
    this.itemSoldStatus,
    this.itemCreatedAt,
    this.itemUpdatedAt,
  });

  ClothingModel.itemModel({
    this.itemId,
    this.itemCustomerId,
    this.itemCategoryId,
    this.itemSubCategoryId,
    this.itemImages,
    this.itemTitle,
    this.itemAddress,
    this.itemTotalPrice,
    this.itemPriceType,
    this.itemType = -1,
    this.itemColor = '',
    this.itemSize = '',
    this.itemBrand = '',
    this.itemDescription = '',
    this.itemStatus = -1,
    this.itemPublishStatus,
    this.itemSoldStatus,
    this.itemCreatedAt,
    this.itemUpdatedAt,
  });

  ClothingModel.clothModel({
    this.itemId,
    this.itemCustomerId,
    this.itemCategoryId,
    this.itemSubCategoryId,
    this.itemImages,
    this.itemTitle,
    this.itemAddress,
    this.itemTotalPrice,
    this.itemPriceType,
    this.itemType,
    this.itemColor,
    this.itemSize,
    this.itemBrand,
    this.itemDescription,
    this.itemStatus,
    this.itemPublishStatus,
    this.itemSoldStatus,
    this.itemCreatedAt,
    this.itemUpdatedAt,
  });

  ClothingModel.coatModel({
    this.itemId,
    this.itemCustomerId,
    this.itemCategoryId,
    this.itemSubCategoryId,
    this.itemImages,
    this.itemTitle,
    this.itemAddress,
    this.itemTotalPrice,
    this.itemPriceType,
    this.itemType,
    this.itemColor,
    this.itemSize,
    this.itemBrand,
    this.itemDescription,
    this.itemStatus,
    this.itemPublishStatus,
    this.itemSoldStatus,
    this.itemCreatedAt,
    this.itemUpdatedAt,
  });

  ClothingModel.suitModel({
    this.itemId,
    this.itemCustomerId,
    this.itemCategoryId,
    this.itemSubCategoryId,
    this.itemImages,
    this.itemTitle,
    this.itemAddress,
    this.itemTotalPrice,
    this.itemPriceType,
    this.itemType = -1,
    this.itemColor,
    this.itemSize,
    this.itemBrand,
    this.itemDescription,
    this.itemStatus,
    this.itemPublishStatus,
    this.itemSoldStatus,
    this.itemCreatedAt,
    this.itemUpdatedAt,
  });

  ClothingModel.brideClothModel({
    this.itemId,
    this.itemCustomerId,
    this.itemCategoryId,
    this.itemSubCategoryId,
    this.itemImages,
    this.itemTitle,
    this.itemAddress,
    this.itemTotalPrice,
    this.itemPriceType,
    this.itemType = -1,
    this.itemColor,
    this.itemSize,
    this.itemBrand,
    this.itemDescription,
    this.itemStatus,
    this.itemPublishStatus,
    this.itemSoldStatus,
    this.itemCreatedAt,
    this.itemUpdatedAt,
  });

  ClothingModel.shoeModel({
    this.itemId,
    this.itemCustomerId,
    this.itemCategoryId,
    this.itemSubCategoryId,
    this.itemImages,
    this.itemTitle,
    this.itemAddress,
    this.itemTotalPrice,
    this.itemPriceType,
    this.itemType,
    this.itemColor,
    this.itemSize,
    this.itemBrand,
    this.itemDescription,
    this.itemStatus,
    this.itemPublishStatus,
    this.itemSoldStatus,
    this.itemCreatedAt,
    this.itemUpdatedAt,
  });

  ClothingModel.watchModel({
    this.itemId,
    this.itemCustomerId,
    this.itemCategoryId,
    this.itemSubCategoryId,
    this.itemImages,
    this.itemTitle,
    this.itemAddress,
    this.itemTotalPrice,
    this.itemPriceType,
    this.itemType,
    this.itemColor = '',
    this.itemSize = '',
    this.itemBrand,
    this.itemDescription,
    this.itemStatus,
    this.itemPublishStatus,
    this.itemSoldStatus,
    this.itemCreatedAt,
    this.itemUpdatedAt,
  });

  ClothingModel.glassesModel({
    this.itemId,
    this.itemCustomerId,
    this.itemCategoryId,
    this.itemSubCategoryId,
    this.itemImages,
    this.itemTitle,
    this.itemAddress,
    this.itemTotalPrice,
    this.itemPriceType,
    this.itemType = -1,
    this.itemColor = '',
    this.itemSize = '',
    this.itemBrand,
    this.itemDescription,
    this.itemStatus,
    this.itemPublishStatus,
    this.itemSoldStatus,
    this.itemCreatedAt,
    this.itemUpdatedAt,
  });

  ClothingModel.otherClothingModel({
    this.itemId,
    this.itemCustomerId,
    this.itemCategoryId,
    this.itemSubCategoryId,
    this.itemImages,
    this.itemTitle,
    this.itemAddress,
    this.itemTotalPrice,
    this.itemPriceType,
    this.itemType = -1,
    this.itemColor,
    this.itemSize,
    this.itemBrand,
    this.itemDescription,
    this.itemStatus,
    this.itemPublishStatus,
    this.itemSoldStatus,
    this.itemCreatedAt,
    this.itemUpdatedAt,
  });

  ClothingModel copyWith({
    int? itemId,
    String? itemCustomerId,
    int? itemCategoryId,
    int? itemSubCategoryId,
    List<String>? itemImages,
    String? itemTitle,
    String? itemAddress,
    String? itemTotalPrice,
    int? itemPriceType,
    int? itemType,
    String? itemColor,
    String? itemSize,
    String? itemBrand,
    String? itemDescription,
    int? itemStatus,
    String? itemPublishStatus,
    String? itemSoldStatus,
    String? itemCreatedAt,
    String? itemUpdatedAt,
  }) {
    return ClothingModel(
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
      itemColor: itemColor ?? this.itemColor,
      itemSize: itemSize ?? this.itemSize,
      itemBrand: itemBrand ?? this.itemBrand,
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
      ClothingConstants.itemId: itemId,
      ClothingConstants.itemCustomerId: itemCustomerId,
      ClothingConstants.itemCategoryId: itemCategoryId,
      ClothingConstants.itemSubCategoryId: itemSubCategoryId,
      ClothingConstants.itemImages: itemImages,
      ClothingConstants.itemTitle: itemTitle,
      ClothingConstants.itemAddress: itemAddress,
      ClothingConstants.itemTotalPrice: itemTotalPrice,
      ClothingConstants.itemPriceType: itemPriceType,
      ClothingConstants.itemType: itemType,
      ClothingConstants.itemColor: itemColor,
      ClothingConstants.itemSize: itemSize,
      ClothingConstants.itemBrand: itemBrand,
      ClothingConstants.itemDescription: itemDescription,
      ClothingConstants.itemStatus: itemStatus,
      ClothingConstants.itemPublishStatus: itemPublishStatus,
      ClothingConstants.itemSoldStatus: itemSoldStatus,
      ClothingConstants.itemCreatedAt: itemCreatedAt,
      ClothingConstants.itemUpdatedAt: itemUpdatedAt,
    };
  }

  Map<String, dynamic> toMapItemModel() {
    return <String, dynamic>{
      ClothingConstants.itemId: itemId,
      ClothingConstants.itemCustomerId: itemCustomerId,
      ClothingConstants.itemCategoryId: itemCategoryId,
      ClothingConstants.itemSubCategoryId: itemSubCategoryId,
      ClothingConstants.itemImages: itemImages,
      ClothingConstants.itemTitle: itemTitle,
      ClothingConstants.itemAddress: itemAddress,
      ClothingConstants.itemTotalPrice: itemTotalPrice,
      ClothingConstants.itemPriceType: itemPriceType,
      ClothingConstants.itemPublishStatus: itemPublishStatus,
      ClothingConstants.itemSoldStatus: itemSoldStatus,
      ClothingConstants.itemCreatedAt: itemCreatedAt,
      ClothingConstants.itemUpdatedAt: itemUpdatedAt,
    };
  }

  factory ClothingModel.fromMap(Map<String, dynamic> map) {
    return ClothingModel(
      itemId: map[ClothingConstants.itemId] != null
          ? map[ClothingConstants.itemId] as int
          : null,
      itemCustomerId: map[ClothingConstants.itemCustomerId] != null
          ? map[ClothingConstants.itemCustomerId] as String
          : null,
      itemCategoryId: map[ClothingConstants.itemCategoryId] != null
          ? map[ClothingConstants.itemCategoryId] as int
          : null,
      itemSubCategoryId: map[ClothingConstants.itemSubCategoryId] != null
          ? map[ClothingConstants.itemSubCategoryId] as int
          : null,
      itemImages: map[ClothingConstants.itemImages] != null
          ? List<String>.from(
              (map[ClothingConstants.itemImages] as List<String>))
          : null,
      itemTitle: map[ClothingConstants.itemTitle] != null
          ? map[ClothingConstants.itemTitle] as String
          : null,
      itemAddress: map[ClothingConstants.itemAddress] != null
          ? map[ClothingConstants.itemAddress] as String
          : null,
      itemTotalPrice: map[ClothingConstants.itemTotalPrice] != null
          ? map[ClothingConstants.itemTotalPrice] as String
          : null,
      itemPriceType: map[ClothingConstants.itemPriceType] != null
          ? map[ClothingConstants.itemPriceType] as int
          : null,
      itemType: map[ClothingConstants.itemType] != null
          ? map[ClothingConstants.itemType] as int
          : null,
      itemColor: map[ClothingConstants.itemColor] != null
          ? map[ClothingConstants.itemColor] as String
          : null,
      itemSize: map[ClothingConstants.itemSize] != null
          ? map[ClothingConstants.itemSize] as String
          : null,
      itemBrand: map[ClothingConstants.itemBrand] != null
          ? map[ClothingConstants.itemBrand] as String
          : null,
      itemDescription: map[ClothingConstants.itemDescription] != null
          ? map[ClothingConstants.itemDescription] as String
          : null,
      itemStatus: map[ClothingConstants.itemStatus] != null
          ? map[ClothingConstants.itemStatus] as int
          : null,
      itemPublishStatus: map[ClothingConstants.itemPublishStatus] != null
          ? map[ClothingConstants.itemPublishStatus] as String
          : null,
      itemSoldStatus: map[ClothingConstants.itemSoldStatus] != null
          ? map[ClothingConstants.itemSoldStatus] as String
          : null,
      itemCreatedAt: map[ClothingConstants.itemCreatedAt] != null
          ? map[ClothingConstants.itemCreatedAt] as String
          : null,
      itemUpdatedAt: map[ClothingConstants.itemUpdatedAt] != null
          ? map[ClothingConstants.itemUpdatedAt] as String
          : null,
    );
  }

  factory ClothingModel.fromMapItemModel(Map<String, dynamic> map) {
    return ClothingModel.itemModel(
      itemId: map[ClothingConstants.itemId] != null
          ? map[ClothingConstants.itemId] as int
          : null,
      itemCustomerId: map[ClothingConstants.itemCustomerId] != null
          ? map[ClothingConstants.itemCustomerId] as String
          : null,
      itemCategoryId: map[ClothingConstants.itemCategoryId] != null
          ? map[ClothingConstants.itemCategoryId] as int
          : null,
      itemSubCategoryId: map[ClothingConstants.itemSubCategoryId] != null
          ? map[ClothingConstants.itemCategoryId] as int
          : null,
      itemImages: map[ClothingConstants.itemImages] != null
          ? List<String>.from(
              (map[ClothingConstants.itemImages] as List<String>))
          : null,
      itemTitle: map[ClothingConstants.itemTitle] != null
          ? map[ClothingConstants.itemTitle] as String
          : null,
      itemAddress: map[ClothingConstants.itemAddress] != null
          ? map[ClothingConstants.itemAddress] as String
          : null,
      itemTotalPrice: map[ClothingConstants.itemTotalPrice] != null
          ? map[ClothingConstants.itemTotalPrice] as String
          : null,
      itemPriceType: map[ClothingConstants.itemPriceType] != null
          ? map[ClothingConstants.itemPriceType] as int
          : null,
      itemDescription: map[ClothingConstants.itemDescription] != null
          ? map[ClothingConstants.itemDescription] as String
          : null,
      itemPublishStatus: map[ClothingConstants.itemPublishStatus] != null
          ? map[ClothingConstants.itemPublishStatus] as String
          : null,
      itemSoldStatus: map[ClothingConstants.itemSoldStatus] != null
          ? map[ClothingConstants.itemSoldStatus] as String
          : null,
      itemCreatedAt: map[ClothingConstants.itemCreatedAt] != null
          ? map[ClothingConstants.itemCreatedAt] as String
          : null,
      itemUpdatedAt: map[ClothingConstants.itemUpdatedAt] != null
          ? map[ClothingConstants.itemUpdatedAt] as String
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ClothingModel.fromJson(String source) =>
      ClothingModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ClothingModel(itemId: $itemId, itemCustomerId: $itemCustomerId, itemCategoryId: $itemCategoryId, itemSubCategoryId: $itemSubCategoryId, itemImages: $itemImages, itemTitle: $itemTitle, itemAddress: $itemAddress, itemTotalPrice: $itemTotalPrice, itemPriceType: $itemPriceType, itemType: $itemType, itemColor: $itemColor, itemSize: $itemSize, itemBrand: $itemBrand, itemDescription: $itemDescription, itemStatus: $itemStatus, itemPublishStatus: $itemPublishStatus, itemSoldStatus: $itemSoldStatus, itemCreatedAt: $itemCreatedAt, itemUpdatedAt: $itemUpdatedAt)';
  }

  @override
  bool operator ==(covariant ClothingModel other) {
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
        other.itemColor == itemColor &&
        other.itemSize == itemSize &&
        other.itemBrand == itemBrand &&
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
        itemColor.hashCode ^
        itemSize.hashCode ^
        itemBrand.hashCode ^
        itemDescription.hashCode ^
        itemStatus.hashCode ^
        itemPublishStatus.hashCode ^
        itemSoldStatus.hashCode ^
        itemCreatedAt.hashCode ^
        itemUpdatedAt.hashCode;
  }
}
