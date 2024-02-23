part of 'admin_channel_count_cubit.dart';


@freezed
class AdminChannelCountState with _$AdminChannelCountState {
  const factory AdminChannelCountState.initial() = _Initial;
  const factory AdminChannelCountState.loading() = _Loading;
  const factory AdminChannelCountState.error() = _Error;
  const factory AdminChannelCountState.success(ChannelUserCountModel data) =_Success;
}
