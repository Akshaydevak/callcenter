part of 'admin_channel_list_cubit.dart';


@freezed
class AdminChannelListState with _$AdminChannelListState {
  const factory AdminChannelListState.initial() = _Initial;
  const factory AdminChannelListState.loading() = _Loading;
  const factory AdminChannelListState.success(PaginatedResponse data) = _Success;
  const factory AdminChannelListState.error() = _Error;
}
