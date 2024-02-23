part of 'otp_cubit.dart';

@freezed
class OtpState with _$OtpState {
  const factory OtpState.initial() = _Initial;
  const factory OtpState.loading() = _Loading;
  const factory OtpState.error() = _Error1;
  const factory OtpState.success(DoubleResponse data) = _Success;
}
