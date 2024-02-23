part of 'assign_to_cubit.dart';

@freezed
class AssignToState with _$AssignToState {
  const factory AssignToState.initial() = _Initial;
  const factory AssignToState.loading() = _Loading;
  const factory AssignToState.success(AssignToList) = _Success;
  const factory AssignToState.error() = _Error;
}
