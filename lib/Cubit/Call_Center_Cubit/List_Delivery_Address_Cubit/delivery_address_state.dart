part of 'delivery_address_cubit.dart';

@freezed
class DeliveryAddressState with _$DeliveryAddressState {
  const factory DeliveryAddressState.initial() = _Initial;
  const factory DeliveryAddressState.loading() = _Loading;
  const factory DeliveryAddressState.success(DeliveryAddressData) = _Success;
  const factory DeliveryAddressState.error() = _Error;
}
