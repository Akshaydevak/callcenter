part of 'user_management_cubit.dart';

@freezed
class UserManagementState with _$UserManagementState {
  const factory UserManagementState.initial() = _Initial;
  const factory UserManagementState.loading() = _Loading;
  const factory UserManagementState.success(CustomerList) = _Success;
  const factory UserManagementState.error() = _Error;
}
