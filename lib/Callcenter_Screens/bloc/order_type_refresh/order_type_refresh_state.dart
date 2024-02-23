part of 'order_type_refresh_bloc.dart';

class OrderTypeRefreshState {
String orderTypeVale;
OrderTypeRefreshState({required this.orderTypeVale});
}

class OrderTypeRefreshInitial extends OrderTypeRefreshState {
  OrderTypeRefreshInitial():super(orderTypeVale: "");

}
