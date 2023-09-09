import 'dart:convert';

import 'package:divar/repositories/items_respositories/stationary_respository/constants/constants.dart';
import 'package:flutter/foundation.dart';

class StationaryModel {
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
  final String? itemWriter;
  final String? itemTranslator;
  final int? itemPageCount;
  final String? itemDescription;
  final int? itemStatus;
  final String? itemPublishStatus;
  final String? itemSoldStatus;
  final String? itemCreatedAt;
  final String? itemUpdatedAt;

  StationaryModel({
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
    required this.itemWriter,
    required this.itemTranslator,
    required this.itemPageCount,
    required this.itemDescription,
    required this.itemStatus,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  StationaryModel.itemModel({
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
    this.itemWriter = '',
    this.itemTranslator = '',
    this.itemPageCount = -1,
    this.itemDescription = '',
    this.itemStatus = -1,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  StationaryModel.bookModel({
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
    required this.itemWriter,
    required this.itemTranslator,
    this.itemPageCount = -1,
    required this.itemDescription,
    required this.itemStatus,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  StationaryModel.noteBookModel({
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
    this.itemWriter = '',
    this.itemTranslator = '',
    required this.itemPageCount,
    required this.itemDescription,
    required this.itemStatus,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  StationaryModel.studyBoardModel({
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
    this.itemWriter = '',
    this.itemTranslator = '',
    this.itemPageCount = -1,
    required this.itemDescription,
    required this.itemStatus,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  StationaryModel.paintingAppliancesModel({
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
    this.itemWriter = '',
    this.itemTranslator = '',
    this.itemPageCount = -1,
    required this.itemDescription,
    required this.itemStatus,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  StationaryModel.medicalAppliancesModel({
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
    this.itemWriter = '',
    this.itemTranslator = '',
    this.itemPageCount = -1,
    required this.itemDescription,
    required this.itemStatus,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  StationaryModel.otherStationariesModel({
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
    this.itemWriter = '',
    this.itemTranslator = '',
    this.itemPageCount = -1,
    required this.itemDescription,
    required this.itemStatus,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  StationaryModel copyWith({
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
    String? itemWriter,
    String? itemTranslator,
    int? itemPageCount,
    String? itemDescription,
    int? itemStatus,
    String? itemPublishStatus,
    String? itemSoldStatus,
    String? itemCreatedAt,
    String? itemUpdatedAt,
  }) {
    return StationaryModel(
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
      itemWriter: itemWriter ?? this.itemWriter,
      itemTranslator: itemTranslator ?? this.itemTranslator,
      itemPageCount: itemPageCount ?? this.itemPageCount,
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
      StationaryConstants.itemId: itemId,
      StationaryConstants.itemCustomerId: itemCustomerId,
      StationaryConstants.itemCategoryId: itemCategoryId,
      StationaryConstants.itemSubCategoryId: itemSubCategoryId,
      StationaryConstants.itemImages: itemImages,
      StationaryConstants.itemTitle: itemTitle,
      StationaryConstants.itemProvince: itemProvince,
      StationaryConstants.itemRegion: itemRegion,
      StationaryConstants.itemTotalPrice: itemTotalPrice,
      StationaryConstants.itemPriceType: itemPriceType,
      StationaryConstants.itemWriter: itemWriter,
      StationaryConstants.itemTranslator: itemTranslator,
      StationaryConstants.itemPageCount: itemPageCount,
      StationaryConstants.itemDescription: itemDescription,
      StationaryConstants.itemStatus: itemStatus,
      StationaryConstants.itemPublishStatus: itemPublishStatus,
      StationaryConstants.itemSoldStatus: itemSoldStatus,
      StationaryConstants.itemCreatedAt: itemCreatedAt,
      StationaryConstants.itemUpdatedAt: itemUpdatedAt,
    };
  }

  Map<String, dynamic> toMapItemModel() {
    return <String, dynamic>{
      StationaryConstants.itemId: itemId,
      StationaryConstants.itemCustomerId: itemCustomerId,
      StationaryConstants.itemCategoryId: itemCategoryId,
      StationaryConstants.itemSubCategoryId: itemSubCategoryId,
      StationaryConstants.itemImages: itemImages,
      StationaryConstants.itemTitle: itemTitle,
      StationaryConstants.itemProvince: itemProvince,
      StationaryConstants.itemRegion: itemRegion,
      StationaryConstants.itemTotalPrice: itemTotalPrice,
      StationaryConstants.itemPriceType: itemPriceType,
      StationaryConstants.itemPublishStatus: itemPublishStatus,
      StationaryConstants.itemSoldStatus: itemSoldStatus,
      StationaryConstants.itemCreatedAt: itemCreatedAt,
      StationaryConstants.itemUpdatedAt: itemUpdatedAt,
    };
  }

  factory StationaryModel.fromMap(Map<String, dynamic> map) {
    return StationaryModel(
      itemId: map[StationaryConstants.itemId] != null
          ? map[StationaryConstants.itemId] as int
          : null,
      itemCustomerId: map[StationaryConstants.itemCustomerId] != null
          ? map[StationaryConstants.itemCustomerId] as String
          : null,
      itemCategoryId: map[StationaryConstants.itemCategoryId] != null
          ? map[StationaryConstants.itemCategoryId] as int
          : null,
      itemSubCategoryId: map[StationaryConstants.itemSubCategoryId] != null
          ? map[StationaryConstants.itemSubCategoryId] as int
          : null,
      itemImages: map[StationaryConstants.itemImages] != null
          ? List<String>.from(
              (map[StationaryConstants.itemImages] as List<String>))
          : null,
      itemTitle: map[StationaryConstants.itemTitle] != null
          ? map[StationaryConstants.itemTitle] as String
          : null,
      itemProvince: map[StationaryConstants.itemProvince] != null
          ? map[StationaryConstants.itemProvince] as int
          : null,
      itemRegion: map[StationaryConstants.itemRegion] != null
          ? map[StationaryConstants.itemRegion] as String
          : null,
      itemTotalPrice: map[StationaryConstants.itemTotalPrice] != null
          ? map[StationaryConstants.itemTotalPrice] as String
          : null,
      itemPriceType: map[StationaryConstants.itemPriceType] != null
          ? map[StationaryConstants.itemPriceType] as int
          : null,
      itemWriter: map[StationaryConstants.itemWriter] != null
          ? map[StationaryConstants.itemWriter] as String
          : null,
      itemTranslator: map[StationaryConstants.itemTranslator] != null
          ? map[StationaryConstants.itemTranslator] as String
          : null,
      itemPageCount: map[StationaryConstants.itemPageCount] != null
          ? map[StationaryConstants.itemPageCount] as int
          : null,
      itemDescription: map[StationaryConstants.itemDescription] != null
          ? map[StationaryConstants.itemDescription] as String
          : null,
      itemStatus: map[StationaryConstants.itemStatus] != null
          ? map[StationaryConstants.itemStatus] as int
          : null,
      itemPublishStatus: map[StationaryConstants.itemPublishStatus] != null
          ? map[StationaryConstants.itemPublishStatus] as String
          : null,
      itemSoldStatus: map[StationaryConstants.itemSoldStatus] != null
          ? map[StationaryConstants.itemSoldStatus] as String
          : null,
      itemCreatedAt: map[StationaryConstants.itemCreatedAt] != null
          ? map[StationaryConstants.itemCreatedAt] as String
          : null,
      itemUpdatedAt: map[StationaryConstants.itemUpdatedAt] != null
          ? map[StationaryConstants.itemUpdatedAt] as String
          : null,
    );
  }

  factory StationaryModel.fromMapItemModel(Map<String, dynamic> map) {
    return StationaryModel.itemModel(
      itemId: map[StationaryConstants.itemId] != null
          ? map[StationaryConstants.itemId] as int
          : null,
      itemCustomerId: map[StationaryConstants.itemCustomerId] != null
          ? map[StationaryConstants.itemCustomerId] as String
          : null,
      itemCategoryId: map[StationaryConstants.itemCategoryId] != null
          ? map[StationaryConstants.itemCategoryId] as int
          : null,
      itemSubCategoryId: map[StationaryConstants.itemSubCategoryId] != null
          ? map[StationaryConstants.itemSubCategoryId] as int
          : null,
      itemImages: map[StationaryConstants.itemImages] != null
          ? List<String>.from(
              (map[StationaryConstants.itemImages] as List<String>))
          : null,
      itemTitle: map[StationaryConstants.itemTitle] != null
          ? map[StationaryConstants.itemTitle] as String
          : null,
      itemProvince: map[StationaryConstants.itemProvince] != null
          ? map[StationaryConstants.itemProvince] as int
          : null,
      itemRegion: map[StationaryConstants.itemRegion] != null
          ? map[StationaryConstants.itemRegion] as String
          : null,
      itemTotalPrice: map[StationaryConstants.itemTotalPrice] != null
          ? map[StationaryConstants.itemTotalPrice] as String
          : null,
      itemPriceType: map[StationaryConstants.itemPriceType] != null
          ? map[StationaryConstants.itemPriceType] as int
          : null,
      itemPublishStatus: map[StationaryConstants.itemPublishStatus] != null
          ? map[StationaryConstants.itemPublishStatus] as String
          : null,
      itemSoldStatus: map[StationaryConstants.itemSoldStatus] != null
          ? map[StationaryConstants.itemSoldStatus] as String
          : null,
      itemCreatedAt: map[StationaryConstants.itemCreatedAt] != null
          ? map[StationaryConstants.itemCreatedAt] as String
          : null,
      itemUpdatedAt: map[StationaryConstants.itemUpdatedAt] != null
          ? map[StationaryConstants.itemUpdatedAt] as String
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory StationaryModel.fromJson(String source) =>
      StationaryModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'StationaryModel(itemId: $itemId, itemCustomerId: $itemCustomerId, itemCategoryId: $itemCategoryId, itemSubCategoryId: $itemSubCategoryId, itemImages: $itemImages, itemTitle: $itemTitle, itemProvince: $itemProvince, itemRegion: $itemRegion, itemTotalPrice: $itemTotalPrice, itemPriceType: $itemPriceType, itemWriter: $itemWriter, itemTranslator: $itemTranslator, itemPageCount: $itemPageCount, itemDescription: $itemDescription, itemStatus: $itemStatus, itemPublishStatus: $itemPublishStatus, itemSoldStatus: $itemSoldStatus, itemCreatedAt: $itemCreatedAt, itemUpdatedAt: $itemUpdatedAt)';
  }

  @override
  bool operator ==(covariant StationaryModel other) {
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
        other.itemWriter == itemWriter &&
        other.itemTranslator == itemTranslator &&
        other.itemPageCount == itemPageCount &&
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
        itemWriter.hashCode ^
        itemTranslator.hashCode ^
        itemPageCount.hashCode ^
        itemDescription.hashCode ^
        itemStatus.hashCode ^
        itemPublishStatus.hashCode ^
        itemSoldStatus.hashCode ^
        itemCreatedAt.hashCode ^
        itemUpdatedAt.hashCode;
  }
}
