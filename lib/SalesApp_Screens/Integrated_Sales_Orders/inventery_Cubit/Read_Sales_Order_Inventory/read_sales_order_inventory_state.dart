part of 'read_sales_order_inventory_cubit.dart';

@freezed
class ReadSalesOrderInventoryState with _$ReadSalesOrderInventoryState {
  const factory ReadSalesOrderInventoryState.initial() = _Initial;
  const factory ReadSalesOrderInventoryState.loading() = _Loading;
  const factory ReadSalesOrderInventoryState.error() = _Error;
  const factory ReadSalesOrderInventoryState.success(ReadSalesGenaral data) =_Success;
}
