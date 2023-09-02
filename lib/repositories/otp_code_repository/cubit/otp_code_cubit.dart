import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:divar/packages/firebase/constants/constants.dart';
import 'package:divar/packages/firebase/realtime_database/realtime_database.dart';
import 'package:divar/repositories/otp_code_repository/constants/constants.dart';
import 'package:divar/repositories/otp_code_repository/models/otp_code_model.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:meta/meta.dart';
import 'package:sms_otp_auto_verify/sms_otp_auto_verify.dart';

part 'otp_code_state.dart';

class OtpCodeCubit extends Cubit<OtpCodeState> {
  late final DatabaseReference _databaseReference =
      FirebaseRealtimeDatabase.getInstance()!;

  OtpCodeCubit() : super(OtpCodeInitial());

  Future<void> emitRequestOTPCode(
      {required String otpCodeId, required String customerPhoneNumber}) async {
    try {
      emit(OtpCodeLoading());
      var otpCodes = await _databaseReference
          .child('${FirebaseConstants.otpCodes}/$otpCodeId')
          .get();
      if (otpCodes.exists) {
        emit(OtpCodeCodeExists(true));
      } else {
        emit(OtpCodeCodeExists(false));
        emitAddOTP(customerPhoneNumber: customerPhoneNumber);
      }
    } on Exception catch (error) {
      emit(OtpCodeCodeError(error.toString()));
    }
  }

  Future<void> emitAddOTP({required String customerPhoneNumber}) async {
    try {
      emit(OtpCodeLoading());
      int randomOTPCode = generateRandomOTPCode();
      int timestamp = DateTime.now().microsecondsSinceEpoch;
      String firebaseGeneratedKey = _databaseReference.push().key!;
      await _databaseReference
          .child('${FirebaseConstants.otpCodes}/$firebaseGeneratedKey')
          .set(OTPCodeModel(
            otpCodeId: firebaseGeneratedKey,
            otpCodeCustomerPhoneNumber: customerPhoneNumber,
            otpCode: randomOTPCode,
            otpCodeTimestamp: timestamp,
            otpCodeappSignature: await SmsVerification.getAppSignature(),
            otpCodestatus: false,
          ).toMap());
      emit(OtpCodeCodeAdded());
    } on Exception catch (error) {
      emit(OtpCodeCodeError(error.toString()));
    }
  }

  Future<void> emitUpdateOTP({required String otpCodeId}) async {
    try {
      emit(OtpCodeLoading());
      int randomOTPCode = generateRandomOTPCode();
      int timestamp = DateTime.now().microsecondsSinceEpoch;
      await _databaseReference
          .child('${FirebaseConstants.otpCodes}/$otpCodeId')
          .update({
        OTPCodeConstants.otpCode: randomOTPCode,
        OTPCodeConstants.otpCodeTimestamp: timestamp,
        OTPCodeConstants.otpCodeAppSignature:
            await SmsVerification.getAppSignature(),
        OTPCodeConstants.otpCodeStatus: false,
      });
      emit(OtpCodeCodeUpdated());
    } on Exception catch (error) {
      emit(OtpCodeCodeError(error.toString()));
    }
  }

  int generateRandomOTPCode() {
    return 100000 + Random().nextInt(999999 - 100000);
  }

  Future<void> emitCheckOTP(
      {required int otpCode, required String customerPhoneNumber}) async {
    try {
      emit(OtpCodeLoading());
      var otpCodes =
          await _databaseReference.child(FirebaseConstants.otpCodes).get();
      if (otpCodes.exists) {
        var otpCodesMap = otpCodes.value as Map;
        for (var map in otpCodesMap.values) {
          if (map[OTPCodeConstants.otpCodeCustomerPhoneNumber] ==
                  customerPhoneNumber &&
              map[OTPCodeConstants.otpCode] == otpCode) {
            emit(OtpCodeCodeCorrect(true));
            return;
          }
        }
      }
      emit(OtpCodeCodeCorrect(false));
    } on Exception catch (error) {
      emit(OtpCodeCodeError(error.toString()));
    }
  }
}
