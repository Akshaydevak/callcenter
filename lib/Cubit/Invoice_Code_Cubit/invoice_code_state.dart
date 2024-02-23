part of 'invoice_code_cubit.dart';

@freezed
class InvoiceCodeState with _$InvoiceCodeState {
  const factory InvoiceCodeState.initial() = _Initial;
  const factory InvoiceCodeState.loading() = _Loading;
  const factory InvoiceCodeState.success(InvoiceCodeList) = _Success;
  const factory InvoiceCodeState.error() = _Error;
}
