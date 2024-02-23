part of 'read_sales_invoice_inventory_cubit.dart';

@freezed
class ReadSalesInvoiceInventoryState with _$ReadSalesInvoiceInventoryState {
  const factory ReadSalesInvoiceInventoryState.initial() = _Initial;
  const factory ReadSalesInvoiceInventoryState.loading() = _Loading;
  const factory ReadSalesInvoiceInventoryState.error() = _Error;
  const factory ReadSalesInvoiceInventoryState.success(ReadSalesInvoice data) =_Success;
}
