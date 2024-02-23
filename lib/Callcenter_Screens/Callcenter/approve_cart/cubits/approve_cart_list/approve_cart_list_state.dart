part of 'approve_cart_list_cubit.dart';


@freezed
class ApproveCartListState with _$ApproveCartListState {
  const factory ApproveCartListState.initial() = _Initial;
  const factory ApproveCartListState.loading() = _Loading;
  const factory ApproveCartListState.success(PaginatedResponse data) = _Success;
  const factory ApproveCartListState.error() = _Error;
}
