part of 'approve_order_post_cubit.dart';


@freezed
class ApproveOrderPostState with _$ApproveOrderPostState {
  const factory ApproveOrderPostState.initial() = _Initial;
  const factory ApproveOrderPostState.loading() = _Loading;
  const factory ApproveOrderPostState.error() = _Error1;
  const factory ApproveOrderPostState.success(DoubleResponse data) = _Success;
}
