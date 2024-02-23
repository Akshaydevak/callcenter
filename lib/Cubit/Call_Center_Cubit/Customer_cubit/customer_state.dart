part of 'customer_cubit.dart';

@freezed
class CustomerState with _$CustomerState {
  const factory CustomerState.initial() = _Initial;
  const factory CustomerState.loading() = _Loading;
  const factory CustomerState.success(PaginatedResponse data) = _Success;
  const factory CustomerState.error() = _Error;
}
