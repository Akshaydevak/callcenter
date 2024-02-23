part of 'success_orders_cubit.dart';

@freezed
class SuccessOrdersState with _$SuccessOrdersState {
  const factory SuccessOrdersState.initial() = _Initial;
  const factory SuccessOrdersState.loading() = _Loading;
  const factory SuccessOrdersState.success(PaginatedResponse data) = _Success;
  const factory SuccessOrdersState.error() = _Error;
}
