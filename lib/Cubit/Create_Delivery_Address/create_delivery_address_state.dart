part of 'create_delivery_address_cubit.dart';

@freezed
class CreateDeliveryAddressState with _$CreateDeliveryAddressState {
  const factory CreateDeliveryAddressState.initial() = _Initial;
  const factory CreateDeliveryAddressState.loading() = _Loading;
  const factory CreateDeliveryAddressState.error() = _Error1;
  const factory CreateDeliveryAddressState.success(DoubleResponse data) = _Success;
}
