part of 'create_invoice_cubit.dart';

@freezed
class CreateInvoiceState with _$CreateInvoiceState {
  const factory CreateInvoiceState.initial() = _Initial;
  const factory CreateInvoiceState.loading() = _Loading;
  const factory CreateInvoiceState.error() = _Error1;
  const factory CreateInvoiceState.success(DoubleResponse data) = _Success;
}
