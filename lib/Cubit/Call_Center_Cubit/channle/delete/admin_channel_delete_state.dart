part of 'admin_channel_delete_cubit.dart';


@freezed
class AdminChannelDeleteState with _$AdminChannelDeleteState {
  const factory AdminChannelDeleteState.initial() = _Initial;
  const factory AdminChannelDeleteState.loading() = _Loading;
  const factory AdminChannelDeleteState.error() = _Error1;
  const factory AdminChannelDeleteState.success(DoubleResponse data) = _Success;
}
