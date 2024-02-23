part of 'delivery_slot_cubit.dart';


@freezed
class DeliverySlotState with _$DeliverySlotState {
  const factory DeliverySlotState.initial() = _Initial;
  const factory DeliverySlotState.loading() = _Loading;
  const factory DeliverySlotState.error() = _Error;
  const factory DeliverySlotState.success(List<DeliverySlotResultModel>data) =_Success;
}
