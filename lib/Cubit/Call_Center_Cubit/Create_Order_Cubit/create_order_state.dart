part of 'create_order_cubit.dart';

@freezed
class CreateOrderState with _$CreateOrderState {
  const factory CreateOrderState.initial() = _Initial;
  const factory CreateOrderState.loading() = _Loading;
  const factory CreateOrderState.error() = _Error1;
  const factory CreateOrderState.success(DoubleResponse data) = _Success;
}
