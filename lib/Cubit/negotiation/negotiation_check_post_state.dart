part of 'negotiation_check_post_cubit.dart';


@freezed
class NegotiationCheckPostState with _$NegotiationCheckPostState {
  const factory NegotiationCheckPostState.initial() = _Initial;
  const factory NegotiationCheckPostState.loading() = _Loading;
  const factory NegotiationCheckPostState.error() = _Error1;
  const factory NegotiationCheckPostState.success(DoubleResponse data) = _Success;

}
