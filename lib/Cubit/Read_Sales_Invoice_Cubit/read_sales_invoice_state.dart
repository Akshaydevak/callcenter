part of 'read_sales_invoice_cubit.dart';

@freezed
class ReadSalesInvoiceState with _$ReadSalesInvoiceState {
  const factory ReadSalesInvoiceState.initial() = _Initial;
  const factory ReadSalesInvoiceState.loading() = _Loading;
  const factory ReadSalesInvoiceState.error() = _Error;
  const factory ReadSalesInvoiceState.success(ReadSalesInvoice data) =_Success;
}
