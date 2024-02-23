part of 'put_payment_process_cubit.dart';

@freezed
class PutPaymentProcessState with _$PutPaymentProcessState {
  const factory PutPaymentProcessState.initial() = _Initial;
  const factory PutPaymentProcessState.loading() = _Loading;
  const factory PutPaymentProcessState.error() = _Error1;
  const factory PutPaymentProcessState.success(DoubleResponse data) = _Success;
}
