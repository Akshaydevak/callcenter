import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:salesapp/Models/Call_Center_Model/Read_Orders/Read_Orders.dart';

part 'Invoice_Orders.freezed.dart';
part 'Invoice_Orders.g.dart';
@freezed
class InvoiceOrderCallCenter with _$InvoiceOrderCallCenter{
  const factory InvoiceOrderCallCenter({
    final int? id,
    @JsonKey(name: "invoiced_date")final String? invoiceDate,
    @JsonKey(name: "invoice_time")final String? invoiceTime,
    @JsonKey(name: "invoice_code")final String? invoiceCode,
    @JsonKey(name: "invoice_data")final InvoiceData? invoiceData,
    @JsonKey(name: "lines")final List<LinesInvoiceCallcenter>? linesCallcenter,
    @JsonKey(name: "invoice_line")final List<LinesInvoiceCallcenter>? invoiceLinesCallcenter,
    @JsonKey(name: "order_id")final int? orderId,
    @JsonKey(name: "order_code")final String? orderCode,
    @JsonKey(name: "order_type")final String? orderType,
    @JsonKey(name: "customer_code")final String? customerCode,
    @JsonKey(name: "customer_name")final String? customerName,
    @JsonKey(name: "customer_mail_id")final String? customerMailId,
    @JsonKey(name: "customer_trn_number")final String? customerTrn,
    @JsonKey(name: "shipping_address_id")final int? shippingId,
    @JsonKey(name: "billing_address_id")final int? billingId,
    @JsonKey(name: "created_by")final String? createdBy,
    @JsonKey(name: "customer_group_code")final String? customerGrouCode,
    @JsonKey(name: "discount")final double? discount,
    @JsonKey(name: "vatable_amount")final double? vatableAmount,
    @JsonKey(name: "total_line_count")final double? totalLineCount,
    @JsonKey(name: "total_amount")final double? totalAmount,
    @JsonKey(name: "vat")final double? vat,
    @JsonKey(name: "total")final double? total,
    @JsonKey(name: "unit_cost")final double? unitCost,
    @JsonKey(name: "selling_price_total")final double? sellingPriceTotal,
    @JsonKey(name: "is_holded")final bool? isHolded,
    @JsonKey(name: "selling_price")final double? sellingPrice,
    @JsonKey(name: "delivery_charge")final double? deliveryCharge,
    @JsonKey(name: "order_satus")final String? orderStatus,
    @JsonKey(name: "payment_status")final String? paymentStatus,
    @JsonKey(name: "invoice_status")final String? invoiceStatus,
    @JsonKey(name: "notes")final String? notes,
    @JsonKey(name: "remarks")final String? remarks,
    @JsonKey(name: "last_edited_at")final String? lastEditedAt,
    @JsonKey(name: "channel_details_id")final int? channelDetailsId,
    @JsonKey(name: "channel_data")final ChannelData? channelData,



  })=_InvoiceOrderCallCenter;
  factory InvoiceOrderCallCenter.fromJson(Map<String,dynamic>json)=>
      _$InvoiceOrderCallCenterFromJson(json);
}



