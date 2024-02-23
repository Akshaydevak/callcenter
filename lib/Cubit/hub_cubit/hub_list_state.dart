part of 'hub_list_cubit.dart';


@freezed
class HubListState with _$HubListState {
  const factory HubListState.initial() = _Initial;
  const factory HubListState.loading() = _Loading;
  const factory HubListState.success(PaginatedResponse data) = _Success;
  const factory HubListState.error() = _Error;

}
