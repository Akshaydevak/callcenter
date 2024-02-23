part of 'read_variant_cubit.dart';

@freezed
class ReadVariantState with _$ReadVariantState {
  const factory ReadVariantState.initial() = _Initial;
  const factory ReadVariantState.loading() = _Loading;
  const factory ReadVariantState.error() = _Error;
  const factory ReadVariantState.success(ReadVarriant data) =_Success;
}
