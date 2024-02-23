import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'delivery_slot_refresh_event.dart';
part 'delivery_slot_refresh_state.dart';

class DeliverySlotRefreshBloc extends Bloc<DeliverySlotRefreshEvent, DeliverySlotRefreshState> {
  DeliverySlotRefreshBloc() : super(DeliverySlotRefreshInitial()) {
    on<DeliverySlotRefreshEvent>((event, emit) {
     emit(DeliverySlotRefreshState(deliverySlotVal: state.deliverySlotVal));
    });
  }
}
