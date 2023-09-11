import 'dart:convert';

import 'package:divar/repositories/job_announcements_respository/constants/constants.dart';
import 'package:flutter/foundation.dart';

class JobAnnouncementModel {
  final int? itemId;
  final String? itemCustomerId;
  final int? itemCategoryId;
  final int? itemSubCategoryId;
  final List<String>? itemImages;
  final String? itemTitle;
  final String? itemLocation;
  final String? itemOrganization;
  final int? itemHolderCount;
  final String? itemGender;
  final String? itemWorkingTime;
  final String? itemSallaryPrice;
  final String? itemConditionsOfEmployment;
  final String? itemAge;
  final String? itemWorkExperience;
  final String? itemContractPeriod;
  final String? itemEducation;
  final String? itemVacancyNumber;
  final String? itemApplicationDeadline;
  final String? itemDescription;
  final String? itemHiredStatus;
  final String? itemPublishStatus;
  final String? itemCreatedAt;
  final String? itemUpdatedAt;

  JobAnnouncementModel({
    required this.itemId,
    required this.itemCustomerId,
    required this.itemCategoryId,
    required this.itemSubCategoryId,
    required this.itemImages,
    required this.itemTitle,
    required this.itemLocation,
    required this.itemOrganization,
    required this.itemHolderCount,
    required this.itemGender,
    required this.itemWorkingTime,
    required this.itemSallaryPrice,
    required this.itemConditionsOfEmployment,
    required this.itemAge,
    required this.itemWorkExperience,
    required this.itemContractPeriod,
    required this.itemEducation,
    required this.itemVacancyNumber,
    required this.itemApplicationDeadline,
    required this.itemDescription,
    required this.itemHiredStatus,
    required this.itemPublishStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  JobAnnouncementModel.itemModel({
    required this.itemId,
    required this.itemCustomerId,
    required this.itemCategoryId,
    required this.itemSubCategoryId,
    required this.itemImages,
    required this.itemTitle,
    required this.itemLocation,
    this.itemOrganization = '',
    this.itemHolderCount = -1,
    this.itemGender = '',
    this.itemWorkingTime = '',
    this.itemSallaryPrice = '',
    this.itemConditionsOfEmployment = '',
    this.itemAge = '',
    this.itemWorkExperience = '',
    this.itemContractPeriod = '',
    this.itemEducation = '',
    this.itemVacancyNumber = '',
    this.itemApplicationDeadline = '',
    this.itemDescription = '',
    required this.itemHiredStatus,
    required this.itemPublishStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  JobAnnouncementModel.jobAnnouncementModel({
    required this.itemId,
    required this.itemCustomerId,
    required this.itemCategoryId,
    required this.itemSubCategoryId,
    required this.itemImages,
    required this.itemTitle,
    required this.itemLocation,
    required this.itemOrganization,
    required this.itemHolderCount,
    required this.itemGender,
    required this.itemWorkingTime,
    required this.itemSallaryPrice,
    required this.itemConditionsOfEmployment,
    required this.itemAge,
    required this.itemWorkExperience,
    required this.itemContractPeriod,
    required this.itemEducation,
    required this.itemVacancyNumber,
    required this.itemApplicationDeadline,
    required this.itemDescription,
    required this.itemHiredStatus,
    required this.itemPublishStatus,
    required this.itemCreatedAt,
    required this.itemUpdatedAt,
  });

  JobAnnouncementModel copyWith({
    int? itemId,
    String? itemCustomerId,
    int? itemCategoryId,
    int? itemSubCategoryId,
    List<String>? itemImages,
    String? itemTitle,
    String? itemLocation,
    String? itemOrganization,
    int? itemHolderCount,
    String? itemGender,
    String? itemWorkingTime,
    String? itemSallaryPrice,
    String? itemConditionsOfEmployment,
    String? itemAge,
    String? itemWorkExperience,
    String? itemContractPeriod,
    String? itemEducation,
    String? itemVacancyNumber,
    String? itemApplicationDeadline,
    String? itemDescription,
    String? itemHiredStatus,
    String? itemPublishStatus,
    String? itemSoldStatus,
    String? itemCreatedAt,
    String? itemUpdatedAt,
  }) {
    return JobAnnouncementModel(
      itemId: itemId ?? this.itemId,
      itemCustomerId: itemCustomerId ?? this.itemCustomerId,
      itemCategoryId: itemCategoryId ?? this.itemCategoryId,
      itemSubCategoryId: itemSubCategoryId ?? this.itemSubCategoryId,
      itemImages: itemImages ?? this.itemImages,
      itemTitle: itemTitle ?? this.itemTitle,
      itemLocation: itemLocation ?? this.itemLocation,
      itemOrganization: itemOrganization ?? this.itemOrganization,
      itemHolderCount: itemHolderCount ?? this.itemHolderCount,
      itemGender: itemGender ?? this.itemGender,
      itemWorkingTime: itemWorkingTime ?? this.itemWorkingTime,
      itemSallaryPrice: itemSallaryPrice ?? this.itemSallaryPrice,
      itemConditionsOfEmployment:
          itemConditionsOfEmployment ?? this.itemConditionsOfEmployment,
      itemAge: itemAge ?? this.itemAge,
      itemWorkExperience: itemWorkExperience ?? this.itemWorkExperience,
      itemContractPeriod: itemContractPeriod ?? this.itemContractPeriod,
      itemEducation: itemEducation ?? this.itemEducation,
      itemVacancyNumber: itemVacancyNumber ?? this.itemVacancyNumber,
      itemApplicationDeadline:
          itemApplicationDeadline ?? this.itemApplicationDeadline,
      itemDescription: itemDescription ?? this.itemDescription,
      itemHiredStatus: itemHiredStatus ?? this.itemHiredStatus,
      itemPublishStatus: itemPublishStatus ?? this.itemPublishStatus,
      itemCreatedAt: itemCreatedAt ?? this.itemCreatedAt,
      itemUpdatedAt: itemUpdatedAt ?? this.itemUpdatedAt,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      JobAnnouncementsConstants.itemId: itemId,
      JobAnnouncementsConstants.itemCustomerId: itemCustomerId,
      JobAnnouncementsConstants.itemCategoryId: itemCategoryId,
      JobAnnouncementsConstants.itemSubCategoryId: itemSubCategoryId,
      JobAnnouncementsConstants.itemImages: itemImages,
      JobAnnouncementsConstants.itemTitle: itemTitle,
      JobAnnouncementsConstants.itemLocation: itemLocation,
      JobAnnouncementsConstants.itemOrganization: itemOrganization,
      JobAnnouncementsConstants.itemHolderCount: itemHolderCount,
      JobAnnouncementsConstants.itemGender: itemGender,
      JobAnnouncementsConstants.itemWorkingTime: itemWorkingTime,
      JobAnnouncementsConstants.itemSallaryPrice: itemSallaryPrice,
      JobAnnouncementsConstants.itemConditionsOfEmployment:
          itemConditionsOfEmployment,
      JobAnnouncementsConstants.itemAge: itemAge,
      JobAnnouncementsConstants.itemWorkExperience: itemWorkExperience,
      JobAnnouncementsConstants.itemContractPeriod: itemContractPeriod,
      JobAnnouncementsConstants.itemEducation: itemEducation,
      JobAnnouncementsConstants.itemVacancyNumber: itemVacancyNumber,
      JobAnnouncementsConstants.itemApplicationDeadline:
          itemApplicationDeadline,
      JobAnnouncementsConstants.itemDescription: itemDescription,
      JobAnnouncementsConstants.itemHiredStatus: itemHiredStatus,
      JobAnnouncementsConstants.itemPublishStatus: itemPublishStatus,
      JobAnnouncementsConstants.itemCreatedAt: itemCreatedAt,
      JobAnnouncementsConstants.itemUpdatedAt: itemUpdatedAt,
    };
  }

  Map<String, dynamic> toMapItemModel() {
    return <String, dynamic>{
      JobAnnouncementsConstants.itemId: itemId,
      JobAnnouncementsConstants.itemCustomerId: itemCustomerId,
      JobAnnouncementsConstants.itemCategoryId: itemCategoryId,
      JobAnnouncementsConstants.itemSubCategoryId: itemSubCategoryId,
      JobAnnouncementsConstants.itemImages: itemImages,
      JobAnnouncementsConstants.itemTitle: itemTitle,
      JobAnnouncementsConstants.itemLocation: itemLocation,
      JobAnnouncementsConstants.itemHiredStatus: itemHiredStatus,
      JobAnnouncementsConstants.itemPublishStatus: itemPublishStatus,
      JobAnnouncementsConstants.itemCreatedAt: itemCreatedAt,
      JobAnnouncementsConstants.itemUpdatedAt: itemUpdatedAt,
    };
  }

  factory JobAnnouncementModel.fromMap(Map<Object?, Object?> map) {
    return JobAnnouncementModel(
      itemId: map[JobAnnouncementsConstants.itemId] != null
          ? map[JobAnnouncementsConstants.itemId] as int
          : null,
      itemCustomerId: map[JobAnnouncementsConstants.itemCustomerId] != null
          ? map[JobAnnouncementsConstants.itemCustomerId] as String
          : null,
      itemCategoryId: map[JobAnnouncementsConstants.itemCategoryId] != null
          ? map[JobAnnouncementsConstants.itemCategoryId] as int
          : null,
      itemSubCategoryId:
          map[JobAnnouncementsConstants.itemSubCategoryId] != null
              ? map[JobAnnouncementsConstants.itemSubCategoryId] as int
              : null,
      itemImages: map[JobAnnouncementsConstants.itemImages] != null
          ? List<String>.from(
              (map[JobAnnouncementsConstants.itemImages] as List<String>))
          : null,
      itemTitle: map[JobAnnouncementsConstants.itemTitle] != null
          ? map[JobAnnouncementsConstants.itemTitle] as String
          : null,
      itemLocation: map[JobAnnouncementsConstants.itemLocation] != null
          ? map[JobAnnouncementsConstants.itemLocation] as String
          : null,
      itemOrganization: map[JobAnnouncementsConstants.itemOrganization] != null
          ? map[JobAnnouncementsConstants.itemOrganization] as String
          : null,
      itemHolderCount: map[JobAnnouncementsConstants.itemHolderCount] != null
          ? map[JobAnnouncementsConstants.itemHolderCount] as int
          : null,
      itemGender: map[JobAnnouncementsConstants.itemGender] != null
          ? map[JobAnnouncementsConstants.itemGender] as String
          : null,
      itemWorkingTime: map[JobAnnouncementsConstants.itemWorkingTime] != null
          ? map[JobAnnouncementsConstants.itemWorkingTime] as String
          : null,
      itemSallaryPrice: map[JobAnnouncementsConstants.itemSallaryPrice] != null
          ? map[JobAnnouncementsConstants.itemSallaryPrice] as String
          : null,
      itemConditionsOfEmployment:
          map[JobAnnouncementsConstants.itemConditionsOfEmployment] != null
              ? map[JobAnnouncementsConstants.itemConditionsOfEmployment]
                  as String
              : null,
      itemAge: map[JobAnnouncementsConstants.itemAge] != null
          ? map[JobAnnouncementsConstants.itemAge] as String
          : null,
      itemWorkExperience:
          map[JobAnnouncementsConstants.itemWorkExperience] != null
              ? map[JobAnnouncementsConstants.itemWorkExperience] as String
              : null,
      itemContractPeriod:
          map[JobAnnouncementsConstants.itemContractPeriod] != null
              ? map[JobAnnouncementsConstants.itemContractPeriod] as String
              : null,
      itemEducation: map[JobAnnouncementsConstants.itemEducation] != null
          ? map[JobAnnouncementsConstants.itemEducation] as String
          : null,
      itemVacancyNumber:
          map[JobAnnouncementsConstants.itemVacancyNumber] != null
              ? map[JobAnnouncementsConstants.itemVacancyNumber] as String
              : null,
      itemApplicationDeadline:
          map[JobAnnouncementsConstants.itemApplicationDeadline] != null
              ? map[JobAnnouncementsConstants.itemApplicationDeadline] as String
              : null,
      itemDescription: map[JobAnnouncementsConstants.itemDescription] != null
          ? map[JobAnnouncementsConstants.itemDescription] as String
          : null,
      itemHiredStatus: map[JobAnnouncementsConstants.itemHiredStatus] != null
          ? map[JobAnnouncementsConstants.itemHiredStatus] as String
          : null,
      itemPublishStatus:
          map[JobAnnouncementsConstants.itemPublishStatus] != null
              ? map[JobAnnouncementsConstants.itemPublishStatus] as String
              : null,
      itemCreatedAt: map[JobAnnouncementsConstants.itemCreatedAt] != null
          ? map[JobAnnouncementsConstants.itemCreatedAt] as String
          : null,
      itemUpdatedAt: map[JobAnnouncementsConstants.itemUpdatedAt] != null
          ? map[JobAnnouncementsConstants.itemUpdatedAt] as String
          : null,
    );
  }

  factory JobAnnouncementModel.fromMapItemModel(Map<Object?, Object?> map) {
    return JobAnnouncementModel.itemModel(
      itemId: map[JobAnnouncementsConstants.itemId] != null
          ? map[JobAnnouncementsConstants.itemId] as int
          : null,
      itemCustomerId: map[JobAnnouncementsConstants.itemCustomerId] != null
          ? map[JobAnnouncementsConstants.itemCustomerId] as String
          : null,
      itemCategoryId: map[JobAnnouncementsConstants.itemCategoryId] != null
          ? map[JobAnnouncementsConstants.itemCategoryId] as int
          : null,
      itemSubCategoryId:
          map[JobAnnouncementsConstants.itemSubCategoryId] != null
              ? map[JobAnnouncementsConstants.itemSubCategoryId] as int
              : null,
      itemImages: map[JobAnnouncementsConstants.itemImages] != null
          ? List<String>.from(
              (map[JobAnnouncementsConstants.itemImages] as List<String>))
          : null,
      itemTitle: map[JobAnnouncementsConstants.itemTitle] != null
          ? map[JobAnnouncementsConstants.itemTitle] as String
          : null,
      itemLocation: map[JobAnnouncementsConstants.itemLocation] != null
          ? map[JobAnnouncementsConstants.itemLocation] as String
          : null,
      itemHiredStatus: map[JobAnnouncementsConstants.itemHiredStatus] != null
          ? map[JobAnnouncementsConstants.itemHiredStatus] as String
          : null,
      itemPublishStatus:
          map[JobAnnouncementsConstants.itemPublishStatus] != null
              ? map[JobAnnouncementsConstants.itemPublishStatus] as String
              : null,
      itemCreatedAt: map[JobAnnouncementsConstants.itemCreatedAt] != null
          ? map[JobAnnouncementsConstants.itemCreatedAt] as String
          : null,
      itemUpdatedAt: map[JobAnnouncementsConstants.itemUpdatedAt] != null
          ? map[JobAnnouncementsConstants.itemUpdatedAt] as String
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory JobAnnouncementModel.fromJson(String source) =>
      JobAnnouncementModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'JobAnnouncementModel(itemId: $itemId, itemCustomerId: $itemCustomerId, itemCategoryId: $itemCategoryId, itemSubCategoryId: $itemSubCategoryId, itemImages: $itemImages, itemTitle: $itemTitle, itemLocation: $itemLocation, itemOrganization: $itemOrganization, itemHolderCount: $itemHolderCount, itemGender: $itemGender, itemWorkingTime: $itemWorkingTime, itemSallaryPrice: $itemSallaryPrice, itemConditionsOfEmployment: $itemConditionsOfEmployment, itemAge: $itemAge, itemWorkExperience: $itemWorkExperience, itemContractPeriod: $itemContractPeriod, itemEducation: $itemEducation, itemVacancyNumber: $itemVacancyNumber, itemApplicationDeadline: $itemApplicationDeadline, itemDescription: $itemDescription, itemHiredStatus: $itemHiredStatus, itemPublishStatus: $itemPublishStatus, itemCreatedAt: $itemCreatedAt, itemUpdatedAt: $itemUpdatedAt)';
  }

  @override
  bool operator ==(covariant JobAnnouncementModel other) {
    if (identical(this, other)) return true;

    return other.itemId == itemId &&
        other.itemCustomerId == itemCustomerId &&
        other.itemCategoryId == itemCategoryId &&
        other.itemSubCategoryId == itemSubCategoryId &&
        listEquals(other.itemImages, itemImages) &&
        other.itemTitle == itemTitle &&
        other.itemLocation == itemLocation &&
        other.itemOrganization == itemOrganization &&
        other.itemHolderCount == itemHolderCount &&
        other.itemGender == itemGender &&
        other.itemWorkingTime == itemWorkingTime &&
        other.itemSallaryPrice == itemSallaryPrice &&
        other.itemConditionsOfEmployment == itemConditionsOfEmployment &&
        other.itemAge == itemAge &&
        other.itemWorkExperience == itemWorkExperience &&
        other.itemContractPeriod == itemContractPeriod &&
        other.itemEducation == itemEducation &&
        other.itemVacancyNumber == itemVacancyNumber &&
        other.itemApplicationDeadline == itemApplicationDeadline &&
        other.itemDescription == itemDescription &&
        other.itemHiredStatus == itemHiredStatus &&
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
        itemLocation.hashCode ^
        itemOrganization.hashCode ^
        itemHolderCount.hashCode ^
        itemGender.hashCode ^
        itemWorkingTime.hashCode ^
        itemSallaryPrice.hashCode ^
        itemConditionsOfEmployment.hashCode ^
        itemAge.hashCode ^
        itemWorkExperience.hashCode ^
        itemContractPeriod.hashCode ^
        itemEducation.hashCode ^
        itemVacancyNumber.hashCode ^
        itemApplicationDeadline.hashCode ^
        itemDescription.hashCode ^
        itemHiredStatus.hashCode ^
        itemPublishStatus.hashCode ^
        itemCreatedAt.hashCode ^
        itemUpdatedAt.hashCode;
  }
}
