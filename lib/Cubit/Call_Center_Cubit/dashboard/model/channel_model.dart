import 'package:freezed_annotation/freezed_annotation.dart';

part 'channel_model.freezed.dart';
part 'channel_model.g.dart';

@freezed
class ChannelCreateModel with _$ChannelCreateModel{
  const factory ChannelCreateModel({

    @JsonKey(name: "channel_code")final String? channelCode,
    @JsonKey(name: "channel_id")final String? channelId,
    @JsonKey(name: "channel_stock_type")final String? channelStockType,
    @JsonKey(name: "channel_name")final String? channelName,
    @JsonKey(name: "inventory_id")final String? inventoryId,
    @JsonKey(name: "channel_type_code")final String? channelTypeCode,
  })=_ChannelCreateModel;
  factory ChannelCreateModel.fromJson(Map<String, dynamic> json) =>
      _$ChannelCreateModelFromJson(json);
}