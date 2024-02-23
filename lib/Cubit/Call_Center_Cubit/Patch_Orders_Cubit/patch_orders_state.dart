part of 'patch_orders_cubit.dart';

@freezed
class PatchOrdersState with _$PatchOrdersState {
  const factory PatchOrdersState.initial() = _Initial;
  const factory PatchOrdersState.loading() = _Loading;
  const factory PatchOrdersState.error() = _Error1;
  const factory PatchOrdersState.success(DoubleResponse data) = _Success;
}
