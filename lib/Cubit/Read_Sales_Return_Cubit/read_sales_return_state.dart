part of 'read_sales_return_cubit.dart';

@freezed
class ReadSalesReturnState with _$ReadSalesReturnState {
  const factory ReadSalesReturnState.initial() = _Initial;
  const factory ReadSalesReturnState.loading() = _Loading;
  const factory ReadSalesReturnState.error() = _Error;
  const factory ReadSalesReturnState.success(ReadSalesReturn data) =_Success;
}
