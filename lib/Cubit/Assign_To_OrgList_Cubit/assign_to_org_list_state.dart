part of 'assign_to_org_list_cubit.dart';

@freezed
class AssignToOrgListState with _$AssignToOrgListState {
  const factory AssignToOrgListState.initial() = _Initial;
  const factory AssignToOrgListState.loading() = _Loading;
  const factory AssignToOrgListState.success(OrgList) = _Success;
  const factory AssignToOrgListState.error() = _Error;
}
