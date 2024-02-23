part of 'default_delivery_address_cubit.dart';


@freezed

class DefaultDeliveryAddressState with _$DefaultDeliveryAddressState {
  const factory DefaultDeliveryAddressState.initial() = _Initial;
  const factory DefaultDeliveryAddressState.loading() = _Loading;
  const factory DefaultDeliveryAddressState.error() = _Error1;
  const factory DefaultDeliveryAddressState.success(DoubleResponse data) = _Success;
}
