
import 'package:freezed_annotation/freezed_annotation.dart';

part 'Read_Sales_Genaral.freezed.dart';
part 'Read_Sales_Genaral.g.dart';

@freezed
class ReadSalesGenaral with _$ReadSalesGenaral{
  const factory ReadSalesGenaral({
    final int? id,
    @JsonKey(name: "inventory_id")final String? invId,
    @JsonKey(name: "order_type")final String? orderType,
    @JsonKey(name: "order_mode")final String? orderMode,
    @JsonKey(name: "customer_id")final String? customerId,
    @JsonKey(name: "trn_number")final String? trnNumber,
    @JsonKey(name: "shipping_address_id")final String? shippingAddressId,
    @JsonKey(name: "billing_address_id")final String? billingAddressId,
    // @JsonKey(name: "sales_quotes_id")final String? salesQuotesId,
    @JsonKey(name: "ordered_date")final String? orderedDate,
    @JsonKey(name: "payment_id")final String? paymentId,
    @JsonKey(name: "payment_status")final String? paymentStatus,
    @JsonKey(name: "warranty_price")final double? warrantyPrice,
    @JsonKey(name: "note")final String? note,
    @JsonKey(name: "remarks")final String? remarks,
    @JsonKey(name: "discount")final double? discount,
    @JsonKey(name: "unit_cost")final double? unitCost,
    @JsonKey(name: "excess_tax")final double? excessTax,
    @JsonKey(name: "taxable_amount")final double? taxableAmount,
    @JsonKey(name: "vat")final double? vat,
    @JsonKey(name: "selling_price_total")final double? sellingPriceTotal,
    @JsonKey(name: "total_price")final double? totalPrice,
    @JsonKey(name: "sales_order_code")final String? salesOrderCode,
    @JsonKey(name: "order_satus")final String? orderStatus,
    @JsonKey(name: "invoice_status")final String? invoiceStatus,
    @JsonKey(name: "order_lines")final List<OrderLines>? orderLines,
    @JsonKey(name: "edited_by")final String? editedBy

}) =_ReadSalesGenaral;
  factory ReadSalesGenaral.fromJson(Map<String,dynamic>json)=>
      _$ReadSalesGenaralFromJson(json);
}

@freezed
class OrderLines with _$OrderLines{
  const factory OrderLines({
    final int? id,
    @JsonKey(name: "inventory_id")final String? invId,
    @JsonKey(name: "variant_id")final String? variantId,
    @JsonKey(name: "variant_inventory_id")final String? variantInventoryId,
    @JsonKey(name: "barcode")final String? barcode,
    @JsonKey(name: "sales_order_line_code")final String? salesOrderLineCode,
    @JsonKey(name: "sales_uom")final String? salesUom,
    @JsonKey(name: "is_invoiced")final bool? isInvoiced,
    @JsonKey(name: "warranty_id")final String? warrantyId,
    @JsonKey(name: "discount_type")final String? discountType,
    @JsonKey(name: "discount")final double? discount,
    @JsonKey(name: "unit_cost")final double? unitCost,
    @JsonKey(name: "excess_tax")final double? excessTax,
    @JsonKey(name: "taxable_amount")final double? taxableAmount,
    @JsonKey(name: "vat")final double? vat,
    @JsonKey(name: "selling_price")final double? sellingPrice,
    @JsonKey(name: "quantity")final int? quantity,
    @JsonKey(name: "total_price")final double? totalPrice,
    @JsonKey(name: "is_active")final bool? isActive,
    @JsonKey(name: "warranty_price")final double? warrantyPrice,
    @JsonKey(name: "return_type")final String? returnType,
    @JsonKey(name: "return_time")final int? returnTime,
    @JsonKey(name: "variant_name")final String? variantName,
})=_OrderLines;
  factory OrderLines.fromJson(Map<String,dynamic>json)=>
      _$OrderLinesFromJson(json);
}