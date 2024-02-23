part of 'percentage_cubit.dart';

@freezed
class PercentageState with _$PercentageState {
  const factory PercentageState.initial() = _Initial;
  const factory PercentageState.loading() = _Loading;
  const factory PercentageState.success(Percentage) = _Success;
  const factory PercentageState.error() = _Error;
}
