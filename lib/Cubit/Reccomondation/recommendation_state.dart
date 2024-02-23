part of 'recommendation_cubit.dart';


@freezed
class RecommendationState with _$RecommendationState {
  const factory RecommendationState.initial() = _Initial;
  const factory RecommendationState.loading() = _Loading;
  const factory RecommendationState.success(PaginatedResponse data) = _Success;
  const factory RecommendationState.error() = _Error;
}
