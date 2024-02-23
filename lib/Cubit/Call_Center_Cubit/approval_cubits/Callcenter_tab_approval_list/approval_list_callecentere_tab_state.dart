part of 'approval_list_callecentere_tab_cubit.dart';


@freezed
class ApprovalListCallecentereTabState with _$ApprovalListCallecentereTabState {
  const factory ApprovalListCallecentereTabState.initial() = _Initial;
  const factory ApprovalListCallecentereTabState.loading() = _Loading;
  const factory ApprovalListCallecentereTabState.success(PaginatedResponse data) = _Success;
  const factory ApprovalListCallecentereTabState.error() = _Error;
}
