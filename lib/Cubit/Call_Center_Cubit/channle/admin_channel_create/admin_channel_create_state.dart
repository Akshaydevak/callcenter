part of 'admin_channel_create_cubit.dart';


@freezed
class AdminChannelCreateState with _$AdminChannelCreateState {
  const factory AdminChannelCreateState.initial() = _Initial;
  const factory AdminChannelCreateState.loading() = _Loading;
  const factory AdminChannelCreateState.error() = _Error1;
  const factory AdminChannelCreateState.success(DoubleResponse data) = _Success;
}
