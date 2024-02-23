part of 'total_holding_cubit.dart';


@freezed
class TotalHoldingState with _$TotalHoldingState {
  const factory TotalHoldingState.initial() = _Initial;
  const factory TotalHoldingState.loading() = _Loading;
  const factory TotalHoldingState.error() = _Error;
  const factory TotalHoldingState.success(
      NewOrderListModel data) = _Success;


}
