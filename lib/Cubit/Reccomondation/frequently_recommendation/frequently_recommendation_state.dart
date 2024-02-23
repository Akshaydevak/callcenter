part of 'frequently_recommendation_cubit.dart';


@freezed
class FrequentlyRecommendationState with _$FrequentlyRecommendationState {
  const factory FrequentlyRecommendationState.initial() = _Initial;
  const factory FrequentlyRecommendationState.loading() = _Loading;
  const factory FrequentlyRecommendationState.success(PaginatedResponse data) = _Success;
  const factory FrequentlyRecommendationState.error() = _Error;


}
