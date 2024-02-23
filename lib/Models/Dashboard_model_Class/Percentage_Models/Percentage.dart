import 'package:freezed_annotation/freezed_annotation.dart';
part 'Percentage.freezed.dart';
part 'Percentage.g.dart';
@freezed
class Percentage with _$Percentage{
  const factory Percentage({
    @JsonKey(name: "increase")final String? increase,
    @JsonKey(name: "decrease")final String? decrease,
  })=_Percentage;
  factory Percentage.fromJson(Map<String,dynamic>json)=>
      _$PercentageFromJson(json);
}

@freezed
class PercentageGp with _$PercentageGp{
  const factory PercentageGp({
    @JsonKey(name: "data")final double? data,

  })=_PercentageGp;
  factory PercentageGp.fromJson(Map<String,dynamic>json)=>
      _$PercentageGpFromJson(json);
}