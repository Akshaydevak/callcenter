part of 'state_list_cubit.dart';


@freezed
class StateListState with _$StateListState {
  const factory StateListState.initial() = _Initial;
  const factory StateListState.loading() = _Loading;
  const factory StateListState.error() = _Error;
  const factory StateListState.success(List<StateList> data) =
  _Success;
}
