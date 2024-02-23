part of 'approve_list_cubit.dart';


@freezed
class ApproveListState with _$ApproveListState {
  const factory ApproveListState.initial() = _Initial;
  const factory ApproveListState.loading() = _Loading;
  const factory ApproveListState.success(PaginatedResponse data) = _Success;
  const factory ApproveListState.error() = _Error;
}
