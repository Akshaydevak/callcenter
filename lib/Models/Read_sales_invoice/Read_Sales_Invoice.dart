import 'package:freezed_annotation/freezed_annotation.dart';

part 'Read_Sales_Invoice.freezed.dart';
part 'Read_Sales_Invoice.g.dart';
@freezed
class ReadSalesInvoice with _$ReadSalesInvoice{
  const factory ReadSalesInvoice({
    final int? id,
    @JsonKey(name: "sales_order_code")final String? salesOrderCode,
    @JsonKey(name: "customer_id")final String? customerId,
    @JsonKey(name: "trn_number")final String? trnNumber,
    @JsonKey(name: "payment_id")final String? paymentId,
    @JsonKey(name: "payment_status")final String? paymentStatus,
    @JsonKey(name: "order_satus")final String? orderStatus,
    @JsonKey(name: "discount")final double? discount,
    @JsonKey(name: "unit_cost")final double? unitCost,
    @JsonKey(name: "excess_tax")final double? excessTax,
    @JsonKey(name: "taxable_amount")final double? taxableAmount,
    @JsonKey(name: "vat")final double? vat,
    @JsonKey(name: "selling_price_total")final double? sellingPriceTotal,
    @JsonKey(name: "warranty_price")final double? warrantyPrice,
    @JsonKey(name: "total_price")final double? totalPrice,
    @JsonKey(name: "order_lines")final List<OrderLineInvoice>? orderLineInvoice,
    @JsonKey(name: "invoice_data") final InvoiceData? invoiceDatas,


})=_ReadSalesInvoice;
  factory ReadSalesInvoice.fromJson(Map<String,dynamic>json)=>
      _$ReadSalesInvoiceFromJson(json);
}

@freezed
class OrderLineInvoice with _$OrderLineInvoice{
  const factory OrderLineInvoice({
    final int? id,
    @JsonKey(name: "invoice_line_code")final String? invoiceLineCode,
    @JsonKey(name: "variant_id")final String? variantId,
    @JsonKey(name: "variant_inventory_id")final String? variantInventoryId,
    @JsonKey(name: "barcode")final String? barcode,
    @JsonKey(name: "sales_order_line_code")final String? salesOrderLineCode,
    @JsonKey(name: "sales_uom")final String? salesUom,
    @JsonKey(name: "total_qty")final int? totalQty,
    @JsonKey(name: "quantity")final int? quantity,
    @JsonKey(name: "is_invoiced")final bool? isInvoiced,
    @JsonKey(name: "discount_type")final String? discountType,
    @JsonKey(name: "discount")final double? discount,
    @JsonKey(name: "unit_cost")final double? unitCost,
    @JsonKey(name: "excess_tax")final double? excessTax,
    @JsonKey(name: "taxable_amount")final double? taxableAmount,
    @JsonKey(name: "vat")final double? vat,
    @JsonKey(name: "selling_price")final double? sellingPrice,
    @JsonKey(name: "total_price")final double? totalPrice,
    @JsonKey(name: "warranty_price")final double? warrantyPrice,
    @JsonKey(name: "is_active")final bool? isActive,

    @JsonKey(name: "stock_id")final String? stockId,
    @JsonKey(name: "return_type")final String? returnType,
    @JsonKey(name: "return_time")final int? returnTime,
    @JsonKey(name: "invoiced_date")final String? invoiceDate,
    @JsonKey(name: "invoiced_time")final String? invoiceTime,

  })=_OrderLineInvoice;
  factory OrderLineInvoice.fromJson(Map<String,dynamic>json)=>
      _$OrderLineInvoiceFromJson(json);
}

@freezed
class InvoiceData with _$InvoiceData{
  const factory InvoiceData({
    final int? id,
    @JsonKey(name: "sales_order_id")final int? salesOrderId,
    @JsonKey(name: "invoice_code")final String? invoiceCode,
    @JsonKey(name: "created_date")final String? createdDate,
    @JsonKey(name: "notes")final String? notes,
    @JsonKey(name: "remarks")final String? remarks,
    @JsonKey(name: "invoice_status")final String? invoiceStatus,
    @JsonKey(name: "assigned_to")final String? assignTo,
    @JsonKey(name: "discount")final double? discount,
    @JsonKey(name: "unit_cost")final double? unitCost,
    @JsonKey(name: "excess_tax")final double? excessTax,
    @JsonKey(name: "taxable_amount")final double? taxableAmount,
    @JsonKey(name: "vat")final double? vat,
    @JsonKey(name: "selling_price_total")final double? sellingPriceTotal,
    @JsonKey(name: "total_price")final double? totalPrice,
    @JsonKey(name: "invoice_lines")final List<OrderLineInvoice>? invoiceLinesRead,

  })=_InvoiceData;
  factory InvoiceData.fromJson(Map<String,dynamic>json)=>
      _$InvoiceDataFromJson(json);
}

