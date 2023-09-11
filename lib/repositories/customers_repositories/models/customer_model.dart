import 'dart:convert';

import 'package:divar/repositories/customers_repositories/constants/constants.dart';

class CustomerModel {
  final String? customerId;
  final String? customerDeviceToken;
  final int? customerProfileImageId;
  final String? customerProfileImageUrl;
  final String? customerFullName;
  final String? customerAccountType;
  final String? customerStoreName;
  final String? customerStoreAddress;
  final String? customerProvince;
  final String? customerRegion;
  final String? customerPhoneNumber;
  final bool? customerShowInformation;
  final bool? customerOnlineStatus;

  CustomerModel({
    this.customerId,
    this.customerDeviceToken,
    this.customerProfileImageId,
    this.customerProfileImageUrl,
    this.customerFullName,
    this.customerAccountType,
    this.customerStoreName,
    this.customerStoreAddress,
    this.customerProvince,
    this.customerRegion,
    this.customerPhoneNumber,
    this.customerShowInformation,
    this.customerOnlineStatus,
  });

  CustomerModel copyWith({
    String? customerId,
    String? customerDeviceToken,
    int? customerProfileImageId,
    String? customerProfileImageUrl,
    String? customerFullName,
    String? customerAccountType,
    String? customerStoreName,
    String? customerStoreAddress,
    String? customerProvince,
    String? customerRegion,
    String? customerPhoneNumber,
    bool? customerShowInformation,
    bool? customerOnlineStatus,
  }) {
    return CustomerModel(
      customerId: customerId ?? this.customerId,
      customerDeviceToken: customerDeviceToken ?? this.customerDeviceToken,
      customerProfileImageId:
          customerProfileImageId ?? this.customerProfileImageId,
      customerProfileImageUrl:
          customerProfileImageUrl ?? this.customerProfileImageUrl,
      customerFullName: customerFullName ?? this.customerFullName,
      customerAccountType: customerAccountType ?? this.customerAccountType,
      customerStoreName: customerStoreName ?? this.customerStoreName,
      customerStoreAddress: customerStoreAddress ?? this.customerStoreAddress,
      customerProvince: customerProvince ?? this.customerProvince,
      customerRegion: customerRegion ?? this.customerRegion,
      customerPhoneNumber: customerPhoneNumber ?? this.customerPhoneNumber,
      customerShowInformation:
          customerShowInformation ?? this.customerShowInformation,
      customerOnlineStatus: customerOnlineStatus ?? this.customerOnlineStatus,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      CustomerConstants.customerId: customerId,
      CustomerConstants.customerDeviceToken: customerDeviceToken,
      CustomerConstants.customerProfileImageId: customerProfileImageId,
      CustomerConstants.customerProfileImageUrl: customerProfileImageUrl,
      CustomerConstants.customerFullName: customerFullName,
      CustomerConstants.customerAccountType: customerAccountType,
      CustomerConstants.customerStoreName: customerStoreName,
      CustomerConstants.customerStoreAddress: customerStoreAddress,
      CustomerConstants.customerProvince: customerProvince,
      CustomerConstants.customerRegion: customerRegion,
      CustomerConstants.customerPhoneNumber: customerPhoneNumber,
      CustomerConstants.customerShowInformation: customerShowInformation,
      CustomerConstants.customerOnlineStatus: customerOnlineStatus,
    };
  }

  factory CustomerModel.fromMap(Map<Object?, Object?> map) {
    return CustomerModel(
      customerId: map[CustomerConstants.customerId] != null
          ? map[CustomerConstants.customerId] as String
          : null,
      customerDeviceToken: map[CustomerConstants.customerDeviceToken] != null
          ? map[CustomerConstants.customerDeviceToken] as String
          : null,
      customerProfileImageId:
          map[CustomerConstants.customerProfileImageId] != null
              ? map[CustomerConstants.customerProfileImageId] as int
              : null,
      customerProfileImageUrl:
          map[CustomerConstants.customerProfileImageUrl] != null
              ? map[CustomerConstants.customerProfileImageUrl] as String
              : null,
      customerFullName: map[CustomerConstants.customerFullName] != null
          ? map[CustomerConstants.customerFullName] as String
          : null,
      customerAccountType: map[CustomerConstants.customerAccountType] != null
          ? map[CustomerConstants.customerAccountType] as String
          : null,
      customerStoreName: map[CustomerConstants.customerStoreName] != null
          ? map[CustomerConstants.customerStoreName] as String
          : null,
      customerStoreAddress: map[CustomerConstants.customerStoreAddress] != null
          ? map[CustomerConstants.customerStoreAddress] as String
          : null,
      customerProvince: map[CustomerConstants.customerProvince] != null
          ? map[CustomerConstants.customerProvince] as String
          : null,
      customerRegion: map[CustomerConstants.customerRegion] != null
          ? map[CustomerConstants.customerRegion] as String
          : null,
      customerPhoneNumber: map[CustomerConstants.customerPhoneNumber] != null
          ? map[CustomerConstants.customerPhoneNumber] as String
          : null,
      customerShowInformation:
          map[CustomerConstants.customerShowInformation] != null
              ? map[CustomerConstants.customerShowInformation] as bool
              : null,
      customerOnlineStatus: map[CustomerConstants.customerOnlineStatus] != null
          ? map[CustomerConstants.customerOnlineStatus] as bool
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory CustomerModel.fromJson(String source) =>
      CustomerModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'CustomerModel(customerId: $customerId, customerDeviceToken: $customerDeviceToken, customerProfileImageId: $customerProfileImageId, customerProfileImageUrl: $customerProfileImageUrl, customerFullName: $customerFullName, customerAccountType: $customerAccountType, customerStoreName: $customerStoreName, customerStoreAddress: $customerStoreAddress, customerProvince: $customerProvince, customerRegion: $customerRegion, customerPhoneNumber: $customerPhoneNumber, customerShowInformation: $customerShowInformation, customerOnlineStatus: $customerOnlineStatus)';
  }

  @override
  bool operator ==(covariant CustomerModel other) {
    if (identical(this, other)) return true;

    return other.customerId == customerId &&
        other.customerDeviceToken == customerDeviceToken &&
        other.customerProfileImageId == customerProfileImageId &&
        other.customerProfileImageUrl == customerProfileImageUrl &&
        other.customerFullName == customerFullName &&
        other.customerAccountType == customerAccountType &&
        other.customerStoreName == customerStoreName &&
        other.customerStoreAddress == customerStoreAddress &&
        other.customerProvince == customerProvince &&
        other.customerRegion == customerRegion &&
        other.customerPhoneNumber == customerPhoneNumber &&
        other.customerShowInformation == customerShowInformation &&
        other.customerOnlineStatus == customerOnlineStatus;
  }

  @override
  int get hashCode {
    return customerId.hashCode ^
        customerDeviceToken.hashCode ^
        customerProfileImageId.hashCode ^
        customerProfileImageUrl.hashCode ^
        customerFullName.hashCode ^
        customerAccountType.hashCode ^
        customerStoreName.hashCode ^
        customerStoreAddress.hashCode ^
        customerProvince.hashCode ^
        customerRegion.hashCode ^
        customerPhoneNumber.hashCode ^
        customerShowInformation.hashCode ^
        customerOnlineStatus.hashCode;
  }
}
