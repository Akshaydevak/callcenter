import 'package:freezed_annotation/freezed_annotation.dart';

part 'Create_Channel.freezed.dart';
part 'Create_Channel.g.dart';
@freezed
class CreateChannel with _$CreateChannel{
  const factory CreateChannel({

    @JsonKey(name: "channel_code")final String? channelCode,
    @JsonKey(name: "channel_stock_type")final String? channelStockType,
    @JsonKey(name: "channel_name")final String? channelName,
    @JsonKey(name: "inventory_id")final String? inventoryId,
    @JsonKey(name: "channel_type_code")final String? channelTypeCode,

  })=_CreateChannel;
  factory CreateChannel.fromJson(Map<String,dynamic>json)=>
      _$CreateChannelFromJson(json);
}

@freezed
class CreateOrganisation with _$CreateOrganisation{
  const factory CreateOrganisation({

    @JsonKey(name: "organization_type")final String? orgType,
    @JsonKey(name: "code")final String? code,

  })=_CreateOrganisation;
  factory CreateOrganisation.fromJson(Map<String,dynamic>json)=>
      _$CreateOrganisationFromJson(json);
}