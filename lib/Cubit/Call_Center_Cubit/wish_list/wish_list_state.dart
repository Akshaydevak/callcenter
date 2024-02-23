part of 'wish_list_cubit.dart';


@freezed
class WishListState with _$WishListState {
  const factory WishListState.initial() = _Initial;
  const factory WishListState.loading() = _Loading;
  const factory WishListState.success(PaginatedResponse data) = _Success;
  const factory WishListState.error() = _Error;

}
