import 'dart:convert';

import 'package:divar/repositories/items_respositories/online_games_respository/constants/constants.dart';
import 'package:flutter/foundation.dart';

class OnlineGamesModel {
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
  final int? itemLevel;
  final String? itemHighestRank;
  final int? itemTownHallLevel;
  final int? itemClanLevel;
  final String? itemDescription;
  final int? itemStatus;
  final String? itemPublishStatus;
  final String? itemSoldStatus;
  final String? itemCreatedAt;
  final String? itemUpdatedAt;

  OnlineGamesModel({
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
    required this.itemLevel,
    required this.itemHighestRank,
    required this.itemTownHallLevel,
    required this.itemClanLevel,
    required this.itemDescription,
    required this.itemStatus,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  OnlineGamesModel.itemModel({
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
    this.itemLevel = -1,
    this.itemHighestRank = '',
    this.itemTownHallLevel = -1,
    this.itemClanLevel = -1,
    this.itemDescription = '',
    this.itemStatus = -1,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  OnlineGamesModel.pubgModel({
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
    required this.itemLevel,
    required this.itemHighestRank,
    this.itemTownHallLevel = -1,
    this.itemClanLevel = -1,
    required this.itemDescription,
    required this.itemStatus,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  OnlineGamesModel.callOfDutyModel({
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
    required this.itemLevel,
    required this.itemHighestRank,
    this.itemTownHallLevel = -1,
    this.itemClanLevel = -1,
    required this.itemDescription,
    required this.itemStatus,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  OnlineGamesModel.clashOfClansModel({
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
    this.itemLevel = -1,
    this.itemHighestRank = '',
    required this.itemTownHallLevel,
    this.itemClanLevel = -1,
    required this.itemDescription,
    required this.itemStatus,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  OnlineGamesModel.clanModel({
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
    this.itemLevel = -1,
    this.itemHighestRank = '',
    this.itemTownHallLevel = -1,
    required this.itemClanLevel,
    required this.itemDescription,
    required this.itemStatus,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  OnlineGamesModel.otherOnlineGamesModel({
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
    this.itemLevel = -1,
    this.itemHighestRank = '',
    this.itemTownHallLevel = -1,
    this.itemClanLevel = -1,
    required this.itemDescription,
    required this.itemStatus,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  OnlineGamesModel copyWith({
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
    int? itemLevel,
    String? itemHighestRank,
    int? itemTownHallLevel,
    int? itemClanLevel,
    String? itemDescription,
    int? itemStatus,
    String? itemPublishStatus,
    String? itemSoldStatus,
    String? itemCreatedAt,
    String? itemUpdatedAt,
  }) {
    return OnlineGamesModel(
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
      itemLevel: itemLevel ?? this.itemLevel,
      itemHighestRank: itemHighestRank ?? this.itemHighestRank,
      itemTownHallLevel: itemTownHallLevel ?? this.itemTownHallLevel,
      itemClanLevel: itemClanLevel ?? this.itemClanLevel,
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
      OnlineGamesConstants.itemId: itemId,
      OnlineGamesConstants.itemCustomerId: itemCustomerId,
      OnlineGamesConstants.itemCategoryId: itemCategoryId,
      OnlineGamesConstants.itemSubCategoryId: itemSubCategoryId,
      OnlineGamesConstants.itemImages: itemImages,
      OnlineGamesConstants.itemTitle: itemTitle,
      OnlineGamesConstants.itemProvince: itemProvince,
      OnlineGamesConstants.itemRegion: itemRegion,
      OnlineGamesConstants.itemTotalPrice: itemTotalPrice,
      OnlineGamesConstants.itemPriceType: itemPriceType,
      OnlineGamesConstants.itemLevel: itemLevel,
      OnlineGamesConstants.itemHighestRank: itemHighestRank,
      OnlineGamesConstants.itemTownHallLevel: itemTownHallLevel,
      OnlineGamesConstants.itemClanLevel: itemClanLevel,
      OnlineGamesConstants.itemDescription: itemDescription,
      OnlineGamesConstants.itemStatus: itemStatus,
      OnlineGamesConstants.itemPublishStatus: itemPublishStatus,
      OnlineGamesConstants.itemSoldStatus: itemSoldStatus,
      OnlineGamesConstants.itemCreatedAt: itemCreatedAt,
      OnlineGamesConstants.itemUpdatedAt: itemUpdatedAt,
    };
  }

  Map<String, dynamic> toMapItemModel() {
    return <String, dynamic>{
      OnlineGamesConstants.itemId: itemId,
      OnlineGamesConstants.itemCustomerId: itemCustomerId,
      OnlineGamesConstants.itemCategoryId: itemCategoryId,
      OnlineGamesConstants.itemSubCategoryId: itemSubCategoryId,
      OnlineGamesConstants.itemImages: itemImages,
      OnlineGamesConstants.itemTitle: itemTitle,
      OnlineGamesConstants.itemProvince: itemProvince,
      OnlineGamesConstants.itemRegion: itemRegion,
      OnlineGamesConstants.itemTotalPrice: itemTotalPrice,
      OnlineGamesConstants.itemPriceType: itemPriceType,
      OnlineGamesConstants.itemPublishStatus: itemPublishStatus,
      OnlineGamesConstants.itemSoldStatus: itemSoldStatus,
      OnlineGamesConstants.itemCreatedAt: itemCreatedAt,
      OnlineGamesConstants.itemUpdatedAt: itemUpdatedAt,
    };
  }

  factory OnlineGamesModel.fromMap(Map<String, dynamic> map) {
    return OnlineGamesModel(
      itemId: map[OnlineGamesConstants.itemId] != null
          ? map[OnlineGamesConstants.itemId] as int
          : null,
      itemCustomerId: map[OnlineGamesConstants.itemCustomerId] != null
          ? map[OnlineGamesConstants.itemCustomerId] as String
          : null,
      itemCategoryId: map[OnlineGamesConstants.itemCategoryId] != null
          ? map[OnlineGamesConstants.itemCategoryId] as int
          : null,
      itemSubCategoryId: map[OnlineGamesConstants.itemSubCategoryId] != null
          ? map[OnlineGamesConstants.itemSubCategoryId] as int
          : null,
      itemImages: map[OnlineGamesConstants.itemImages] != null
          ? List<String>.from(
              (map[OnlineGamesConstants.itemImages] as List<String>))
          : null,
      itemTitle: map[OnlineGamesConstants.itemTitle] != null
          ? map[OnlineGamesConstants.itemTitle] as String
          : null,
      itemProvince: map[OnlineGamesConstants.itemProvince] != null
          ? map[OnlineGamesConstants.itemProvince] as int
          : null,
      itemRegion: map[OnlineGamesConstants.itemRegion] != null
          ? map[OnlineGamesConstants.itemRegion] as String
          : null,
      itemTotalPrice: map[OnlineGamesConstants.itemTotalPrice] != null
          ? map[OnlineGamesConstants.itemTotalPrice] as String
          : null,
      itemPriceType: map[OnlineGamesConstants.itemPriceType] != null
          ? map[OnlineGamesConstants.itemPriceType] as int
          : null,
      itemLevel: map[OnlineGamesConstants.itemLevel] != null
          ? map[OnlineGamesConstants.itemLevel] as int
          : null,
      itemHighestRank: map[OnlineGamesConstants.itemHighestRank] != null
          ? map[OnlineGamesConstants.itemHighestRank] as String
          : null,
      itemTownHallLevel: map[OnlineGamesConstants.itemTownHallLevel] != null
          ? map[OnlineGamesConstants.itemTownHallLevel] as int
          : null,
      itemClanLevel: map[OnlineGamesConstants.itemClanLevel] != null
          ? map[OnlineGamesConstants.itemClanLevel] as int
          : null,
      itemDescription: map[OnlineGamesConstants.itemDescription] != null
          ? map[OnlineGamesConstants.itemDescription] as String
          : null,
      itemStatus: map[OnlineGamesConstants.itemStatus] != null
          ? map[OnlineGamesConstants.itemStatus] as int
          : null,
      itemPublishStatus: map[OnlineGamesConstants.itemPublishStatus] != null
          ? map[OnlineGamesConstants.itemPublishStatus] as String
          : null,
      itemSoldStatus: map[OnlineGamesConstants.itemSoldStatus] != null
          ? map[OnlineGamesConstants.itemSoldStatus] as String
          : null,
      itemCreatedAt: map[OnlineGamesConstants.itemCreatedAt] != null
          ? map[OnlineGamesConstants.itemCreatedAt] as String
          : null,
      itemUpdatedAt: map[OnlineGamesConstants.itemUpdatedAt] != null
          ? map[OnlineGamesConstants.itemUpdatedAt] as String
          : null,
    );
  }

  factory OnlineGamesModel.fromMapItemModel(Map<String, dynamic> map) {
    return OnlineGamesModel.itemModel(
      itemId: map[OnlineGamesConstants.itemId] != null
          ? map[OnlineGamesConstants.itemId] as int
          : null,
      itemCustomerId: map[OnlineGamesConstants.itemCustomerId] != null
          ? map[OnlineGamesConstants.itemCustomerId] as String
          : null,
      itemCategoryId: map[OnlineGamesConstants.itemCategoryId] != null
          ? map[OnlineGamesConstants.itemCategoryId] as int
          : null,
      itemSubCategoryId: map[OnlineGamesConstants.itemSubCategoryId] != null
          ? map[OnlineGamesConstants.itemSubCategoryId] as int
          : null,
      itemImages: map[OnlineGamesConstants.itemImages] != null
          ? List<String>.from(
              (map[OnlineGamesConstants.itemImages] as List<String>))
          : null,
      itemTitle: map[OnlineGamesConstants.itemTitle] != null
          ? map[OnlineGamesConstants.itemTitle] as String
          : null,
      itemProvince: map[OnlineGamesConstants.itemProvince] != null
          ? map[OnlineGamesConstants.itemProvince] as int
          : null,
      itemRegion: map[OnlineGamesConstants.itemRegion] != null
          ? map[OnlineGamesConstants.itemRegion] as String
          : null,
      itemTotalPrice: map[OnlineGamesConstants.itemTotalPrice] != null
          ? map[OnlineGamesConstants.itemTotalPrice] as String
          : null,
      itemPriceType: map[OnlineGamesConstants.itemPriceType] != null
          ? map[OnlineGamesConstants.itemPriceType] as int
          : null,
      itemPublishStatus: map[OnlineGamesConstants.itemPublishStatus] != null
          ? map[OnlineGamesConstants.itemPublishStatus] as String
          : null,
      itemSoldStatus: map[OnlineGamesConstants.itemSoldStatus] != null
          ? map[OnlineGamesConstants.itemSoldStatus] as String
          : null,
      itemCreatedAt: map[OnlineGamesConstants.itemCreatedAt] != null
          ? map[OnlineGamesConstants.itemCreatedAt] as String
          : null,
      itemUpdatedAt: map[OnlineGamesConstants.itemUpdatedAt] != null
          ? map[OnlineGamesConstants.itemUpdatedAt] as String
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory OnlineGamesModel.fromJson(String source) =>
      OnlineGamesModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'OnlineGamesModel(itemId: $itemId, itemCustomerId: $itemCustomerId, itemCategoryId: $itemCategoryId, itemSubCategoryId: $itemSubCategoryId, itemImages: $itemImages, itemTitle: $itemTitle, itemProvince: $itemProvince, itemRegion: $itemRegion, itemTotalPrice: $itemTotalPrice, itemPriceType: $itemPriceType, itemLevel: $itemLevel, itemHighestRank: $itemHighestRank, itemTownHallLevel: $itemTownHallLevel, itemClanLevel: $itemClanLevel, itemDescription: $itemDescription, itemStatus: $itemStatus, itemPublishStatus: $itemPublishStatus, itemSoldStatus: $itemSoldStatus, itemCreatedAt: $itemCreatedAt, itemUpdatedAt: $itemUpdatedAt)';
  }

  @override
  bool operator ==(covariant OnlineGamesModel other) {
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
        other.itemLevel == itemLevel &&
        other.itemHighestRank == itemHighestRank &&
        other.itemTownHallLevel == itemTownHallLevel &&
        other.itemClanLevel == itemClanLevel &&
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
        itemLevel.hashCode ^
        itemHighestRank.hashCode ^
        itemTownHallLevel.hashCode ^
        itemClanLevel.hashCode ^
        itemDescription.hashCode ^
        itemStatus.hashCode ^
        itemPublishStatus.hashCode ^
        itemSoldStatus.hashCode ^
        itemCreatedAt.hashCode ^
        itemUpdatedAt.hashCode;
  }
}
