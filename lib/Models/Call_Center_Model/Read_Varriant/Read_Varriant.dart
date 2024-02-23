import 'package:freezed_annotation/freezed_annotation.dart';
part 'Read_Varriant.freezed.dart';
part 'Read_Varriant.g.dart';
@freezed
class ReadVarriant with _$ReadVarriant{
  const factory ReadVarriant({
    final int? id,
    final bool? isChangePrize,
    @JsonKey(name: "code")final String? code,
    @JsonKey(name: "barcode")final String? barcode,
    @JsonKey(name: "name")final String? name,
    @JsonKey(name: "image1")final String? image1,
    @JsonKey(name: "sales_uom")final String? salesUom,
    @JsonKey(name: "sales_uom_name")final String? salesUomName,
    @JsonKey(name: "unit_cost")final double? unitCost,
    @JsonKey(name: "return_time")final double? returnTime,
    @JsonKey(name: "actual_cost")final double? actualCost,
    @JsonKey(name: "min_gp")final double? minGp,
    @JsonKey(name: "delivery_charge")final double? deliveryCharge,
    @JsonKey(name: "avrg_gp")final double? avgGp,
    @JsonKey(name: "warranty_price")final double? warrantyPrice,
    @JsonKey(name: "max_gp")final double? maxGp,
    @JsonKey(name: "targeted_gp")final double? targetGp,
    @JsonKey(name: "vat")final double? vat,
    @JsonKey(name: "original_price")final double? orginalPrice,
    @JsonKey(name: "return_type")final String? returnType,
    @JsonKey(name: "discount_based_on")final String? discountBasedOn,
    @JsonKey(name: "category_code")final String? categoryCode,
    @JsonKey(name: "group_code")final String? groupCode,
    @JsonKey(name: "inventory_id")final String? inventoryId,
    @JsonKey(name: "is_active",defaultValue: false)final bool? isActive,

    @JsonKey(name: "need_approval",defaultValue: false)final bool? needApproval,
    @JsonKey(name: "delivery_slot_id")final int? deliverySlotId,

    // @JsonKey(name: "min_sales_order_limit")final String? minSalesOrderLimit,
    // @JsonKey(name: "max_sales_order_limit")final String? maxSalesOrderLimit,
    @JsonKey(name: "discount_data")final DiscountData? discountData,
    @JsonKey(name: "price_data")final double? priceData,
    @JsonKey(name: "stock_count")final int? stockCount,
    @JsonKey(name: "qty")final int? qty,
    @JsonKey(name: "total")final double? total,
    @JsonKey(name: "vatable")final double? vatable,
    @JsonKey(name: "approval_cap_amount")final double? approvalCapAmount,
    @JsonKey(name: "segment_list")final List<String>? segmentList,


  })=_ReadVarriant;
  factory ReadVarriant.fromJson(Map<String,dynamic>json)=>
      _$ReadVarriantFromJson(json);
}

@freezed
class DiscountData with _$DiscountData{
  const factory DiscountData({
    @JsonKey(name: "is_discount_have")final bool? isDiscountHave,
    @JsonKey(name: "discount_type")final String? discountType,
    @JsonKey(name: "discount_percentage_price")final double? discountPercentagePrice,
    @JsonKey(name: "discount_applied_price")final double? discountAppliedPrice,

  })=_DiscountData;
  factory DiscountData.fromJson(Map<String,dynamic>json)=>
      _$DiscountDataFromJson(json);
}