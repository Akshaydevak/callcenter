part of 'read_return_invoice_inventory_cubit.dart';

@freezed
class ReadReturnInvoiceInventoryState with _$ReadReturnInvoiceInventoryState {
  const factory ReadReturnInvoiceInventoryState.initial() = _Initial;
  const factory ReadReturnInvoiceInventoryState.loading() = _Loading;
  const factory ReadReturnInvoiceInventoryState.error() = _Error;
  const factory ReadReturnInvoiceInventoryState.success(ReadSalesReturnInvoice data) =_Success;
}
