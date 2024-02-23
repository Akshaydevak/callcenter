part of 'admin_user_create_cubit.dart';


@freezed
class AdminUserCreateState with _$AdminUserCreateState {
  const factory AdminUserCreateState.initial() = _Initial;
  const factory AdminUserCreateState.loading() = _Loading;
  const factory AdminUserCreateState.error() = _Error1;
  const factory AdminUserCreateState.success(DoubleResponse data) = _Success;
}
