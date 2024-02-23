part of 'payment_options_cubit.dart';

@freezed
class PaymentOptionsState with _$PaymentOptionsState {
  const factory PaymentOptionsState.initial() = _Initial;
  const factory PaymentOptionsState.success(PaginatedResponse data) = _Success;
  const factory PaymentOptionsState.error() = _Error;
}
