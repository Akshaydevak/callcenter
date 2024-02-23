part of 'negotation_list_cubit.dart';


@freezed
class NegotationListState with _$NegotationListState {
  const factory NegotationListState.initial() = _Initial;
  const factory NegotationListState.loading() = _Loading;
  const factory NegotationListState.success(PaginatedResponse data) = _Success;
  const factory NegotationListState.error() = _Error;

}
