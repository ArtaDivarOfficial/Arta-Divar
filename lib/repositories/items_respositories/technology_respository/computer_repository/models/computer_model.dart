import 'dart:convert';

import 'package:divar/repositories/items_respositories/technology_respository/computer_repository/constants/constants.dart';
import 'package:flutter/foundation.dart';

class ComputerModel {
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
  final String? itemModel;
  final String? itemCPU;
  final int? itemGeneration;
  final String? itemGraphic;
  final String? itemRam;
  final String? itemStorage;
  final String? itemDescription;
  final int? itemStatus;
  final bool? itemChangable;
  final String? itemPublishStatus;
  final String? itemSoldStatus;
  final String? itemCreatedAt;
  final String? itemUpdatedAt;

  ComputerModel({
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
    required this.itemModel,
    required this.itemCPU,
    required this.itemGeneration,
    required this.itemGraphic,
    required this.itemRam,
    required this.itemStorage,
    required this.itemDescription,
    required this.itemStatus,
    required this.itemChangable,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  ComputerModel.itemModel({
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
    this.itemModel = '',
    this.itemCPU = '',
    this.itemGeneration = -1,
    this.itemGraphic = '',
    this.itemRam = '',
    this.itemStorage = '',
    this.itemDescription = '',
    this.itemStatus = -1,
    this.itemChangable = false,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  ComputerModel.computerModel({
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
    required this.itemModel,
    required this.itemCPU,
    required this.itemGeneration,
    required this.itemGraphic,
    required this.itemRam,
    required this.itemStorage,
    required this.itemDescription,
    required this.itemStatus,
    required this.itemChangable,
    required this.itemPublishStatus,
    required this.itemSoldStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  ComputerModel copyWith({
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
    String? itemModel,
    String? itemCPU,
    int? itemGeneration,
    String? itemGraphic,
    String? itemRam,
    String? itemStorage,
    String? itemDescription,
    int? itemStatus,
    bool? itemChangable,
    String? itemPublishStatus,
    String? itemSoldStatus,
    String? itemCreatedAt,
    String? itemUpdatedAt,
  }) {
    return ComputerModel(
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
      itemModel: itemModel ?? this.itemModel,
      itemCPU: itemCPU ?? this.itemCPU,
      itemGeneration: itemGeneration ?? this.itemGeneration,
      itemGraphic: itemGraphic ?? this.itemGraphic,
      itemRam: itemRam ?? this.itemRam,
      itemStorage: itemStorage ?? this.itemStorage,
      itemDescription: itemDescription ?? this.itemDescription,
      itemStatus: itemStatus ?? this.itemStatus,
      itemChangable: itemChangable ?? this.itemChangable,
      itemPublishStatus: itemPublishStatus ?? this.itemPublishStatus,
      itemSoldStatus: itemSoldStatus ?? this.itemSoldStatus,
      itemCreatedAt: itemCreatedAt ?? this.itemCreatedAt,
      itemUpdatedAt: itemUpdatedAt ?? this.itemUpdatedAt,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      ComputerConstants.itemId: itemId,
      ComputerConstants.itemCustomerId: itemCustomerId,
      ComputerConstants.itemCategoryId: itemCategoryId,
      ComputerConstants.itemSubCategoryId: itemSubCategoryId,
      ComputerConstants.itemImages: itemImages,
      ComputerConstants.itemTitle: itemTitle,
      ComputerConstants.itemProvince: itemProvince,
      ComputerConstants.itemRegion: itemRegion,
      ComputerConstants.itemTotalPrice: itemTotalPrice,
      ComputerConstants.itemPriceType: itemPriceType,
      ComputerConstants.itemModel: itemModel,
      ComputerConstants.itemCPU: itemCPU,
      ComputerConstants.itemGeneration: itemGeneration,
      ComputerConstants.itemGraphic: itemGraphic,
      ComputerConstants.itemRam: itemRam,
      ComputerConstants.itemStorage: itemStorage,
      ComputerConstants.itemDescription: itemDescription,
      ComputerConstants.itemStatus: itemStatus,
      ComputerConstants.itemChangable: itemChangable,
      ComputerConstants.itemPublishStatus: itemPublishStatus,
      ComputerConstants.itemSoldStatus: itemSoldStatus,
      ComputerConstants.itemCreatedAt: itemCreatedAt,
      ComputerConstants.itemUpdatedAt: itemUpdatedAt,
    };
  }

  Map<String, dynamic> toMapItemModel() {
    return <String, dynamic>{
      ComputerConstants.itemId: itemId,
      ComputerConstants.itemCustomerId: itemCustomerId,
      ComputerConstants.itemCategoryId: itemCategoryId,
      ComputerConstants.itemSubCategoryId: itemSubCategoryId,
      ComputerConstants.itemImages: itemImages,
      ComputerConstants.itemTitle: itemTitle,
      ComputerConstants.itemProvince: itemProvince,
      ComputerConstants.itemRegion: itemRegion,
      ComputerConstants.itemTotalPrice: itemTotalPrice,
      ComputerConstants.itemPriceType: itemPriceType,
      ComputerConstants.itemPublishStatus: itemPublishStatus,
      ComputerConstants.itemSoldStatus: itemSoldStatus,
      ComputerConstants.itemCreatedAt: itemCreatedAt,
      ComputerConstants.itemUpdatedAt: itemUpdatedAt,
    };
  }

  factory ComputerModel.fromMap(Map<String, dynamic> map) {
    return ComputerModel(
      itemId: map[ComputerConstants.itemId] != null
          ? map[ComputerConstants.itemId] as int
          : null,
      itemCustomerId: map[ComputerConstants.itemCustomerId] != null
          ? map[ComputerConstants.itemCustomerId] as String
          : null,
      itemCategoryId: map[ComputerConstants.itemCategoryId] != null
          ? map[ComputerConstants.itemCategoryId] as int
          : null,
      itemSubCategoryId: map[ComputerConstants.itemSubCategoryId] != null
          ? map[ComputerConstants.itemSubCategoryId] as int
          : null,
      itemImages: map[ComputerConstants.itemImages] != null
          ? List<String>.from(
              (map[ComputerConstants.itemImages] as List<String>))
          : null,
      itemTitle: map[ComputerConstants.itemTitle] != null
          ? map[ComputerConstants.itemTitle] as String
          : null,
      itemProvince: map[ComputerConstants.itemProvince] != null
          ? map[ComputerConstants.itemProvince] as int
          : null,
      itemRegion: map[ComputerConstants.itemRegion] != null
          ? map[ComputerConstants.itemRegion] as String
          : null,
      itemTotalPrice: map[ComputerConstants.itemTotalPrice] != null
          ? map[ComputerConstants.itemTotalPrice] as String
          : null,
      itemPriceType: map[ComputerConstants.itemPriceType] != null
          ? map[ComputerConstants.itemPriceType] as int
          : null,
      itemModel: map[ComputerConstants.itemModel] != null
          ? map[ComputerConstants.itemModel] as String
          : null,
      itemCPU: map[ComputerConstants.itemCPU] != null
          ? map[ComputerConstants.itemCPU] as String
          : null,
      itemGeneration: map[ComputerConstants.itemGeneration] != null
          ? map[ComputerConstants.itemGeneration] as int
          : null,
      itemGraphic: map[ComputerConstants.itemGraphic] != null
          ? map[ComputerConstants.itemGraphic] as String
          : null,
      itemRam: map[ComputerConstants.itemRam] != null
          ? map[ComputerConstants.itemRam] as String
          : null,
      itemStorage: map[ComputerConstants.itemStorage] != null
          ? map[ComputerConstants.itemStorage] as String
          : null,
      itemDescription: map[ComputerConstants.itemDescription] != null
          ? map[ComputerConstants.itemDescription] as String
          : null,
      itemStatus: map[ComputerConstants.itemStatus] != null
          ? map[ComputerConstants.itemStatus] as int
          : null,
      itemChangable: map[ComputerConstants.itemChangable] != null
          ? map[ComputerConstants.itemChangable] as bool
          : null,
      itemPublishStatus: map[ComputerConstants.itemPublishStatus] != null
          ? map[ComputerConstants.itemPublishStatus] as String
          : null,
      itemSoldStatus: map[ComputerConstants.itemSoldStatus] != null
          ? map[ComputerConstants.itemSoldStatus] as String
          : null,
      itemCreatedAt: map[ComputerConstants.itemCreatedAt] != null
          ? map[ComputerConstants.itemCreatedAt] as String
          : null,
      itemUpdatedAt: map[ComputerConstants.itemUpdatedAt] != null
          ? map[ComputerConstants.itemUpdatedAt] as String
          : null,
    );
  }

  factory ComputerModel.fromMapItemModel(Map<String, dynamic> map) {
    return ComputerModel.itemModel(
      itemId: map[ComputerConstants.itemId] != null
          ? map[ComputerConstants.itemId] as int
          : null,
      itemCustomerId: map[ComputerConstants.itemCustomerId] != null
          ? map[ComputerConstants.itemCustomerId] as String
          : null,
      itemCategoryId: map[ComputerConstants.itemCategoryId] != null
          ? map[ComputerConstants.itemCategoryId] as int
          : null,
      itemSubCategoryId: map[ComputerConstants.itemSubCategoryId] != null
          ? map[ComputerConstants.itemSubCategoryId] as int
          : null,
      itemImages: map[ComputerConstants.itemImages] != null
          ? List<String>.from(
              (map[ComputerConstants.itemImages] as List<String>))
          : null,
      itemTitle: map[ComputerConstants.itemTitle] != null
          ? map[ComputerConstants.itemTitle] as String
          : null,
      itemProvince: map[ComputerConstants.itemProvince] != null
          ? map[ComputerConstants.itemProvince] as int
          : null,
      itemRegion: map[ComputerConstants.itemRegion] != null
          ? map[ComputerConstants.itemRegion] as String
          : null,
      itemTotalPrice: map[ComputerConstants.itemTotalPrice] != null
          ? map[ComputerConstants.itemTotalPrice] as String
          : null,
      itemPriceType: map[ComputerConstants.itemPriceType] != null
          ? map[ComputerConstants.itemPriceType] as int
          : null,
      itemPublishStatus: map[ComputerConstants.itemPublishStatus] != null
          ? map[ComputerConstants.itemPublishStatus] as String
          : null,
      itemSoldStatus: map[ComputerConstants.itemSoldStatus] != null
          ? map[ComputerConstants.itemSoldStatus] as String
          : null,
      itemCreatedAt: map[ComputerConstants.itemCreatedAt] != null
          ? map[ComputerConstants.itemCreatedAt] as String
          : null,
      itemUpdatedAt: map[ComputerConstants.itemUpdatedAt] != null
          ? map[ComputerConstants.itemUpdatedAt] as String
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ComputerModel.fromJson(String source) =>
      ComputerModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ComputerModel(itemId: $itemId, itemCustomerId: $itemCustomerId, itemCategoryId: $itemCategoryId, itemSubCategoryId: $itemSubCategoryId, itemImages: $itemImages, itemTitle: $itemTitle, itemProvince: $itemProvince, itemRegion: $itemRegion, itemTotalPrice: $itemTotalPrice, itemPriceType: $itemPriceType, itemModel: $itemModel, itemCPU: $itemCPU, itemGeneration: $itemGeneration, itemGraphic: $itemGraphic, itemRam: $itemRam, itemStorage: $itemStorage, itemDescription: $itemDescription, itemStatus: $itemStatus, itemChangable: $itemChangable, itemPublishStatus: $itemPublishStatus, itemSoldStatus: $itemSoldStatus, itemCreatedAt: $itemCreatedAt, itemUpdatedAt: $itemUpdatedAt)';
  }

  @override
  bool operator ==(covariant ComputerModel other) {
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
        other.itemModel == itemModel &&
        other.itemCPU == itemCPU &&
        other.itemGeneration == itemGeneration &&
        other.itemGraphic == itemGraphic &&
        other.itemRam == itemRam &&
        other.itemStorage == itemStorage &&
        other.itemDescription == itemDescription &&
        other.itemStatus == itemStatus &&
        other.itemChangable == itemChangable &&
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
        itemModel.hashCode ^
        itemCPU.hashCode ^
        itemGeneration.hashCode ^
        itemGraphic.hashCode ^
        itemRam.hashCode ^
        itemStorage.hashCode ^
        itemDescription.hashCode ^
        itemStatus.hashCode ^
        itemChangable.hashCode ^
        itemPublishStatus.hashCode ^
        itemSoldStatus.hashCode ^
        itemCreatedAt.hashCode ^
        itemUpdatedAt.hashCode;
  }
}
