part of 'order_status_cubit.dart';


@freezed
class OrderStatusState with _$OrderStatusState {
  const factory OrderStatusState.initial() = _Initial;
  const factory OrderStatusState.loading() = _Loading;
  const factory OrderStatusState.success(PaginatedResponse data) = _Success;
  const factory OrderStatusState.error() = _Error;

}
