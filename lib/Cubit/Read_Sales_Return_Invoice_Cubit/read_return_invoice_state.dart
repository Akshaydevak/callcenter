part of 'read_return_invoice_cubit.dart';

@freezed
class ReadReturnInvoiceState with _$ReadReturnInvoiceState {
  const factory ReadReturnInvoiceState.initial() = _Initial;
  const factory ReadReturnInvoiceState.loading() = _Loading;
  const factory ReadReturnInvoiceState.error() = _Error;
  const factory ReadReturnInvoiceState.success(ReadSalesReturnInvoice data) =_Success;
}
