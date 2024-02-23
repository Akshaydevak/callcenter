part of 'warranty_cubit.dart';


@freezed
class WarrantyState with _$WarrantyState {
  const factory WarrantyState.initial() = _Initial;
  const factory WarrantyState.loading() = _Loading;
  const factory WarrantyState.success(List<warrentyModel> data) = _Success;
  const factory WarrantyState.error() = _Error;
}
