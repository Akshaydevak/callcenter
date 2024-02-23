import 'package:freezed_annotation/freezed_annotation.dart';
part 'Gp_Card_Long.freezed.dart';
part 'Gp_Card_Long.g.dart';
@freezed
class GpCardData with _$GpCardData{
  const factory GpCardData({
    final int? id,
    @JsonKey(name: "daily_gp_code")final String? dailyGpCode,
    @JsonKey(name: "current_date")final String? currentDate,
    @JsonKey(name: "daily_gp")final double? dailyGp,
    @JsonKey(name: "current_gp")final double? currentGp,

  })=_GpCardData;
  factory GpCardData.fromJson(Map<String,dynamic>json)=>
      _$GpCardDataFromJson(json);
}