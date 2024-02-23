part of 'admin_channel_read_cubit.dart';


@freezed
class AdminChannelReadState with _$AdminChannelReadState {
  const factory AdminChannelReadState.initial() = _Initial;
  const factory AdminChannelReadState.loading() = _Loading;
  const factory AdminChannelReadState.error() = _Error;
  const factory AdminChannelReadState.success(AdminChannelReadModel data) =_Success;
}
