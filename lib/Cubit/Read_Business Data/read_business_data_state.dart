part of 'read_business_data_cubit.dart';

@freezed
class ReadBusinessDataState with _$ReadBusinessDataState {
  const factory ReadBusinessDataState.initial() = _Initial;
  const factory ReadBusinessDataState.loading() = _Loading;
  const factory ReadBusinessDataState.error() = _Error;
  const factory ReadBusinessDataState.success(BusinessUnitData) =_Success;
}
