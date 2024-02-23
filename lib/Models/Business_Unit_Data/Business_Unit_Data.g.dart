// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Business_Unit_Data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BusinessUnitData _$$_BusinessUnitDataFromJson(Map<String, dynamic> json) =>
    _$_BusinessUnitData(
      id: json['id'] as int?,
      state: json['state'] as String?,
      country: json['country'] as String?,
      addOne: json['address_one'] as String?,
      location: json['location'] as String?,
      cityOrTown: json['city_or_town'] as String?,
      pin: json['pin'] as String?,
      landmark: json['land_mark'] as String?,
      contact: json['contact'] == null
          ? null
          : Contact.fromJson(json['contact'] as Map<String, dynamic>),
      status: json['status'] as bool?,
      email: json['email'] as String?,
      busUnitCode: json['business_unit_code'] as String?,
      name: json['name'] as String?,
      serchName: json['search_name'] as String?,
      displayName: json['display_name'] as String?,
      description: json['description'] as String?,
      isActive: json['is_active'] as bool?,
      busAddress: json['business_address'] as int?,
      userId: json['user_id'] as String?,
      isOffline: json['is_offline'] as bool?,
      legalUnitCode: json['legal_unit_code'] as String?,
    );

Map<String, dynamic> _$$_BusinessUnitDataToJson(_$_BusinessUnitData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'state': instance.state,
      'country': instance.country,
      'address_one': instance.addOne,
      'location': instance.location,
      'city_or_town': instance.cityOrTown,
      'pin': instance.pin,
      'land_mark': instance.landmark,
      'contact': instance.contact,
      'status': instance.status,
      'email': instance.email,
      'business_unit_code': instance.busUnitCode,
      'name': instance.name,
      'search_name': instance.serchName,
      'display_name': instance.displayName,
      'description': instance.description,
      'is_active': instance.isActive,
      'business_address': instance.busAddress,
      'user_id': instance.userId,
      'is_offline': instance.isOffline,
      'legal_unit_code': instance.legalUnitCode,
    };

_$_Contact _$$_ContactFromJson(Map<String, dynamic> json) => _$_Contact(
      primary: json['primary'] as String?,
    );

Map<String, dynamic> _$$_ContactToJson(_$_Contact instance) =>
    <String, dynamic>{
      'primary': instance.primary,
    };
