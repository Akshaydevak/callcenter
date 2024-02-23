part of 'admin_user_count_cubit.dart';


@freezed
class AdminUserCountState with _$AdminUserCountState {
  const factory AdminUserCountState.initial() = _Initial;
  const factory AdminUserCountState.loading() = _Loading;
  const factory AdminUserCountState.error() = _Error;
  const factory AdminUserCountState.success(ChannelUserCountModel data) =_Success;
}
