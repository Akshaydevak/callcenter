part of 'payment_process_list_cubit.dart';

@freezed
class PaymentProcessListState with _$PaymentProcessListState {
  const factory PaymentProcessListState.initial() = _Initial;
  const factory PaymentProcessListState.success(PaginatedResponse data) = _Success;
  const factory PaymentProcessListState.error() = _Error;
}
