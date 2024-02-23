part of 'customer_group_cubit.dart';


@freezed
class CustomerGroupState with _$CustomerGroupState {

  const factory CustomerGroupState.initial() = _Initial;
  const factory CustomerGroupState.success(List<CustomerGroupModel> data) = _Success;
  const factory CustomerGroupState.error() = _Error;
}
