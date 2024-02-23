part of 'negotiation_post_cubit.dart';


@freezed
class NegotiationPostState with _$NegotiationPostState {
  const factory NegotiationPostState.initial() = _Initial;
  const factory NegotiationPostState.loading() = _Loading;
  const factory NegotiationPostState.error() = _Error1;
  const factory NegotiationPostState.success(DoubleResponse data) = _Success;

}
