import 'dart:convert';

import 'package:divar/repositories/items_respositories/necessities_respository/constants/constants.dart';
import 'package:flutter/foundation.dart';

class NecessityModel {
  final int? itemId;
  final String? itemCustomerId;
  final int? itemCategoryId;
  final int? itemSubCategoryId;
  final List<String>? itemImages;
  final String? itemTitle;
  final int? itemProvince;
  final String? itemRegion;
  final String? itemDescription;
  final String? itemPublishStatus;
  final String? itemCreatedAt;
  final String? itemUpdatedAt;

  NecessityModel({
    required this.itemId,
    required this.itemCustomerId,
    required this.itemCategoryId,
    required this.itemSubCategoryId,
    required this.itemImages,
    required this.itemTitle,
    required this.itemProvince,
    required this.itemRegion,
    required this.itemDescription,
    required this.itemPublishStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  NecessityModel.itemModel({
    required this.itemId,
    required this.itemCustomerId,
    required this.itemCategoryId,
    required this.itemSubCategoryId,
    required this.itemImages,
    required this.itemTitle,
    required this.itemProvince,
    required this.itemRegion,
    this.itemDescription = '',
    required this.itemPublishStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  NecessityModel copyWith({
    int? itemId,
    String? itemCustomerId,
    int? itemCategoryId,
    int? itemSubCategoryId,
    List<String>? itemImages,
    String? itemTitle,
    int? itemProvince,
    String? itemRegion,
    String? itemDescription,
    String? itemPublishStatus,
    String? itemCreatedAt,
    String? itemUpdatedAt,
  }) {
    return NecessityModel(
      itemId: itemId ?? this.itemId,
      itemCustomerId: itemCustomerId ?? this.itemCustomerId,
      itemCategoryId: itemCategoryId ?? this.itemCategoryId,
      itemSubCategoryId: itemSubCategoryId ?? this.itemSubCategoryId,
      itemImages: itemImages ?? this.itemImages,
      itemTitle: itemTitle ?? this.itemTitle,
      itemProvince: itemProvince ?? this.itemProvince,
      itemRegion: itemRegion ?? this.itemRegion,
      itemDescription: itemDescription ?? this.itemDescription,
      itemPublishStatus: itemPublishStatus ?? this.itemPublishStatus,
      itemCreatedAt: itemCreatedAt ?? this.itemCreatedAt,
      itemUpdatedAt: itemUpdatedAt ?? this.itemUpdatedAt,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      NecessityConstants.itemId: itemId,
      NecessityConstants.itemCustomerId: itemCustomerId,
      NecessityConstants.itemCategoryId: itemCategoryId,
      NecessityConstants.itemSubCategoryId: itemSubCategoryId,
      NecessityConstants.itemImages: itemImages,
      NecessityConstants.itemTitle: itemTitle,
      NecessityConstants.itemProvince: itemProvince,
      NecessityConstants.itemRegion: itemRegion,
      NecessityConstants.itemDescription: itemDescription,
      NecessityConstants.itemPublishStatus: itemPublishStatus,
      NecessityConstants.itemCreatedAt: itemCreatedAt,
      NecessityConstants.itemUpdatedAt: itemUpdatedAt,
    };
  }

  Map<String, dynamic> toMapItemModel() {
    return <String, dynamic>{
      NecessityConstants.itemId: itemId,
      NecessityConstants.itemCustomerId: itemCustomerId,
      NecessityConstants.itemCategoryId: itemCategoryId,
      NecessityConstants.itemSubCategoryId: itemSubCategoryId,
      NecessityConstants.itemImages: itemImages,
      NecessityConstants.itemTitle: itemTitle,
      NecessityConstants.itemProvince: itemProvince,
      NecessityConstants.itemRegion: itemRegion,
      NecessityConstants.itemTotalPrice: '',
      NecessityConstants.itemPriceType: -1,
      NecessityConstants.itemPublishStatus: itemPublishStatus,
      NecessityConstants.itemSoldStatus: '',
      NecessityConstants.itemCreatedAt: itemCreatedAt,
      NecessityConstants.itemUpdatedAt: itemUpdatedAt,
    };
  }

  factory NecessityModel.fromMap(Map<Object?, Object?> map) {
    return NecessityModel(
      itemId: map[NecessityConstants.itemId] != null
          ? map[NecessityConstants.itemId] as int
          : null,
      itemCustomerId: map[NecessityConstants.itemCustomerId] != null
          ? map[NecessityConstants.itemCustomerId] as String
          : null,
      itemCategoryId: map[NecessityConstants.itemCategoryId] != null
          ? map[NecessityConstants.itemCategoryId] as int
          : null,
      itemSubCategoryId: map[NecessityConstants.itemSubCategoryId] != null
          ? map[NecessityConstants.itemSubCategoryId] as int
          : null,
      itemImages: map[NecessityConstants.itemImages] != null
          ? List<String>.from(
              (map[NecessityConstants.itemImages] as List<String>))
          : null,
      itemTitle: map[NecessityConstants.itemTitle] != null
          ? map[NecessityConstants.itemTitle] as String
          : null,
      itemProvince: map[NecessityConstants.itemProvince] != null
          ? map[NecessityConstants.itemProvince] as int
          : null,
      itemRegion: map[NecessityConstants.itemRegion] != null
          ? map[NecessityConstants.itemRegion] as String
          : null,
      itemDescription: map[NecessityConstants.itemDescription] != null
          ? map[NecessityConstants.itemDescription] as String
          : null,
      itemPublishStatus: map[NecessityConstants.itemPublishStatus] != null
          ? map[NecessityConstants.itemPublishStatus] as String
          : null,
      itemCreatedAt: map[NecessityConstants.itemCreatedAt] != null
          ? map[NecessityConstants.itemCreatedAt] as String
          : null,
      itemUpdatedAt: map[NecessityConstants.itemUpdatedAt] != null
          ? map[NecessityConstants.itemUpdatedAt] as String
          : null,
    );
  }

  factory NecessityModel.fromMapItemModel(Map<Object?, Object?> map) {
    return NecessityModel.itemModel(
      itemId: map[NecessityConstants.itemId] != null
          ? map[NecessityConstants.itemId] as int
          : null,
      itemCustomerId: map[NecessityConstants.itemCustomerId] != null
          ? map[NecessityConstants.itemCustomerId] as String
          : null,
      itemCategoryId: map[NecessityConstants.itemCategoryId] != null
          ? map[NecessityConstants.itemCategoryId] as int
          : null,
      itemSubCategoryId: map[NecessityConstants.itemSubCategoryId] != null
          ? map[NecessityConstants.itemSubCategoryId] as int
          : null,
      itemImages: map[NecessityConstants.itemImages] != null
          ? List<String>.from(
              (map[NecessityConstants.itemImages] as List<String>))
          : null,
      itemTitle: map[NecessityConstants.itemTitle] != null
          ? map[NecessityConstants.itemTitle] as String
          : null,
      itemProvince: map[NecessityConstants.itemProvince] != null
          ? map[NecessityConstants.itemProvince] as int
          : null,
      itemRegion: map[NecessityConstants.itemRegion] != null
          ? map[NecessityConstants.itemRegion] as String
          : null,
      itemPublishStatus: map[NecessityConstants.itemPublishStatus] != null
          ? map[NecessityConstants.itemPublishStatus] as String
          : null,
      itemCreatedAt: map[NecessityConstants.itemCreatedAt] != null
          ? map[NecessityConstants.itemCreatedAt] as String
          : null,
      itemUpdatedAt: map[NecessityConstants.itemUpdatedAt] != null
          ? map[NecessityConstants.itemUpdatedAt] as String
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory NecessityModel.fromJson(String source) =>
      NecessityModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'NecessityModel(itemId: $itemId, itemCustomerId: $itemCustomerId, itemCategoryId: $itemCategoryId, itemSubCategoryId: $itemSubCategoryId, itemImages: $itemImages, itemTitle: $itemTitle, itemProvince: $itemProvince, itemRegion: $itemRegion, itemDescription: $itemDescription, itemPublishStatus: $itemPublishStatus, itemCreatedAt: $itemCreatedAt, itemUpdatedAt: $itemUpdatedAt)';
  }

  @override
  bool operator ==(covariant NecessityModel other) {
    if (identical(this, other)) return true;

    return other.itemId == itemId &&
        other.itemCustomerId == itemCustomerId &&
        other.itemCategoryId == itemCategoryId &&
        other.itemSubCategoryId == itemSubCategoryId &&
        listEquals(other.itemImages, itemImages) &&
        other.itemTitle == itemTitle &&
        other.itemProvince == itemProvince &&
        other.itemRegion == itemRegion &&
        other.itemDescription == itemDescription &&
        other.itemPublishStatus == itemPublishStatus &&
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
        itemDescription.hashCode ^
        itemPublishStatus.hashCode ^
        itemCreatedAt.hashCode ^
        itemUpdatedAt.hashCode;
  }
}
