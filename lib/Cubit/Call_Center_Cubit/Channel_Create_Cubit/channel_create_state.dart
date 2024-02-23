part of 'channel_create_cubit.dart';

@freezed
class ChannelCreateState with _$ChannelCreateState {
  const factory ChannelCreateState.initial() = _Initial;
  const factory ChannelCreateState.loading() = _Loading;
  const factory ChannelCreateState.error() = _Error1;
  const factory ChannelCreateState.success(DoubleResponse data) = _Success;
}
