// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChannelCreateModel _$$_ChannelCreateModelFromJson(
        Map<String, dynamic> json) =>
    _$_ChannelCreateModel(
      channelCode: json['channel_code'] as String?,
      channelId: json['channel_id'] as String?,
      channelStockType: json['channel_stock_type'] as String?,
      channelName: json['channel_name'] as String?,
      inventoryId: json['inventory_id'] as String?,
      channelTypeCode: json['channel_type_code'] as String?,
    );

Map<String, dynamic> _$$_ChannelCreateModelToJson(
        _$_ChannelCreateModel instance) =>
    <String, dynamic>{
      'channel_code': instance.channelCode,
      'channel_id': instance.channelId,
      'channel_stock_type': instance.channelStockType,
      'channel_name': instance.channelName,
      'inventory_id': instance.inventoryId,
      'channel_type_code': instance.channelTypeCode,
    };
