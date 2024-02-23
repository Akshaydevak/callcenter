part of 'latest_order_count_cubit.dart';

@freezed
class LatestOrderCountState with _$LatestOrderCountState {
  const factory LatestOrderCountState.initial() = _Initial;
  const factory LatestOrderCountState.loading() = _Loading;
  const factory LatestOrderCountState.success(CountModels) = _Success;
  const factory LatestOrderCountState.error() = _Error;
}
