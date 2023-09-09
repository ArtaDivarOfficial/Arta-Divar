import 'dart:convert';

import 'package:divar/repositories/items_respositories/home_appliances_respository/constants/constants.dart';
import 'package:flutter/foundation.dart';

class HomeAppliancesModel {
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
  final String? itemBrand;
  final String? itemDescription;
  final int? itemStatus;
  final String? itemPublishStatus;
  final String? itemSoldStatus;
  final String? itemCreatedAt;
  final String? itemUpdatedAt;

  HomeAppliancesModel({
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
    required this.itemBrand,
    required this.itemDescription,
    required this.itemStatus,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  HomeAppliancesModel.itemModel({
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
    this.itemBrand = '',
    this.itemDescription = '',
    this.itemStatus = -1,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  HomeAppliancesModel.homeAppliancesModel({
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
    required this.itemBrand,
    required this.itemDescription,
    required this.itemStatus,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  HomeAppliancesModel.kitchenAppliancesModel({
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
    required this.itemBrand,
    required this.itemDescription,
    required this.itemStatus,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  HomeAppliancesModel.bathroomAppliancesModel({
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
    required this.itemBrand,
    required this.itemDescription,
    required this.itemStatus,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  HomeAppliancesModel.decorationModel({
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
    required this.itemBrand,
    required this.itemDescription,
    required this.itemStatus,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  HomeAppliancesModel.otherHomeAppliancesModel({
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
    required this.itemBrand,
    required this.itemDescription,
    required this.itemStatus,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  HomeAppliancesModel copyWith({
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
    String? itemBrand,
    String? itemDescription,
    int? itemStatus,
    String? itemPublishStatus,
    String? itemSoldStatus,
    String? itemCreatedAt,
    String? itemUpdatedAt,
  }) {
    return HomeAppliancesModel(
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
      HomeAppliancesConstants.itemId: itemId,
      HomeAppliancesConstants.itemCustomerId: itemCustomerId,
      HomeAppliancesConstants.itemCategoryId: itemCategoryId,
      HomeAppliancesConstants.itemSubCategoryId: itemSubCategoryId,
      HomeAppliancesConstants.itemImages: itemImages,
      HomeAppliancesConstants.itemTitle: itemTitle,
      HomeAppliancesConstants.itemProvince: itemProvince,
      HomeAppliancesConstants.itemRegion: itemRegion,
      HomeAppliancesConstants.itemTotalPrice: itemTotalPrice,
      HomeAppliancesConstants.itemPriceType: itemPriceType,
      HomeAppliancesConstants.itemBrand: itemBrand,
      HomeAppliancesConstants.itemDescription: itemDescription,
      HomeAppliancesConstants.itemStatus: itemStatus,
      HomeAppliancesConstants.itemPublishStatus: itemPublishStatus,
      HomeAppliancesConstants.itemSoldStatus: itemSoldStatus,
      HomeAppliancesConstants.itemCreatedAt: itemCreatedAt,
      HomeAppliancesConstants.itemUpdatedAt: itemUpdatedAt,
    };
  }

  Map<String, dynamic> toMapItemModel() {
    return <String, dynamic>{
      HomeAppliancesConstants.itemId: itemId,
      HomeAppliancesConstants.itemCustomerId: itemCustomerId,
      HomeAppliancesConstants.itemCategoryId: itemCategoryId,
      HomeAppliancesConstants.itemSubCategoryId: itemSubCategoryId,
      HomeAppliancesConstants.itemImages: itemImages,
      HomeAppliancesConstants.itemTitle: itemTitle,
      HomeAppliancesConstants.itemProvince: itemProvince,
      HomeAppliancesConstants.itemRegion: itemRegion,
      HomeAppliancesConstants.itemTotalPrice: itemTotalPrice,
      HomeAppliancesConstants.itemPriceType: itemPriceType,
      HomeAppliancesConstants.itemPublishStatus: itemPublishStatus,
      HomeAppliancesConstants.itemSoldStatus: itemSoldStatus,
      HomeAppliancesConstants.itemCreatedAt: itemCreatedAt,
      HomeAppliancesConstants.itemUpdatedAt: itemUpdatedAt,
    };
  }

  factory HomeAppliancesModel.fromMap(Map<String, dynamic> map) {
    return HomeAppliancesModel(
      itemId: map[HomeAppliancesConstants.itemId] != null
          ? map[HomeAppliancesConstants.itemId] as int
          : null,
      itemCustomerId: map[HomeAppliancesConstants.itemCustomerId] != null
          ? map[HomeAppliancesConstants.itemCustomerId] as String
          : null,
      itemCategoryId: map[HomeAppliancesConstants.itemCategoryId] != null
          ? map[HomeAppliancesConstants.itemCategoryId] as int
          : null,
      itemSubCategoryId: map[HomeAppliancesConstants.itemSubCategoryId] != null
          ? map[HomeAppliancesConstants.itemSubCategoryId] as int
          : null,
      itemImages: map[HomeAppliancesConstants.itemImages] != null
          ? List<String>.from(
              (map[HomeAppliancesConstants.itemImages] as List<String>))
          : null,
      itemTitle: map[HomeAppliancesConstants.itemTitle] != null
          ? map[HomeAppliancesConstants.itemTitle] as String
          : null,
      itemProvince: map[HomeAppliancesConstants.itemProvince] != null
          ? map[HomeAppliancesConstants.itemProvince] as int
          : null,
      itemRegion: map[HomeAppliancesConstants.itemRegion] != null
          ? map[HomeAppliancesConstants.itemRegion] as String
          : null,
      itemTotalPrice: map[HomeAppliancesConstants.itemTotalPrice] != null
          ? map[HomeAppliancesConstants.itemTotalPrice] as String
          : null,
      itemPriceType: map[HomeAppliancesConstants.itemPriceType] != null
          ? map[HomeAppliancesConstants.itemPriceType] as int
          : null,
      itemBrand: map[HomeAppliancesConstants.itemBrand] != null
          ? map[HomeAppliancesConstants.itemBrand] as String
          : null,
      itemDescription: map[HomeAppliancesConstants.itemDescription] != null
          ? map[HomeAppliancesConstants.itemDescription] as String
          : null,
      itemStatus: map[HomeAppliancesConstants.itemStatus] != null
          ? map[HomeAppliancesConstants.itemStatus] as int
          : null,
      itemPublishStatus: map[HomeAppliancesConstants.itemPublishStatus] != null
          ? map[HomeAppliancesConstants.itemPublishStatus] as String
          : null,
      itemSoldStatus: map[HomeAppliancesConstants.itemSoldStatus] != null
          ? map[HomeAppliancesConstants.itemSoldStatus] as String
          : null,
      itemCreatedAt: map[HomeAppliancesConstants.itemCreatedAt] != null
          ? map[HomeAppliancesConstants.itemCreatedAt] as String
          : null,
      itemUpdatedAt: map[HomeAppliancesConstants.itemUpdatedAt] != null
          ? map[HomeAppliancesConstants.itemUpdatedAt] as String
          : null,
    );
  }

  factory HomeAppliancesModel.fromMapItemModel(Map<String, dynamic> map) {
    return HomeAppliancesModel.itemModel(
      itemId: map[HomeAppliancesConstants.itemId] != null
          ? map[HomeAppliancesConstants.itemId] as int
          : null,
      itemCustomerId: map[HomeAppliancesConstants.itemCustomerId] != null
          ? map[HomeAppliancesConstants.itemCustomerId] as String
          : null,
      itemCategoryId: map[HomeAppliancesConstants.itemCategoryId] != null
          ? map[HomeAppliancesConstants.itemCategoryId] as int
          : null,
      itemSubCategoryId: map[HomeAppliancesConstants.itemSubCategoryId] != null
          ? map[HomeAppliancesConstants.itemSubCategoryId] as int
          : null,
      itemImages: map[HomeAppliancesConstants.itemImages] != null
          ? List<String>.from(
              (map[HomeAppliancesConstants.itemImages] as List<String>))
          : null,
      itemTitle: map[HomeAppliancesConstants.itemTitle] != null
          ? map[HomeAppliancesConstants.itemTitle] as String
          : null,
      itemProvince: map[HomeAppliancesConstants.itemProvince] != null
          ? map[HomeAppliancesConstants.itemProvince] as int
          : null,
      itemRegion: map[HomeAppliancesConstants.itemRegion] != null
          ? map[HomeAppliancesConstants.itemRegion] as String
          : null,
      itemTotalPrice: map[HomeAppliancesConstants.itemTotalPrice] != null
          ? map[HomeAppliancesConstants.itemTotalPrice] as String
          : null,
      itemPriceType: map[HomeAppliancesConstants.itemPriceType] != null
          ? map[HomeAppliancesConstants.itemPriceType] as int
          : null,
      itemPublishStatus: map[HomeAppliancesConstants.itemPublishStatus] != null
          ? map[HomeAppliancesConstants.itemPublishStatus] as String
          : null,
      itemSoldStatus: map[HomeAppliancesConstants.itemSoldStatus] != null
          ? map[HomeAppliancesConstants.itemSoldStatus] as String
          : null,
      itemCreatedAt: map[HomeAppliancesConstants.itemCreatedAt] != null
          ? map[HomeAppliancesConstants.itemCreatedAt] as String
          : null,
      itemUpdatedAt: map[HomeAppliancesConstants.itemUpdatedAt] != null
          ? map[HomeAppliancesConstants.itemUpdatedAt] as String
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory HomeAppliancesModel.fromJson(String source) =>
      HomeAppliancesModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'HomeAppliancesModel(itemId: $itemId, itemCustomerId: $itemCustomerId, itemCategoryId: $itemCategoryId, itemSubCategoryId: $itemSubCategoryId, itemImages: $itemImages, itemTitle: $itemTitle, itemProvince: $itemProvince, itemRegion: $itemRegion itemTotalPrice: $itemTotalPrice, itemPriceType: $itemPriceType, itemBrand: $itemBrand, itemDescription: $itemDescription, itemStatus: $itemStatus, itemPublishStatus: $itemPublishStatus, itemSoldStatus: $itemSoldStatus, itemCreatedAt: $itemCreatedAt, itemUpdatedAt: $itemUpdatedAt)';
  }

  @override
  bool operator ==(covariant HomeAppliancesModel other) {
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
        itemProvince.hashCode ^
        itemRegion.hashCode ^
        itemTotalPrice.hashCode ^
        itemPriceType.hashCode ^
        itemBrand.hashCode ^
        itemDescription.hashCode ^
        itemStatus.hashCode ^
        itemPublishStatus.hashCode ^
        itemSoldStatus.hashCode ^
        itemCreatedAt.hashCode ^
        itemUpdatedAt.hashCode;
  }
}
