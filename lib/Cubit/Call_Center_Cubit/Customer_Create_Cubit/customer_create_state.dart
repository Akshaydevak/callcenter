part of 'customer_create_cubit.dart';

@freezed
class CustomerCreateState with _$CustomerCreateState {
  const factory CustomerCreateState.initial() = _Initial;
  const factory CustomerCreateState.loading() = _Loading;
  const factory CustomerCreateState.error() = _Error1;
  const factory CustomerCreateState.success(DoubleResponse data) = _Success;
}
