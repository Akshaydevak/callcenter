part of 'read_sales_genaral_cubit.dart';

@freezed
class ReadSalesGenaralState with _$ReadSalesGenaralState {
  const factory ReadSalesGenaralState.initial() = _Initial;
  const factory ReadSalesGenaralState.loading() = _Loading;
  const factory ReadSalesGenaralState.error() = _Error;
  const factory ReadSalesGenaralState.success(ReadSalesGenaral data) =_Success;
}
