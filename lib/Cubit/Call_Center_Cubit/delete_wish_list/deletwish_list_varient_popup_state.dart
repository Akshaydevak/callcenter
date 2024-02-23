part of 'deletwish_list_varient_popup_cubit.dart';


@freezed
class DeletwishListVarientPopupState with _$DeletwishListVarientPopupState {
  const factory DeletwishListVarientPopupState.initial() = _Initial;
  const factory DeletwishListVarientPopupState.loading() = _Loading;
  const factory DeletwishListVarientPopupState.error() = _Error;
  const factory DeletwishListVarientPopupState.success(DoubleResponse data) =
  _Success;
}
