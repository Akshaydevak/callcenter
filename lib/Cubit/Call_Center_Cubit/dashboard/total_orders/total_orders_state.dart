part of 'total_orders_cubit.dart';


@freezed
class TotalOrdersState with _$TotalOrdersState {
  const factory TotalOrdersState.initial() = _Initial;
  const factory TotalOrdersState.loading() = _Loading;
  const factory TotalOrdersState.error() = _Error;
  const factory TotalOrdersState.success(
      NewOrderListModel data) = _Success;

}
