part of 'percentage_gp_cubit.dart';

@freezed
class PercentageGpState with _$PercentageGpState {
  const factory PercentageGpState.initial() = _Initial;
  const factory PercentageGpState.loading() = _Loading;
  const factory PercentageGpState.success(PercentageGp) = _Success;
  const factory PercentageGpState.error() = _Error;
}
