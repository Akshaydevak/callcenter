
import 'package:flutter/material.dart';


class OrderStatusModel {
  String orderId;
  String orderDate;
  String userName;
  String amount;
  String status;
  OrderStatusModel({required this.orderId, required this.orderDate, required this.amount, required this.userName, required this.status});
}

List<OrderStatusModel> orderstatusList = [
  OrderStatusModel(orderId:"Order Code",orderDate: "Order Date",amount: 'Amount in AED',userName: "User Name",status: "Status"),
  OrderStatusModel(orderId:"#123456789",orderDate: "Yesterday",amount: '153.23',userName: "James Kamarun",status:"Delivered"),
  OrderStatusModel(orderId:"#123456789",orderDate: "Yesterday",amount: '153.23',userName: "James Kamarun",status:"Pending"),
  OrderStatusModel(orderId:"#123456789",orderDate: "Yesterday",amount: '153.23',userName: "James Kamarun",status:"Pending"),
  OrderStatusModel(orderId:"#123456789",orderDate: "Yesterday",amount: '153.23',userName: "James Kamarun",status:"Pending"),
  OrderStatusModel(orderId:"#123456789",orderDate: "Yesterday",amount: '153.23',userName: "James Kamarun",status:"Pending"),



];
