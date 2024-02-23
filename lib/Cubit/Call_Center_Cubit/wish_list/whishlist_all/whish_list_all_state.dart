part of 'whish_list_all_cubit.dart';


@freezed
class WhishListAllState with _$WhishListAllState {
  const factory WhishListAllState.initial() = _Initial;
  const factory WhishListAllState.loading() = _Loading;
  const factory WhishListAllState.success(PaginatedResponse data) = _Success;
  const factory WhishListAllState.error() = _Error;

}
