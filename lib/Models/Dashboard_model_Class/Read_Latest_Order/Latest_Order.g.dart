// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Latest_Order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LatestOrder _$$_LatestOrderFromJson(Map<String, dynamic> json) =>
    _$_LatestOrder(
      id: json['id'] as int?,
      userName: json['username'] as String?,
      salesOrderCode: json['sales_order_code'] as String?,
      orderDate: json['ordered_date'] as String?,
      dateConversion: json['date_conversion'] as String?,
      sellingPriceTotal: (json['selling_price_total'] as num?)?.toDouble(),
      orderStatus: json['order_satus'] as String?,
    );

Map<String, dynamic> _$$_LatestOrderToJson(_$_LatestOrder instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.userName,
      'sales_order_code': instance.salesOrderCode,
      'ordered_date': instance.orderDate,
      'date_conversion': instance.dateConversion,
      'selling_price_total': instance.sellingPriceTotal,
      'order_satus': instance.orderStatus,
    };