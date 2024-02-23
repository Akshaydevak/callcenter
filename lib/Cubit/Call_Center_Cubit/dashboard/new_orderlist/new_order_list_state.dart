part of 'new_order_list_cubit.dart';


@freezed
class NewOrderListState with _$NewOrderListState {
  const factory NewOrderListState.initial() = _Initial;

  const factory NewOrderListState.success(PaginatedResponse data) = _Success;
  const factory NewOrderListState.error() = _Error;
}
