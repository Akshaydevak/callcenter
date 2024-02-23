part of 'employee_list_cubit.dart';


@freezed
class EmployeeListState with _$EmployeeListState {
  const factory EmployeeListState.initial() = _Initial;
  const factory EmployeeListState.loading() = _Loading;
  const factory EmployeeListState.success(PaginatedResponse data) = _Success;
  const factory EmployeeListState.error() = _Error;
}
