
import 'package:freezed_annotation/freezed_annotation.dart';

part 'Read_Sales_Return.freezed.dart';
part 'Read_Sales_Return.g.dart';

@freezed
class ReadSalesReturn with _$ReadSalesReturn{
  const factory ReadSalesReturn({
    final int? id,
    @JsonKey(name: "order_lines")final List<OrderLinesReturn>? orderLines,
    @JsonKey(name: "order_type")final String? orderType,
    @JsonKey(name: "order_mode")final String? orderMode,
    @JsonKey(name: "sales_return_order_code")final String? salesReturnOrderCode,
    @JsonKey(name: "purchase_return_order_code")final String? purchaseReturnOrderCode,
    @JsonKey(name: "returned_date")final String? returnedDate,
    @JsonKey(name: "inventory_id")final String? inventoryId,
    @JsonKey(name: "vendor_code")final String? vendorCode,
    @JsonKey(name: "customer_id")final String? customerId,
    @JsonKey(name: "trn_number")final String? trnNumber,
    @JsonKey(name: "sales_invoice_id")final String? salesInvoiceId,
    @JsonKey(name: "shipping_address_id")final String? shippingAddressId,
    @JsonKey(name: "billing_address_id")final String? billingAddressId,
    @JsonKey(name: "payment_id")final String? paymentId,
    @JsonKey(name: "payment_status")final String? paymentStatus,
    @JsonKey(name: "reason")final String? reason,
    @JsonKey(name: "remarks")final String? remarks,
    @JsonKey(name: "order_satus")final String? orderStatus,
    @JsonKey(name: "invoice_status")final String? invoiceStatus,
    @JsonKey(name: "discount")final double? discount,
    @JsonKey(name: "unit_cost")final double? unitCost,
    @JsonKey(name: "excess_tax")final double? excessTax,
    @JsonKey(name: "taxable_amount")final double? taxableAmount,
    @JsonKey(name: "vat")final double? vat,
    @JsonKey(name: "return_price_total")final double? returnPriceTotal,
    @JsonKey(name: "total_price")final double? totalPrice,
    @JsonKey(name: "status")final String? status,
    @JsonKey(name: "edited_by")final String? editedBy,
    @JsonKey(name: "sales_invoice_code")final String? salesInvoiceCode,
})=_ReadSalesReturn;
  factory ReadSalesReturn.fromJson(Map<String,dynamic>json)=>
      _$ReadSalesReturnFromJson(json);
}

@freezed
class OrderLinesReturn with _$OrderLinesReturn{
  const factory OrderLinesReturn({
    final int? id,
    @JsonKey(name: "inventory_id")final String? inventoryId,
    @JsonKey(name: "invoice_line_id")final String? invoiceLineId,
    @JsonKey(name: "variant_id")final String? variantId,
    @JsonKey(name: "barcode")final String? barcode,
    @JsonKey(name: "sales_return_order_line_code")final String? salesReturnOrderLineCode,
    @JsonKey(name: "stock_id")final String? stockId,
    @JsonKey(name: "warranty_id")final String? warrantyId,
    @JsonKey(name: "sales_uom")final String? salesUom,
    @JsonKey(name: "discount_type")final String? discountType,
    @JsonKey(name: "discount")final double? discount,
    @JsonKey(name: "unit_cost")final double? unitCost,
    @JsonKey(name: "excess_tax")final double? excessTax,
    @JsonKey(name: "taxable_amount")final double? taxableAmount,
    @JsonKey(name: "vat")final double? vat,
    @JsonKey(name: "warranty_price")final double? warrantyPrice,
    @JsonKey(name: "sold_price")final double? soldPrice,
    @JsonKey(name: "quantity")final int? quantity,
    @JsonKey(name: "return_type")final String? returnType,
    @JsonKey(name: "return_time")final int? returnTime,
    @JsonKey(name: "invoiced_date")final String? invoiceDate,
    @JsonKey(name: "invoiced_time")final String? invoiceTime,
    @JsonKey(name: "total_price")final double? totalPrice,
    @JsonKey(name: "is_invoiced")final bool? isInvoiced,
    @JsonKey(name: "is_active")final bool? isActive,
  })=_OrderLinesReturn;
  factory OrderLinesReturn.fromJson(Map<String,dynamic>json)=>
      _$OrderLinesReturnFromJson(json);
}