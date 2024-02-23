
import 'package:freezed_annotation/freezed_annotation.dart';

part 'Sales_Genaral_Sidelist.freezed.dart';
part 'Sales_Genaral_Sidelist.g.dart';

@freezed
class SalesGeneralList with _$SalesGeneralList{
  const factory SalesGeneralList({
    final int? id,
    @JsonKey(name: "sales_order_code")final String? salesOrderCode,
  }) =_SalesGeneralList;
  factory SalesGeneralList.fromJson(Map<String,dynamic>json)=>
      _$SalesGeneralListFromJson(json);

}
