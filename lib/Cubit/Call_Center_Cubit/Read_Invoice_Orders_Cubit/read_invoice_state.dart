part of 'read_invoice_cubit.dart';

@freezed
class ReadInvoiceState with _$ReadInvoiceState {
  const factory ReadInvoiceState.initial() = _Initial;
  const factory ReadInvoiceState.loading() = _Loading;
  const factory ReadInvoiceState.error() = _Error;
  const factory ReadInvoiceState.success(InvoiceOrderCallCenter data) =_Success;
}
