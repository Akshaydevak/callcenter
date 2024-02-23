part of 'create_approve_cart_cubit.dart';

@freezed
class CreateApproveCartState with _$CreateApproveCartState {
  const factory CreateApproveCartState.initial() = _Initial;
  const factory CreateApproveCartState.loading() = _Loading;
  const factory CreateApproveCartState.error() = _Error1;
  const factory CreateApproveCartState.success(DoubleResponse data) = _Success;
}
