import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'order_type_refresh_event.dart';
part 'order_type_refresh_state.dart';

class OrderTypeRefreshBloc extends Bloc<OrderTypeRefreshEvent, OrderTypeRefreshState> {
  OrderTypeRefreshBloc() : super(OrderTypeRefreshInitial()) {
    on<OrderTypeRefreshEvent>((event, emit) {
      emit(OrderTypeRefreshState(orderTypeVale: state.orderTypeVale));
      // TODO: implement event handler
    });
  }
}
