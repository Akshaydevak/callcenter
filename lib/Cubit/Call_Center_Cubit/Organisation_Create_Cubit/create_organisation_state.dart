part of 'create_organisation_cubit.dart';

@freezed
class CreateOrganisationState with _$CreateOrganisationState {
  const factory CreateOrganisationState.initial() = _Initial;
  const factory CreateOrganisationState.loading() = _Loading;
  const factory CreateOrganisationState.error() = _Error1;
  const factory CreateOrganisationState.success(DoubleResponse data) = _Success;
}
