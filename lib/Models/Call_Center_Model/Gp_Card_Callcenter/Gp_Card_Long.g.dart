// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Gp_Card_Long.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GpCardData _$$_GpCardDataFromJson(Map<String, dynamic> json) =>
    _$_GpCardData(
      id: json['id'] as int?,
      dailyGpCode: json['daily_gp_code'] as String?,
      currentDate: json['current_date'] as String?,
      dailyGp: (json['daily_gp'] as num?)?.toDouble(),
      currentGp: (json['current_gp'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_GpCardDataToJson(_$_GpCardData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'daily_gp_code': instance.dailyGpCode,
      'current_date': instance.currentDate,
      'daily_gp': instance.dailyGp,
      'current_gp': instance.currentGp,
    };
