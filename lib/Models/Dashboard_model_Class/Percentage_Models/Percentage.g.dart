// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Percentage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Percentage _$$_PercentageFromJson(Map<String, dynamic> json) =>
    _$_Percentage(
      increase: json['increase'] as String?,
      decrease: json['decrease'] as String?,
    );

Map<String, dynamic> _$$_PercentageToJson(_$_Percentage instance) =>
    <String, dynamic>{
      'increase': instance.increase,
      'decrease': instance.decrease,
    };

_$_PercentageGp _$$_PercentageGpFromJson(Map<String, dynamic> json) =>
    _$_PercentageGp(
      data: (json['data'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_PercentageGpToJson(_$_PercentageGp instance) =>
    <String, dynamic>{
      'data': instance.data,
    };