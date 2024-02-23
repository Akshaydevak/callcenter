import 'package:freezed_annotation/freezed_annotation.dart';

part 'Read_Sales_Return_Invoice.freezed.dart';
part 'Read_Sales_Return_Invoice.g.dart';

@freezed
class ReadSalesReturnInvoice with _$ReadSalesReturnInvoice{
  const factory ReadSalesReturnInvoice({
    final int? id,
    @JsonKey(name: "order_lines")final List<SalesRetunnInvoiceOrderLines>? salesReturnInvoiceOrderLines,
    @JsonKey(name: "invoice_lines")final List<SalesRetunnInvoiceOrderLines>? salesReturnInvoiceLines,
    @JsonKey(name: "invoice_data")final  InvoiceDataSalesReturn? invoiceDataSalesReturn,
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
    @JsonKey(name: "notes")final String? notes,
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
    @JsonKey(name: "assigned_to")final String? assignTo,
    @JsonKey(name: "invoiced_by")final String? invoicedBy,
    @JsonKey(name: "customer_trn_number")final String? customerTrnNumber,
    @JsonKey(name: "sales_return_order_id")final String? salesreturnOrderId,


  }) =_ReadSalesReturnInvoice;
  factory ReadSalesReturnInvoice.fromJson(Map<String,dynamic>json)=>
      _$ReadSalesReturnInvoiceFromJson(json);

}
@freezed
class SalesRetunnInvoiceOrderLines with _$SalesRetunnInvoiceOrderLines{
  const factory SalesRetunnInvoiceOrderLines({
    final int? id,
    @JsonKey(name: "inventory_id")final String? inventoryId,
    @JsonKey(name: "invoice_line_id")final int? invoiceLineId,
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


    @JsonKey(name: "total_qty")final int? totalQty,
    @JsonKey(name: "selling_price")final double? sellingPrice,

    @JsonKey(name: "sales_return_invoice_id")final int? salesReturnInvoiceId,
    @JsonKey(name: "sales_return_order_line_id")final int? salesReturnOrderLineId,

  })=_SalesRetunnInvoiceOrderLines;
factory SalesRetunnInvoiceOrderLines.fromJson(Map<String,dynamic>json)=>
_$SalesRetunnInvoiceOrderLinesFromJson(json);

}

@freezed
class InvoiceDataSalesReturn with _$InvoiceDataSalesReturn{
  const factory InvoiceDataSalesReturn({
    final int? id,
    @JsonKey(name: "lines")final List<SalesRetunnInvoiceOrderLines>? linesReturnInvoice,
    @JsonKey(name: "sales_return_invoice_code")final String? salesReturnInvoiceCode,
    @JsonKey(name: "vendor_code")final String? vendorCode,
    @JsonKey(name: "created_date")final String? createdDate,
    @JsonKey(name: "customer_id")final String? customerId,
    @JsonKey(name: "trn_number")final String? trnNumber,
    @JsonKey(name: "notes")final String? notes,
    @JsonKey(name: "remarks")final String? remarks,
    @JsonKey(name: "invoice_status")final String? invoiceStatus,
    @JsonKey(name: "discount")final double? discount,
    @JsonKey(name: "unit_cost")final double? unitCost,
    @JsonKey(name: "excess_tax")final double? excessTax,
    @JsonKey(name: "taxable_amount")final double? taxableAmount,
    @JsonKey(name: "vat")final double? vat,
    @JsonKey(name: "return_price_total")final double? returnPriceTotal,
    @JsonKey(name: "total_price")final double? totalPrice,
    @JsonKey(name: "payment_code")final String? paymentCode,
    @JsonKey(name: "payment_status")final String? paymentStatus,
    @JsonKey(name: "payment_method")final String? paymentMethod,
    @JsonKey(name: "assigned_to")final String? assignTo,
    @JsonKey(name: "is_active")final bool? isActive,
    @JsonKey(name: "sales_return_order_id")final int? salesReturnOrderId,

  })=_InvoiceDataSalesReturn;
  factory InvoiceDataSalesReturn.fromJson(Map<String,dynamic>json)=>
      _$InvoiceDataSalesReturnFromJson(json);
}

