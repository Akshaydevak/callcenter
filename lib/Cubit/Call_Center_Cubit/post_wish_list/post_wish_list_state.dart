part of 'post_wish_list_cubit.dart';


@freezed
class PostWishListState with _$PostWishListState {
  const factory PostWishListState.initial() = _Initial;
  const factory PostWishListState.loading() = _Loading;
  const factory PostWishListState.error() = _Error;
  const factory PostWishListState.success(DoubleResponse data) =_Success;
}
