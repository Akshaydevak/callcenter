part of 'custumer_count_cubit.dart';

@freezed
class CustumerCountState with _$CustumerCountState {
  const factory CustumerCountState.initial() = _Initial;
  const factory CustumerCountState.loading() = _Loading;
  const factory CustumerCountState.success(CountModels) = _Success;
  const factory CustumerCountState.error() = _Error;
}
