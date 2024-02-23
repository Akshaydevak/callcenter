part of 'payment_process_cubit.dart';

@freezed
class PaymentProcessState with _$PaymentProcessState {
  const factory PaymentProcessState.initial() = _Initial;
  const factory PaymentProcessState.loading() = _Loading;
  const factory PaymentProcessState.error() = _Error1;
  const factory PaymentProcessState.success(DoubleResponse data) = _Success;
}
