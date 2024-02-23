part of 'recent_customer_cubit.dart';

@freezed
class RecentCustomerState with _$RecentCustomerState {
  const factory RecentCustomerState.initial() = _Initial;
  const factory RecentCustomerState.loading() = _Loading;
  const factory RecentCustomerState.success(RecentCustomers) = _Success;
  const factory RecentCustomerState.error() = _Error;
}
