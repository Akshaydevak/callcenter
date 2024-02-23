part of 'invoice_order_cubit.dart';

@freezed
class InvoiceOrderState with _$InvoiceOrderState {
  const factory InvoiceOrderState.initial() = _Initial;
  const factory InvoiceOrderState.loading() = _Loading;
  const factory InvoiceOrderState.success(PaginatedResponse data) = _Success;
  const factory InvoiceOrderState.error() = _Error;
}
