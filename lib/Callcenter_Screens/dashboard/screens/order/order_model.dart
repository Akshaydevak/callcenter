
import 'package:flutter/material.dart';


class OrderModel {
  String image;
  String name;
  String amount;
  String percentage;
  OrderModel({required this.image, required this.name, required this.amount, required this.percentage});
}

List<OrderModel> orderList = [
  OrderModel(image:"assets/img_1.png",name: "Wireless Headphones with Noies with Noisese Cancellation ...",amount: '100',percentage: "10"),
  OrderModel(image:"assets/img_2.png",name: "Smartphone 5G Black 12GB RAM+G Black 12GB RAM+NEW",amount: '100',percentage: "10"),
  OrderModel(image:"assets/img_1.png",name: "Smartwatch IP68 WaterproofIP68 Waterpro GPS and Bluetooth ...",amount: '100',percentage: "10"),
  OrderModel(image:"assets/img_1.png",name: "Smartwatch IP68 WaterproofIP68 Waterpro GPS and Bluetooth ...",amount: '100',percentage: "10"),
  OrderModel(image:"assets/img_1.png",name: "Smartwatch IP68 WaterproofIP68 Waterpro GPS and Bluetooth ...",amount: '100',percentage: "10"),


];
