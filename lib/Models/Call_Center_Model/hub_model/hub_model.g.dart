// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hub_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HubResponseModel _$$_HubResponseModelFromJson(Map<String, dynamic> json) =>
    _$_HubResponseModel(
      id: json['id'] as int?,
      variantCode: json['variant_code'] as String?,
      inventoryId: json['inventory_id'] as String?,
      hubStockName: json['hub_stock_name'] as String?,
      hubCode: json['hub_code'] as String?,
      hubStockCode: json['hub_stock_code'] as String?,
      stockQty: json['stock_qty'] as int?,
    );

Map<String, dynamic> _$$_HubResponseModelToJson(_$_HubResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'variant_code': instance.variantCode,
      'inventory_id': instance.inventoryId,
      'hub_stock_name': instance.hubStockName,
      'hub_code': instance.hubCode,
      'hub_stock_code': instance.hubStockCode,
      'stock_qty': instance.stockQty,
    };