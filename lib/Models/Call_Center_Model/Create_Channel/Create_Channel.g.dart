// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Create_Channel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateChannel _$$_CreateChannelFromJson(Map<String, dynamic> json) =>
    _$_CreateChannel(
      channelCode: json['channel_code'] as String?,
      channelStockType: json['channel_stock_type'] as String?,
      channelName: json['channel_name'] as String?,
      inventoryId: json['inventory_id'] as String?,
      channelTypeCode: json['channel_type_code'] as String?,
    );

Map<String, dynamic> _$$_CreateChannelToJson(_$_CreateChannel instance) =>
    <String, dynamic>{
      'channel_code': instance.channelCode,
      'channel_stock_type': instance.channelStockType,
      'channel_name': instance.channelName,
      'inventory_id': instance.inventoryId,
      'channel_type_code': instance.channelTypeCode,
    };

_$_CreateOrganisation _$$_CreateOrganisationFromJson(
        Map<String, dynamic> json) =>
    _$_CreateOrganisation(
      orgType: json['organization_type'] as String?,
      code: json['code'] as String?,
    );

Map<String, dynamic> _$$_CreateOrganisationToJson(
        _$_CreateOrganisation instance) =>
    <String, dynamic>{
      'organization_type': instance.orgType,
      'code': instance.code,
    };
