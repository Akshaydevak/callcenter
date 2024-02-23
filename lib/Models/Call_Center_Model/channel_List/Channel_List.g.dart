// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Channel_List.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChannelList _$$_ChannelListFromJson(Map<String, dynamic> json) =>
    _$_ChannelList(
      id: json['id'] as int?,
      state: json['state'] as String?,
      country: json['country'] as String?,
      addressTypeId: json['address_type_id'] as String?,
      addressOne: json['address_one'] as String?,
      addressTwo: json['address_two'] as String?,
      location: json['location'] as String?,
      cityOrTown: json['city_or_town'] as String?,
      pin: json['pin'] as String?,
      landmark: json['land_mark'] as String?,
      contact: json['contact'] == null
          ? null
          : Contact.fromJson(json['contact'] as Map<String, dynamic>),
      status: json['status'] as bool?,
      email: json['email'] as String?,
      name: json['name'] as String?,
      entryCode: json['entiry_code'] as String?,
      stockType: json['stock_type'] as String?,
      channelType: json['channel_type'] as String?,
      channeTypeCode: json['channel_type_code'] as String?,
      channelTypeId: json['channel_type_id'] as int?,
      channelCode: json['channel_code'] as String?,
      description: json['description'] as String?,
      userId: json['user_id'] as String?,
      searchName: json['search_name'] as String?,
      displayName: json['display_name'] as String?,
      created: json['created'] as String?,
      businessEntity: (json['business_entity'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_ChannelListToJson(_$_ChannelList instance) =>
    <String, dynamic>{
      'id': instance.id,
      'state': instance.state,
      'country': instance.country,
      'address_type_id': instance.addressTypeId,
      'address_one': instance.addressOne,
      'address_two': instance.addressTwo,
      'location': instance.location,
      'city_or_town': instance.cityOrTown,
      'pin': instance.pin,
      'land_mark': instance.landmark,
      'contact': instance.contact,
      'status': instance.status,
      'email': instance.email,
      'name': instance.name,
      'entiry_code': instance.entryCode,
      'stock_type': instance.stockType,
      'channel_type': instance.channelType,
      'channel_type_code': instance.channeTypeCode,
      'channel_type_id': instance.channelTypeId,
      'channel_code': instance.channelCode,
      'description': instance.description,
      'user_id': instance.userId,
      'search_name': instance.searchName,
      'display_name': instance.displayName,
      'created': instance.created,
      'business_entity': instance.businessEntity,
    };

_$_Contact _$$_ContactFromJson(Map<String, dynamic> json) => _$_Contact(
      primary: json['primary'] as String?,
    );

Map<String, dynamic> _$$_ContactToJson(_$_Contact instance) =>
    <String, dynamic>{
      'primary': instance.primary,
    };
