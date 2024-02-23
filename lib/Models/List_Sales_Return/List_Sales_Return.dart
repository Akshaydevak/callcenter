
import 'package:freezed_annotation/freezed_annotation.dart';

part 'List_Sales_Return.freezed.dart';
part 'List_Sales_Return.g.dart';

@freezed
class SalesReturnList with _$SalesReturnList{
  const factory SalesReturnList({
    final int? id,
    @JsonKey(name: "sales_return_order_code")final String? salesOrderCode,
  }) =_SalesReturnList;
  factory SalesReturnList.fromJson(Map<String,dynamic>json)=>
      _$SalesReturnListFromJson(json);

}
