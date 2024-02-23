part of 'purchase_recommendation_cubit.dart';

@freezed
class PurchaseRecommendationState with _$PurchaseRecommendationState {
  const factory PurchaseRecommendationState.initial() = _Initial;
  const factory PurchaseRecommendationState.loading() = _Loading;
  const factory PurchaseRecommendationState.success(PaginatedResponse data) = _Success;
  const factory PurchaseRecommendationState.error() = _Error;
}
