part of 'list_role_cubit.dart';


@freezed
class ListRoleState with _$ListRoleState {
  const factory ListRoleState.initial() = _Initial;
  const factory ListRoleState.loading() = _Loading;
  const factory ListRoleState.success(PaginatedResponse data) = _Success;
  const factory ListRoleState.error() = _Error;
}
