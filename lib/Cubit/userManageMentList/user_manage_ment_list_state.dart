part of 'user_manage_ment_list_cubit.dart';

@freezed
class UserManageMentListState with _$UserManageMentListState {
  const factory UserManageMentListState.initial() = _Initial;
  const factory UserManageMentListState.loading() = _Loading;
  const factory UserManageMentListState.success(PaginatedResponse data) = _Success;
  const factory UserManageMentListState.error() = _Error;
}
