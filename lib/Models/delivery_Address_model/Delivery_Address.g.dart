// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Delivery_Address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DeliveryAddressData _$$_DeliveryAddressDataFromJson(
        Map<String, dynamic> json) =>
    _$_DeliveryAddressData(
      id: json['id'] as int?,
      longitude: json['longitude'] as String?,
      latitude: json['latitude'] as String?,
      addressType: json['address_type'] as String?,
      country: json['country'] as String?,
      location: json['location'] as String?,
      landMark: json['landmark'] as String?,
      countryName: json['country_name'] as String?,
      state: json['state'] as String?,
      city: json['city'] as String?,
      userCode: json['user_code'] as String?,
      fullName: json['full_name'] as String?,
      contact: json['contact'] as String?,
      streetName: json['street_name'] as String?,
      buildingName: json['building_name'] as String?,
      buildingNo: json['building_no'] as String?,
      defaultValue: json['is_default'] as bool? ?? false,
    );

Map<String, dynamic> _$$_DeliveryAddressDataToJson(
        _$_DeliveryAddressData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'address_type': instance.addressType,
      'country': instance.country,
      'location': instance.location,
      'landmark': instance.landMark,
      'country_name': instance.countryName,
      'state': instance.state,
      'city': instance.city,
      'user_code': instance.userCode,
      'full_name': instance.fullName,
      'contact': instance.contact,
      'street_name': instance.streetName,
      'building_name': instance.buildingName,
      'building_no': instance.buildingNo,
      'is_default': instance.defaultValue,
    };
