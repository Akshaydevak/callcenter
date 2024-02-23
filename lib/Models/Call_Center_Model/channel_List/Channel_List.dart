import 'package:freezed_annotation/freezed_annotation.dart';

part 'Channel_List.freezed.dart';
part 'Channel_List.g.dart';

@freezed
class ChannelList with _$ChannelList{
  const factory ChannelList({
    final int? id,
    @JsonKey(name: "state")final String? state,
    @JsonKey(name: "country")final String? country,
    @JsonKey(name: "address_type_id")final String? addressTypeId,
    @JsonKey(name: "address_one")final String? addressOne,
    @JsonKey(name: "address_two")final String? addressTwo,
    @JsonKey(name: "location")final String? location,
    @JsonKey(name: "city_or_town")final String? cityOrTown,
    @JsonKey(name: "pin")final String? pin,
    @JsonKey(name: "land_mark")final String? landmark,
    @JsonKey(name: "contact")final Contact? contact,
    @JsonKey(name: "status")final bool? status,
    @JsonKey(name: "email")final String? email,
    @JsonKey(name: "name")final String? name,
    @JsonKey(name: "entiry_code")final String? entryCode,
    @JsonKey(name: "stock_type")final String? stockType,
    @JsonKey(name: "channel_type")final String? channelType,
    @JsonKey(name: "channel_type_code")final String? channeTypeCode,
    @JsonKey(name: "channel_type_id")final int? channelTypeId,
    @JsonKey(name: "channel_code")final String? channelCode,
    @JsonKey(name: "description")final String? description,
    @JsonKey(name: "user_id")final String? userId,
    @JsonKey(name: "search_name")final String? searchName,
    @JsonKey(name: "display_name")final String? displayName,
    @JsonKey(name: "created")final String? created,

    @JsonKey(name: "business_entity")final List<String>? businessEntity,


  })=_ChannelList;
  factory ChannelList.fromJson(Map<String,dynamic>json)=>
      _$ChannelListFromJson(json);
}

@freezed
class Contact with _$Contact {
  const factory Contact({
    @JsonKey(name: "primary") final String? primary,

  })=_Contact;

  factory Contact.fromJson(Map<String, dynamic>json)=>
      _$ContactFromJson(json);
}