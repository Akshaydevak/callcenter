import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:salesapp/Models/Call_Center_Model/Read_Customer_List/Customer_List.dart';

part 'Read_Orders.freezed.dart';
part 'Read_Orders.g.dart';
@freezed
class ReadOrderCallCenter with _$ReadOrderCallCenter{
  const factory ReadOrderCallCenter({
    final int? id,
    @JsonKey(name: "ordered_date")final String? orderdDate,
    @JsonKey(name: "ordered_time")final String? orderTime,
    @JsonKey(name: "total_line_count")final double? totalLineCount,
    @JsonKey(name: "lines")final List<LinesCallcenter>? linesCallcenter,
    @JsonKey(name: "order_lines")final List<LinesCallcenter>? patchOrderLines,
    @JsonKey(name: "order_code")final String? orderCode,
    @JsonKey(name: "order_type")final String? orderType,
    @JsonKey(name: "delivery_charge")final double? deliveryCharge,
    @JsonKey(name: "customer_code")final String? customerCode,
    @JsonKey(name: "customer_name")final String? customerName,
    @JsonKey(name: "customer_mail_id")final String? customerMailId,
    @JsonKey(name: "customer_trn_number")final String? customerTrn,
    @JsonKey(name: "shipping_address_id")final int? shippingId,
    @JsonKey(name: "billing_address_id")final int? billingId,
    @JsonKey(name: "created_by")final String? createdBy,
    @JsonKey(name: "discount")final double? discount,
    @JsonKey(name: "vatable_amount")final double? vatableAmount,
    @JsonKey(name: "vat")final double? vat,
    @JsonKey(name: "total")final double? total,
    @JsonKey(name: "unit_cost")final double? unitCost,
    @JsonKey(name: "is_holded")final bool? isHolded,
    @JsonKey(name: "selling_price")final double? sellingPrice,
    @JsonKey(name: "order_satus")final String? orderStatus,
    @JsonKey(name: "payment_status")final String? paymentStatus,
    @JsonKey(name: "invoice_status")final String? invoiceStatus,
    @JsonKey(name: "notes")final String? notes,
    @JsonKey(name: "remarks")final String? remarks,
    @JsonKey(name: "delivery_address")final String? deliveryAddress,
    @JsonKey(name: "customer_phone_number")final String? customerPhoneNumber,
    @JsonKey(name: "delivery_address_full_data")final DeliveryAddressModel? deliveryAddressFullData,
    @JsonKey(name: "customer_group_code")final String? customerGroupCode,
    @JsonKey(name: "last_edited_at")final String? lastEditedAt,
    @JsonKey(name: "channel_details_id")final int? channelDetailsId,
    @JsonKey(name: "channel_data")final ChannelData? channelData,
    @JsonKey(name: "need_approval",defaultValue: false)final bool? needApproval,


  })=_ReadOrderCallCenter;
  factory ReadOrderCallCenter.fromJson(Map<String,dynamic>json)=>
      _$ReadOrderCallCenterFromJson(json);
}



@freezed
class ChannelData with _$ChannelData{
  const factory ChannelData({
    @JsonKey(name: "channel_code")final String? channelCode,
    @JsonKey(name: "channel_id")final int? channelId,



  })=_ChannelData;
  factory ChannelData.fromJson(Map<String,dynamic>json)=>
      _$ChannelDataFromJson(json);
}

@freezed
class LinesCallcenter with _$LinesCallcenter{
  const factory LinesCallcenter({
    final int? id,
    final String? image,
    @JsonKey(name: "line_code")final String? lineCode,
    @JsonKey(name: "variant_id")final int? variantId,
    @JsonKey(name: "variant_code")final String? variantCode,
    @JsonKey(name: "variant_name")final String? variantName,
    @JsonKey(name: "image1")final String? image1,

    @JsonKey(name: "barcode")final String? barcode,
    @JsonKey(name: "uom_id")final int? uomId,
    @JsonKey(name: "uom_name")final String? uomName,
    @JsonKey(name: "actual_cost")final double? actualCost,
    @JsonKey(name: "selling_price")final double? sellingPrice,
    @JsonKey(name: "quantity")final int? quantity,
    @JsonKey(name: "old_quantity")final int? oldQty,
    @JsonKey(name: "unit_cost")final double? unitcost,
    @JsonKey(name: "reason_of_approval_reject")final String? reasonOfApprovalReject,
    @JsonKey(name: "discount_based_on")final String? discountBasedOn,
    @JsonKey(name: "discount")final double? discount,
    @JsonKey(name: "amount")final double? amount,
    @JsonKey(name: "vat")final double? vat,
    @JsonKey(name: "vatable_amount")final double? vatableAmount,
    @JsonKey(name: "total_amount")final double? totalAmount,
    @JsonKey(name: "warranty_price")final double? warrantyPrice,
    @JsonKey(name: "warranty_id")final int? warrantyId,
    @JsonKey(name: "shipping_address_id")final int? shippingId,
    @JsonKey(name: "return_type")final String? returnType,
    @JsonKey(name: "hub_code")final String? hubCode,
    @JsonKey(name: "hub_Name")final String? hubName,
    @JsonKey(name: "return_time")final double? returnTime,
    @JsonKey(name: "is_invoiced")final bool? isInvoiced,
    @JsonKey(name: "is_active",defaultValue: false)final bool? isActive,
    @JsonKey(name: "last_edited_at")final String? lastEditedAt,
    @JsonKey(name: "approval_status")final String? approvalStatus,
    @JsonKey(name: "order_id")final int? orderId,
    @JsonKey(name: "delivery_slot_id")final int? deliverySlotId,
    @JsonKey(name: "delivery_charge")final double? deliveryCharge,
    @JsonKey(name: "need_approval",defaultValue: false)final bool? needApproval,
    @JsonKey(name: "is_approved",defaultValue: false)final bool? isApproved,
    @JsonKey(name: "is_Check",defaultValue: false)final bool? isCheck,




  })=_LinesCallcenter;
  factory LinesCallcenter.fromJson(Map<String,dynamic>json)=>
      _$LinesCallcenterFromJson(json);
}


