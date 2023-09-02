import 'dart:convert';

import 'package:divar/repositories/otp_code_repository/constants/constants.dart';

class OTPCodeModel {
  final String? otpCodeId;
  final String? otpCodeCustomerPhoneNumber;
  final int? otpCode;
  final int? otpCodeTimestamp;
  final String? otpCodeappSignature;
  final bool? otpCodestatus;

  OTPCodeModel({
    this.otpCodeId,
    this.otpCodeCustomerPhoneNumber,
    this.otpCode,
    this.otpCodeTimestamp,
    this.otpCodeappSignature,
    this.otpCodestatus,
  });

  OTPCodeModel copyWith({
    String? otpCodeId,
    String? otpCodeCustomerPhoneNumber,
    int? otpCode,
    int? otpCodeTimestamp,
    String? otpCodeappSignature,
    bool? otpCodestatus,
  }) {
    return OTPCodeModel(
      otpCodeId: otpCodeId ?? this.otpCodeId,
      otpCodeCustomerPhoneNumber:
          otpCodeCustomerPhoneNumber ?? this.otpCodeCustomerPhoneNumber,
      otpCode: otpCode ?? this.otpCode,
      otpCodeTimestamp: otpCodeTimestamp ?? this.otpCodeTimestamp,
      otpCodeappSignature: otpCodeappSignature ?? this.otpCodeappSignature,
      otpCodestatus: otpCodestatus ?? this.otpCodestatus,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      OTPCodeConstants.otpCodeId: otpCodeId,
      OTPCodeConstants.otpCodeCustomerPhoneNumber: otpCodeCustomerPhoneNumber,
      OTPCodeConstants.otpCode: otpCode,
      OTPCodeConstants.otpCodeTimestamp: otpCodeTimestamp,
      OTPCodeConstants.otpCodeAppSignature: otpCodeappSignature,
      OTPCodeConstants.otpCodeStatus: otpCodestatus,
    };
  }

  factory OTPCodeModel.fromMap(Map<String, dynamic> map) {
    return OTPCodeModel(
      otpCodeId: map[OTPCodeConstants.otpCodeId] != null
          ? map[OTPCodeConstants.otpCodeId] as String
          : null,
      otpCodeCustomerPhoneNumber:
          map[OTPCodeConstants.otpCodeCustomerPhoneNumber] != null
              ? map[OTPCodeConstants.otpCodeCustomerPhoneNumber] as String
              : null,
      otpCode: map[OTPCodeConstants.otpCode] != null
          ? map[OTPCodeConstants.otpCode] as int
          : null,
      otpCodeTimestamp: map[OTPCodeConstants.otpCodeTimestamp] != null
          ? map[OTPCodeConstants.otpCodeTimestamp] as int
          : null,
      otpCodeappSignature: map[OTPCodeConstants.otpCodeAppSignature] != null
          ? map[OTPCodeConstants.otpCodeAppSignature] as String
          : null,
      otpCodestatus: map[OTPCodeConstants.otpCodeStatus] != null
          ? map[OTPCodeConstants.otpCodeStatus] as bool
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory OTPCodeModel.fromJson(String source) =>
      OTPCodeModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'OTPCodeModel(otpCodeId: $otpCodeId, otpCodeCustomerPhoneNumber: $otpCodeCustomerPhoneNumber, otpCode: $otpCode, otpCodetimestamp: $otpCodeTimestamp, otpCodeappSignature: $otpCodeappSignature, otpCodestatus: $otpCodestatus)';
  }

  @override
  bool operator ==(covariant OTPCodeModel other) {
    if (identical(this, other)) return true;

    return other.otpCodeId == otpCodeId &&
        other.otpCodeCustomerPhoneNumber == otpCodeCustomerPhoneNumber &&
        other.otpCode == otpCode &&
        other.otpCodeTimestamp == otpCodeTimestamp &&
        other.otpCodeappSignature == otpCodeappSignature &&
        other.otpCodestatus == otpCodestatus;
  }

  @override
  int get hashCode {
    return otpCodeId.hashCode ^
        otpCodeCustomerPhoneNumber.hashCode ^
        otpCode.hashCode ^
        otpCodeTimestamp.hashCode ^
        otpCodeappSignature.hashCode ^
        otpCodestatus.hashCode;
  }
}
