part of 'newly_count_cubit.dart';

@freezed
class NewlyCountState with _$NewlyCountState {
  const factory NewlyCountState.initial() = _Initial;
  const factory NewlyCountState.loading() = _Loading;
  const factory NewlyCountState.success(CountModels) = _Success;
  const factory NewlyCountState.error() = _Error;
}
