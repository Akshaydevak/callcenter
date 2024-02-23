part of 'offer_hub_list_cubit.dart';


@freezed
class OfferHubListState with _$OfferHubListState {
  const factory OfferHubListState.initial() = _Initial;
  const factory OfferHubListState.loading() = _Loading;
  const factory OfferHubListState.success(PaginatedResponse data) = _Success;
  const factory OfferHubListState.error() = _Error;
}
