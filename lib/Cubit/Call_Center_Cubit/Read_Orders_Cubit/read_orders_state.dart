part of 'read_orders_cubit.dart';

@freezed
class ReadOrdersState with _$ReadOrdersState {
  const factory ReadOrdersState.initial() = _Initial;
  const factory ReadOrdersState.loading() = _Loading;
  const factory ReadOrdersState.error() = _Error;
  const factory ReadOrdersState.success(ReadOrderCallCenter data) =_Success;
}
