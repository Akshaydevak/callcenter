part of 'order_type_cubit.dart';

@freezed
class OrderTypeState with _$OrderTypeState {
  const factory OrderTypeState.initial() = _Initial;
  const factory OrderTypeState.loading() = _Loading;
  const factory OrderTypeState.error() = _Error;
  const factory OrderTypeState.success(OrderTypes data) = _Success;
}
