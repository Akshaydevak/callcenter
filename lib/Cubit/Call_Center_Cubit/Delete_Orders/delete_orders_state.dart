part of 'delete_orders_cubit.dart';

@freezed
class DeleteOrdersState with _$DeleteOrdersState {
  const factory DeleteOrdersState.initial() = _Initial;
  const factory DeleteOrdersState.loading() = _Loading;
  const factory DeleteOrdersState.error() = _Error;
  const factory DeleteOrdersState.success(DoubleResponse data) =
  _Success;

}
