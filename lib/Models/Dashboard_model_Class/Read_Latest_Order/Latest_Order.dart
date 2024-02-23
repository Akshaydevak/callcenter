import 'package:freezed_annotation/freezed_annotation.dart';
part 'Latest_Order.freezed.dart';
part 'Latest_Order.g.dart';

@freezed
class LatestOrder with _$LatestOrder{
  const factory LatestOrder({

    final int? id,
    @JsonKey(name: "username")final String? userName,
    @JsonKey(name: "sales_order_code")final String? salesOrderCode,
    @JsonKey(name: "ordered_date")final String? orderDate,
    @JsonKey(name: "date_conversion")final String? dateConversion,
    @JsonKey(name: "selling_price_total")final double? sellingPriceTotal,
    @JsonKey(name: "order_satus")final String? orderStatus,
})=_LatestOrder;
  factory LatestOrder.fromJson(Map<String,dynamic>json)=>
      _$LatestOrderFromJson(json);
}