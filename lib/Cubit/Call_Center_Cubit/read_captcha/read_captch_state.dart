part of 'read_captch_cubit.dart';


@freezed
class ReadCaptchState with _$ReadCaptchState {
  const factory ReadCaptchState.initial() = _Initial;
  const factory ReadCaptchState.loading() = _Loading;
  const factory ReadCaptchState.error() = _Error;
  const factory ReadCaptchState.success(DoubleResponse data) =_Success;

}
