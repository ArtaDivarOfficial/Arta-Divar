part of 'otp_code_cubit.dart';

@immutable
abstract class OtpCodeState {}

class OtpCodeInitial extends OtpCodeState {}

class OtpCodeLoading extends OtpCodeState {}

class OtpCodeCodeAdded extends OtpCodeState {}

class OtpCodeCodeUpdated extends OtpCodeState {}

class OtpCodeCodeError extends OtpCodeState {
  final String error;

  OtpCodeCodeError(this.error);
}

class OtpCodeCodeExists extends OtpCodeState {
  final bool isOTPCodeExists;

  OtpCodeCodeExists(this.isOTPCodeExists);
}

class OtpCodeCodeCorrect extends OtpCodeState {
  final bool isOTPCodeCorrect;

  OtpCodeCodeCorrect(this.isOTPCodeCorrect);
}
