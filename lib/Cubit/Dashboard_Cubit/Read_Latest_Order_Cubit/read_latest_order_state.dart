part of 'read_latest_order_cubit.dart';

@freezed
class ReadLatestOrderState with _$ReadLatestOrderState {
  const factory ReadLatestOrderState.initial() = _Initial;
  const factory ReadLatestOrderState.loading() = _Loading;
  const factory ReadLatestOrderState.success(LatestOrder) = _Success;
  const factory ReadLatestOrderState.error() = _Error;
}
