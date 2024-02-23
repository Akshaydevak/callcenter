part of 'second_popup_wish_list_cubit.dart';


@freezed
class SecondPopupWishListState with _$SecondPopupWishListState {
  const factory SecondPopupWishListState.initial() = _Initial;
  const factory SecondPopupWishListState.loading() = _Loading;
  const factory SecondPopupWishListState.success(PaginatedResponse data) = _Success;
  const factory SecondPopupWishListState.error() = _Error;
}
