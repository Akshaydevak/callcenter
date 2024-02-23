part of 'return_sidelist_cubit.dart';

@freezed
class ReturnSidelistState with _$ReturnSidelistState {
  const factory ReturnSidelistState.initial() = _Initial;
  const factory ReturnSidelistState.success(PaginatedResponse data) = _Success;
  const factory ReturnSidelistState.error() = _Error;
}
