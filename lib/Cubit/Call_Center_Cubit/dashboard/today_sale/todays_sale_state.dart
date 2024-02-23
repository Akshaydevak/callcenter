part of 'todays_sale_cubit.dart';

@freezed
class TodaysSaleState with _$TodaysSaleState {
  const factory TodaysSaleState.initial() = _Initial;
  const factory TodaysSaleState.loading() = _Loading;
  const factory TodaysSaleState.error() = _Error;
  const factory TodaysSaleState.success(
      NewOrderListModel data) = _Success;
}
