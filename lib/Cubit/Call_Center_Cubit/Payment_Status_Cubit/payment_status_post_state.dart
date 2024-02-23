part of 'payment_status_post_cubit.dart';

@freezed
class PaymentStatusPostState with _$PaymentStatusPostState {
  const factory PaymentStatusPostState.initial() = _Initial;
  const factory PaymentStatusPostState.loading() = _Loading;
  const factory PaymentStatusPostState.error() = _Error1;
  const factory PaymentStatusPostState.success(DoubleResponse data) = _Success;
}
