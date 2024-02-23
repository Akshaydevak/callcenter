part of 'read_approve_cart_cubit.dart';


@freezed
class ReadApproveCartState with _$ReadApproveCartState {
  const factory ReadApproveCartState.initial() = _Initial;
  const factory ReadApproveCartState.loading() = _Loading;
  const factory ReadApproveCartState.error() = _Error;
  const factory ReadApproveCartState.success(ApproveCartReadModel data) =_Success;
}
