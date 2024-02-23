part of 'all_customers_cubit.dart';

@freezed
class AllCustomersState with _$AllCustomersState {
  const factory AllCustomersState.initial() = _Initial;
  const factory AllCustomersState.loading() = _Loading;
  const factory AllCustomersState.success(PaginatedResponse data) = _Success;
  const factory AllCustomersState.error() = _Error;
}
