part of 'designation_list_cubit.dart';


@freezed
class DesignationListState with _$DesignationListState {
  const factory DesignationListState.initial() = _Initial;
  const factory DesignationListState.loading() = _Loading;
  const factory DesignationListState.success(PaginatedResponse data) = _Success;
  const factory DesignationListState.error() = _Error;
}
