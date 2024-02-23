part of 'create_return_invoice_cubit.dart';

@freezed
class CreateReturnInvoiceState with _$CreateReturnInvoiceState {
  const factory CreateReturnInvoiceState.initial() = _Initial;
  const factory CreateReturnInvoiceState.loading() = _Loading;
  const factory CreateReturnInvoiceState.error() = _Error1;
  const factory CreateReturnInvoiceState.success(DoubleResponse data) = _Success;
}
