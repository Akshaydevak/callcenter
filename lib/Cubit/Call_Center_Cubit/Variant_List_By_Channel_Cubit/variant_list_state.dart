part of 'variant_list_cubit.dart';

@freezed
class VariantListState with _$VariantListState {
  const factory VariantListState.initial() = _Initial;
  const factory VariantListState.loading() = _Loading;
  const factory VariantListState.success(PaginatedResponse data) = _Success;
  const factory VariantListState.error() = _Error;
}
