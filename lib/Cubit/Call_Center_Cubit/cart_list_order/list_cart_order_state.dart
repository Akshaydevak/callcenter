part of 'list_cart_order_cubit.dart';


@freezed
class ListCartOrderState with _$ListCartOrderState {
  const factory ListCartOrderState.initial() = _Initial;
  const factory ListCartOrderState.loading() = _Loading;
  const factory ListCartOrderState.success(PaginatedResponse data) = _Success;
  const factory ListCartOrderState.error() = _Error;
}