@freezed
class InvoiceData with _$InvoiceData{
  const factory InvoiceData({
    final int? id,
    @JsonKey(name: "invoiced_date")final String? invoiceDate,
    @JsonKey(name: "invoice_time")final String? invoiceTime,
    @JsonKey(name: "invoice_code")final String? invoiceCode,
    @JsonKey(name: "lines")final List<LinesInvoiceCallcenter>? linesCallcenter,
    @JsonKey(name: "invoice_line")final List<LinesInvoiceCallcenter>? invoiceLinesCallcenter,
    @JsonKey(name: "order_id")final int? orderId,
    @JsonKey(name: "order_code")final String? orderCode,

    @JsonKey(name: "order_type")final String? orderType,
    @JsonKey(name: "customer_code")final String? customerCode,
    @JsonKey(name: "customer_name")final String? customerName,
    @JsonKey(name: "customer_mail_id")final String? customerMailId,
    @JsonKey(name: "customer_trn_number")final String? customerTrn,
    @JsonKey(name: "shipping_address_id")final int? shippingId,
    @JsonKey(name: "total_line_count")final double? totalLineCount,
    @JsonKey(name: "billing_address_id")final int? billingId,
    @JsonKey(name: "created_by")final String? createdBy,
    @JsonKey(name: "discount")final double? discount,
    @JsonKey(name: "vatable_amount")final double? vatableAmount,
    @JsonKey(name: "total_amount")final double? totalAmount,
    @JsonKey(name: "vat")final double? vat,
    @JsonKey(name: "total")final double? total,
    @JsonKey(name: "unit_cost")final double? unitCost,
    @JsonKey(name: "is_holded")final bool? isHolded,
    @JsonKey(name: "selling_price")final double? sellingPrice,
    @JsonKey(name: "order_satus")final String? orderStatus,
    @JsonKey(name: "payment_status")final String? paymentStatus,
    @JsonKey(name: "invoice_status")final String? invoiceStatus,
    @JsonKey(name: "customer_group_code")final String? customerGroupcode,
    @JsonKey(name: "notes")final String? notes,
    @JsonKey(name: "remarks")final String? remarks,
    @JsonKey(name: "last_edited_at")final String? lastEditedAt,
    @JsonKey(name: "channel_details_id")final int? channelDetailsId,
    @JsonKey(name: "channel_data")final ChannelData? channelData,
    @JsonKey(name: "delivery_charge")final double? deliveryCharge,


  })=_InvoiceData;
  factory InvoiceData.fromJson(Map<String,dynamic>json)=>
      _$InvoiceDataFromJson(json);
}

@freezed
class LinesInvoiceCallcenter with _$LinesInvoiceCallcenter{
  const factory LinesInvoiceCallcenter({
    final int? id,
    final String? image,
    @JsonKey(name: "line_code")final String? lineCode,
    @JsonKey(name: "invoice_line_code")final String? invoiceLineCode,
    @JsonKey(name: "variant_id")final int? variantId,
    @JsonKey(name: "variant_code")final String? variantCode,
    @JsonKey(name: "variant_name")final String? variantName,
    @JsonKey(name: "barcode")final String? barcode,
    @JsonKey(name: "uom_id")final int? uomId,
    @JsonKey(name: "uom_name")final String? uomName,
    @JsonKey(name: "selling_price")final double? sellingPrice,
    @JsonKey(name: "quantity")final int? quantity,
    @JsonKey(name: "unit_cost")final double? unitcost,
    @JsonKey(name: "delivery_charge")final double? deliveryCharge,
    @JsonKey(name: "delivery_slot_id")final int? deliverySlotID,
    @JsonKey(name: "discount")final double? discount,
    @JsonKey(name: "amount")final double? amount,
    @JsonKey(name: "vatable_amount")final double? vatableAmount,
    @JsonKey(name: "vat")final double? vat,
    @JsonKey(name: "total_amount")final double? totalAmount,
    @JsonKey(name: "warranty_price")final double? warrantyPrice,
    @JsonKey(name: "warranty_id")final int? warrantyId,
    @JsonKey(name: "shipping_address_id")final int? shippingId,
    @JsonKey(name: "return_type")final String? returnType,
    @JsonKey(name: "return_time")final double? returnTime,
    @JsonKey(name: "is_invoiced")final bool? isInvoiced,
    @JsonKey(name: "discount_based_on")final String? dicountBasedOn,
    @JsonKey(name: "is_active")final bool? isActive,
    @JsonKey(name: "last_edited_at")final String? lastEditedAt,
    @JsonKey(name: "order_id")final int? orderId,
    @JsonKey(name: "invoice_id")final int? invoiceId,
    @JsonKey(name: "order_line_id")final int? orderlineId,


  })=_LinesInvoiceCallcenter;
  factory LinesInvoiceCallcenter.fromJson(Map<String,dynamic>json)=>
      _$LinesInvoiceCallcenterFromJson(json);
}