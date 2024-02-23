part of 'delivery_slot_refresh_bloc.dart';

 class DeliverySlotRefreshState {
   String deliverySlotVal;
   DeliverySlotRefreshState({required this.deliverySlotVal});
 }

class DeliverySlotRefreshInitial extends DeliverySlotRefreshState {
  DeliverySlotRefreshInitial():super(deliverySlotVal: "");
}
