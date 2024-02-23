part of 'delete_wish_list_cubit.dart';


@freezed
class DeleteWishListState with _$DeleteWishListState {
  const factory DeleteWishListState.initial() = _Initial;
  const factory DeleteWishListState.loading() = _Loading;
  const factory DeleteWishListState.error() = _Error;
  const factory DeleteWishListState.success(DoubleResponse data) =
  _Success;
}
