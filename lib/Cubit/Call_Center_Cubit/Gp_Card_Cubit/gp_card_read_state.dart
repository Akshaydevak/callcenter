part of 'gp_card_read_cubit.dart';

@freezed
class GpCardReadState with _$GpCardReadState {
  const factory GpCardReadState.initial() = _Initial;
  const factory GpCardReadState.loading() = _Loading;
  const factory GpCardReadState.success(GpCardData) = _Success;
  const factory GpCardReadState.error() = _Error;
}
