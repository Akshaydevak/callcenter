part of 'inventory_sales_order_list_cubit.dart';

@freezed
class InventorySalesOrderListState with _$InventorySalesOrderListState {
  const factory InventorySalesOrderListState.initial() = _Initial;
  const factory InventorySalesOrderListState.success(PaginatedResponse data) = _Success;
  const factory InventorySalesOrderListState.error() = _Error;
}
