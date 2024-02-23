part of 'offer_cubit.dart';


@freezed
class OfferState with _$OfferState {
  const factory OfferState.initial() = _Initial;
  const factory OfferState.loading() = _Loading;
  const factory OfferState.success(PaginatedResponse data) = _Success;
  const factory OfferState.error() = _Error;
}
