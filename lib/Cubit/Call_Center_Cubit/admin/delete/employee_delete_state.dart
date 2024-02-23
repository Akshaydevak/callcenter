part of 'employee_delete_cubit.dart';


@freezed
class EmployeeDeleteState with _$EmployeeDeleteState {
  const factory EmployeeDeleteState.initial() = _Initial;
  const factory EmployeeDeleteState.loading() = _Loading;
  const factory EmployeeDeleteState.error() = _Error1;
  const factory EmployeeDeleteState.success(DoubleResponse data) = _Success;
}
