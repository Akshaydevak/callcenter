part of 'genaral_sidelist_cubit.dart';

@freezed
class GenaralSidelistState with _$GenaralSidelistState {
  const factory GenaralSidelistState.initial() = _Initial;
  const factory GenaralSidelistState.success(PaginatedResponse data) = _Success;
  const factory GenaralSidelistState.error() = _Error;
}
