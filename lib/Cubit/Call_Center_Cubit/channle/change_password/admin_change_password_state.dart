part of 'admin_change_password_cubit.dart';


@freezed
class AdminChangePasswordState with _$AdminChangePasswordState {
  const factory AdminChangePasswordState.initial() = _Initial;
  const factory AdminChangePasswordState.loading() = _Loading;
  const factory AdminChangePasswordState.error() = _Error1;
  const factory AdminChangePasswordState.success(DoubleResponse data) = _Success;

}
