part of 'all_cart_list_cubit.dart';


@freezed
class AllCartListState with _$AllCartListState {
  const factory AllCartListState.initial() = _Initial;
  const factory AllCartListState.loading() = _Loading;
  const factory AllCartListState.success(PaginatedResponse data) = _Success;
  const factory AllCartListState.error() = _Error;
}
