part of 'create_cart_cubit.dart';


@freezed
class CreateCartState with _$CreateCartState {
  const factory CreateCartState.initial() = _Initial;
  const factory CreateCartState.loading() = _Loading;
  const factory CreateCartState.error() = _Error1;
  const factory CreateCartState.success(DoubleResponse data) = _Success;
}
