part of 'delete_cart_cubit.dart';


@freezed
class DeleteCartState with _$DeleteCartState {
  const factory DeleteCartState.initial() = _Initial;
  const factory DeleteCartState.loading() = _Loading;
  const factory DeleteCartState.error() = _Error1;
  const factory DeleteCartState.success(DoubleResponse data) = _Success;
}
