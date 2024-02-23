part of 'channel_list_cubit.dart';

@freezed
class ChannelListState with _$ChannelListState {
  const factory ChannelListState.initial() = _Initial;
  const factory ChannelListState.loading() = _Loading;
  const factory ChannelListState.success(ChannelList) = _Success;
  const factory ChannelListState.error() = _Error;
}
