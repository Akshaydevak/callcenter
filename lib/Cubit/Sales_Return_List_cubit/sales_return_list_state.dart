part of 'sales_return_list_cubit.dart';
@freezed
class SalesReturnListState with _$SalesReturnListState {
  const factory SalesReturnListState.initial() = _Initial;
  const factory SalesReturnListState.success(PaginatedResponse data) = _Success;
  const factory SalesReturnListState.error() = _Error;
}
