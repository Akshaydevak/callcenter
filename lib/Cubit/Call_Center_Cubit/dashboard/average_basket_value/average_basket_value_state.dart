part of 'average_basket_value_cubit.dart';


@freezed
class AverageBasketValueState with _$AverageBasketValueState {
  const factory AverageBasketValueState.initial() = _Initial;
  const factory AverageBasketValueState.loading() = _Loading;
  const factory AverageBasketValueState.error() = _Error;
  const factory AverageBasketValueState.success(
      NewOrderListModel data) = _Success;
}
