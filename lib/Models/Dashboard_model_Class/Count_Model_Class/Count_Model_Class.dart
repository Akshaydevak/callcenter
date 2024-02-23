import 'package:freezed_annotation/freezed_annotation.dart';
part 'Count_Model_Class.freezed.dart';
part 'Count_Model_Class.g.dart';
@freezed
class CountModels with _$CountModels{
  const factory CountModels({

    @JsonKey(name: "count")final int? count,
    // @JsonKey(name: "order_satus")final String? orderStatus,
  })=_CountModels;
  factory CountModels.fromJson(Map<String,dynamic>json)=>
      _$CountModelsFromJson(json);
}