part of 'create_sales_invoice_cubit.dart';

@freezed
class CreateSalesInvoiceState with _$CreateSalesInvoiceState {
  const factory CreateSalesInvoiceState.initial() = _Initial;
  const factory CreateSalesInvoiceState.loading() = _Loading;
  const factory CreateSalesInvoiceState.error() = _Error1;
  const factory CreateSalesInvoiceState.success(DoubleResponse data) = _Success;
}
