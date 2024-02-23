part of 'post_captcha_cubit.dart';

@freezed
class PostCaptchaState with _$PostCaptchaState {
  const factory PostCaptchaState.initial() = _Initial;
  const factory PostCaptchaState.loading() = _Loading;
  const factory PostCaptchaState.error() = _Error;
  const factory PostCaptchaState.success(DoubleResponse data) =_Success;

}
