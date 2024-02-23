part of 'channel_details_cubit.dart';


@freezed
class ChannelDetailsState with _$ChannelDetailsState {
  const factory ChannelDetailsState.initial() = _Initial;
  const factory ChannelDetailsState.loading() = _Loading;
  const factory ChannelDetailsState.error() = _Error1;
  const factory ChannelDetailsState.success(DoubleResponse data) = _Success;
}
