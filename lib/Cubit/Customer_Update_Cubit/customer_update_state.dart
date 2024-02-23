part of 'customer_update_cubit.dart';

@freezed
class CustomerUpdateState with _$CustomerUpdateState {
  const factory CustomerUpdateState.initial() = _Initial;
  const factory CustomerUpdateState.loading() = _Loading;
  const factory CustomerUpdateState.error() = _Error1;
  const factory CustomerUpdateState.success(DoubleResponse data) = _Success;
}
