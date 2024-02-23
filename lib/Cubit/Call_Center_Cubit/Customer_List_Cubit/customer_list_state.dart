part of 'customer_list_cubit.dart';

@freezed
class CustomerListState with _$CustomerListState {
  const factory CustomerListState.initial() = _Initial;
  const factory CustomerListState.loading() = _Loading;
  const factory CustomerListState.success(CustomerList) = _Success;
  const factory CustomerListState.error() = _Error;
}
