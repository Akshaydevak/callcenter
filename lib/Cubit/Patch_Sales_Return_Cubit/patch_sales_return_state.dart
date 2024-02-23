part of 'patch_sales_return_cubit.dart';

@freezed
class PatchSalesReturnState with _$PatchSalesReturnState {
  const factory PatchSalesReturnState.initial() = _Initial;
  const factory PatchSalesReturnState.loading() = _Loading;
  const factory PatchSalesReturnState.error() = _Error1;
  const factory PatchSalesReturnState.success(DoubleResponse data) = _Success;
}
