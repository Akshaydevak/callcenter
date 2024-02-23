import 'package:freezed_annotation/freezed_annotation.dart';

part 'All_Customers.freezed.dart';
part 'All_Customers.g.dart';
@freezed
class AllCustomerList with _$AllCustomerList{
  const factory AllCustomerList({
    final int? id,
    @JsonKey(name: "order_code")final String? orderCode,
    @JsonKey(name: "customer_code")final String? customerCode,
    @JsonKey(name: "customer_name")final String? customerName,
    @JsonKey(name: "created_date")final String? createdDate,
    @JsonKey(name: "created_time")final String? createdTime,
    @JsonKey(name: "line_code")final String? lineCode,
    @JsonKey(name: "variant_id")final int? variantId,
    @JsonKey(name: "variant_name")final String? variantName,
    @JsonKey(name: "discount_based_on")final String? discountBasedOn,
    @JsonKey(name: "barcode")final String? barcode,
    @JsonKey(name: "uom_name")final String? uomName,
    @JsonKey(name: "selling_price")final double? sellingPrice,
    @JsonKey(name: "quantity")final int? quantity,
    @JsonKey(name: "unit_cost")final double? unitCost,
    @JsonKey(name: "discount")final double? discount,
    @JsonKey(name: "amount")final double? amount,
    @JsonKey(name: "vatable_amount")final double? vatableAmount,
    @JsonKey(name: "total_amount")final double? totalAmount,
    @JsonKey(name: "warranty_price")final double? warrantyPrice,
    @JsonKey(name: "last_edited_at")final String? lastEditedAt,



  })=_AllCustomerList;
  factory AllCustomerList.fromJson(Map<String,dynamic>json)=>
      _$AllCustomerListFromJson(json);
}