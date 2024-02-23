part of 'all_orders_cubit.dart';

@freezed
class AllOrdersState with _$AllOrdersState {
  const factory AllOrdersState.initial() = _Initial;
  const factory AllOrdersState.loading() = _Loading;
  const factory AllOrdersState.success(PaginatedResponse data) = _Success;
  const factory AllOrdersState.error() = _Error;
}
