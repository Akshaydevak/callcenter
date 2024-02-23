import 'package:freezed_annotation/freezed_annotation.dart';
part 'All_Orders.freezed.dart';
part 'All_Orders.g.dart';

@freezed
class AllOrdersTables with _$AllOrdersTables{
  const factory AllOrdersTables({
    final int? id,
    final bool? loading,
    final bool? isLoading,
    @JsonKey(name: "order_code")final String? orderCode,
    @JsonKey(name: "ordered_date")final String? orderdDate,
    @JsonKey(name: "customer_code")final String? customerCode,
    @JsonKey(name: "customer_name")final String? customerName,
    @JsonKey(name: "customer_trn_number")final String? customerTrn,
    @JsonKey(name: "total")final double? total,
    @JsonKey(name: "order_satus")final String? orderStatus,
    @JsonKey(name: "payment_status")final String? paymentStatus,
    @JsonKey(name: "invoice_status")final String? inVoiceStatus,
    @JsonKey(name: "delivery_address")final String? deliveryAdrress,
    @JsonKey(name: "invoice_id")final int? invoiceId,


    @JsonKey(name: "notes")final String? notes,
    @JsonKey(name: "remarks")final String? remarks,
    @JsonKey(name: "vat")final double? vat,
    @JsonKey(name: "discount")final double? discount,
    @JsonKey(name: "line")final List<LinesAllOrder>? lines,


  })=_AllOrdersTables;
  factory AllOrdersTables.fromJson(Map<String,dynamic>json)=>
      _$AllOrdersTablesFromJson(json);
}

@freezed
class LinesAllOrder with _$LinesAllOrder{
  const factory LinesAllOrder({
    final int? id,
    @JsonKey(name: "line_code")final String? lineCode,
    @JsonKey(name: "variant_id")final int? variantId,
    @JsonKey(name: "variant_code")final String? variantCode,
    @JsonKey(name: "variant_name")final String? variantName,
    @JsonKey(name: "barcode")final String? barcode,
    @JsonKey(name: "uom_id")final int? uomId,
    @JsonKey(name: "uom_name")final String? uomName,
    @JsonKey(name: "selling_price")final double? sellingPrice,
    @JsonKey(name: "quantity")final int? quantity,
    @JsonKey(name: "unit_cost")final double? unitCost,
    @JsonKey(name: "discount")final double? discount,
    @JsonKey(name: "amount")final double? amount,
    @JsonKey(name: "vat")final double? vat,
    @JsonKey(name: "vatable_amount")final double? vatableAmount,
    @JsonKey(name: "total_amount")final double? total,
    @JsonKey(name: "is_invoiced",defaultValue: false)final bool? isInvoiced,
    @JsonKey(name: "warranty_price")final double? warrantyPrice,
    @JsonKey(name: "warranty_id")final int? warrantyId,
    @JsonKey(name: "shipping_address_id")final int? shippingAddressId,
    @JsonKey(name: "return_type")final String? returnType,
    @JsonKey(name: "return_time")final double? returnTime,
    @JsonKey(name: "is_active")final bool? isActive,
    @JsonKey(name: "last_edited_at")final String? lastEdited,
    @JsonKey(name: "order_id")final int? orderId,


  })=_LinesAllOrder;
  factory LinesAllOrder.fromJson(Map<String,dynamic>json)=>
      _$LinesAllOrderFromJson(json);
}