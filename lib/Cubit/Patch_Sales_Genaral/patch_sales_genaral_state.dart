part of 'patch_sales_genaral_cubit.dart';

@freezed
class PatchSalesGenaralState with _$PatchSalesGenaralState {
  const factory PatchSalesGenaralState.initial() = _Initial;
  const factory PatchSalesGenaralState.loading() = _Loading;
  const factory PatchSalesGenaralState.error() = _Error1;
  const factory PatchSalesGenaralState.success(DoubleResponse data) = _Success;
}
