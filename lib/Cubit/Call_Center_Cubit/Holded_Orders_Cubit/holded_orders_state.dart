part of 'holded_orders_cubit.dart';

@freezed
class HoldedOrdersState with _$HoldedOrdersState {
  const factory HoldedOrdersState.initial() = _Initial;
  const factory HoldedOrdersState.loading() = _Loading;
  const factory HoldedOrdersState.success(PaginatedResponse data) = _Success;
  const factory HoldedOrdersState.error() = _Error;
}
