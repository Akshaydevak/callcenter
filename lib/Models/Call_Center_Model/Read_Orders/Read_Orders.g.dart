// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Read_Orders.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReadOrderCallCenter _$$_ReadOrderCallCenterFromJson(
        Map<String, dynamic> json) =>
    _$_ReadOrderCallCenter(
      id: json['id'] as int?,
      orderdDate: json['ordered_date'] as String?,
      orderTime: json['ordered_time'] as String?,
      totalLineCount: (json['total_line_count'] as num?)?.toDouble(),
      linesCallcenter: (json['lines'] as List<dynamic>?)
          ?.map((e) => LinesCallcenter.fromJson(e as Map<String, dynamic>))
          .toList(),
      patchOrderLines: (json['order_lines'] as List<dynamic>?)
          ?.map((e) => LinesCallcenter.fromJson(e as Map<String, dynamic>))
          .toList(),
      orderCode: json['order_code'] as String?,
      orderType: json['order_type'] as String?,
      deliveryCharge: (json['delivery_charge'] as num?)?.toDouble(),
      customerCode: json['customer_code'] as String?,
      customerName: json['customer_name'] as String?,
      customerMailId: json['customer_mail_id'] as String?,
      customerTrn: json['customer_trn_number'] as String?,
      shippingId: json['shipping_address_id'] as int?,
      billingId: json['billing_address_id'] as int?,
      createdBy: json['created_by'] as String?,
      discount: (json['discount'] as num?)?.toDouble(),
      vatableAmount: (json['vatable_amount'] as num?)?.toDouble(),
      vat: (json['vat'] as num?)?.toDouble(),
      total: (json['total'] as num?)?.toDouble(),
      unitCost: (json['unit_cost'] as num?)?.toDouble(),
      isHolded: json['is_holded'] as bool?,
      sellingPrice: (json['selling_price'] as num?)?.toDouble(),
      orderStatus: json['order_satus'] as String?,
      paymentStatus: json['payment_status'] as String?,
      invoiceStatus: json['invoice_status'] as String?,
      notes: json['notes'] as String?,
      remarks: json['remarks'] as String?,
      deliveryAddress: json['delivery_address'] as String?,
      customerPhoneNumber: json['customer_phone_number'] as String?,
      deliveryAddressFullData: json['delivery_address_full_data'] == null
          ? null
          : DeliveryAddressModel.fromJson(
              json['delivery_address_full_data'] as Map<String, dynamic>),
      customerGroupCode: json['customer_group_code'] as String?,
      lastEditedAt: json['last_edited_at'] as String?,
      channelDetailsId: json['channel_details_id'] as int?,
      channelData: json['channel_data'] == null
          ? null
          : ChannelData.fromJson(json['channel_data'] as Map<String, dynamic>),
      needApproval: json['need_approval'] as bool? ?? false,
    );

Map<String, dynamic> _$$_ReadOrderCallCenterToJson(
        _$_ReadOrderCallCenter instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ordered_date': instance.orderdDate,
      'ordered_time': instance.orderTime,
      'total_line_count': instance.totalLineCount,
      'lines': instance.linesCallcenter,
      'order_lines': instance.patchOrderLines,
      'order_code': instance.orderCode,
      'order_type': instance.orderType,
      'delivery_charge': instance.deliveryCharge,
      'customer_code': instance.customerCode,
      'customer_name': instance.customerName,
      'customer_mail_id': instance.customerMailId,
      'customer_trn_number': instance.customerTrn,
      'shipping_address_id': instance.shippingId,
      'billing_address_id': instance.billingId,
      'created_by': instance.createdBy,
      'discount': instance.discount,
      'vatable_amount': instance.vatableAmount,
      'vat': instance.vat,
      'total': instance.total,
      'unit_cost': instance.unitCost,
      'is_holded': instance.isHolded,
      'selling_price': instance.sellingPrice,
      'order_satus': instance.orderStatus,
      'payment_status': instance.paymentStatus,
      'invoice_status': instance.invoiceStatus,
      'notes': instance.notes,
      'remarks': instance.remarks,
      'delivery_address': instance.deliveryAddress,
      'customer_phone_number': instance.customerPhoneNumber,
      'delivery_address_full_data': instance.deliveryAddressFullData,
      'customer_group_code': instance.customerGroupCode,
      'last_edited_at': instance.lastEditedAt,
      'channel_details_id': instance.channelDetailsId,
      'channel_data': instance.channelData,
      'need_approval': instance.needApproval,
    };

_$_ChannelData _$$_ChannelDataFromJson(Map<String, dynamic> json) =>
    _$_ChannelData(
      channelCode: json['channel_code'] as String?,
      channelId: json['channel_id'] as int?,
    );

Map<String, dynamic> _$$_ChannelDataToJson(_$_ChannelData instance) =>
    <String, dynamic>{
      'channel_code': instance.channelCode,
      'channel_id': instance.channelId,
    };

_$_LinesCallcenter _$$_LinesCallcenterFromJson(Map<String, dynamic> json) =>
    _$_LinesCallcenter(
      id: json['id'] as int?,
      image: json['image'] as String?,
      lineCode: json['line_code'] as String?,
      variantId: json['variant_id'] as int?,
      variantCode: json['variant_code'] as String?,
      variantName: json['variant_name'] as String?,
      image1: json['image1'] as String?,
      barcode: json['barcode'] as String?,
      uomId: json['uom_id'] as int?,
      uomName: json['uom_name'] as String?,
      actualCost: (json['actual_cost'] as num?)?.toDouble(),
      sellingPrice: (json['selling_price'] as num?)?.toDouble(),
      quantity: json['quantity'] as int?,
      oldQty: json['old_quantity'] as int?,
      unitcost: (json['unit_cost'] as num?)?.toDouble(),
      reasonOfApprovalReject: json['reason_of_approval_reject'] as String?,
      discountBasedOn: json['discount_based_on'] as String?,
      discount: (json['discount'] as num?)?.toDouble(),
      amount: (json['amount'] as num?)?.toDouble(),
      vat: (json['vat'] as num?)?.toDouble(),
      vatableAmount: (json['vatable_amount'] as num?)?.toDouble(),
      totalAmount: (json['total_amount'] as num?)?.toDouble(),
      warrantyPrice: (json['warranty_price'] as num?)?.toDouble(),
      warrantyId: json['warranty_id'] as int?,
      shippingId: json['shipping_address_id'] as int?,
      returnType: json['return_type'] as String?,
      hubCode: json['hub_code'] as String?,
      hubName: json['hub_Name'] as String?,
      returnTime: (json['return_time'] as num?)?.toDouble(),
      isInvoiced: json['is_invoiced'] as bool?,
      isActive: json['is_active'] as bool? ?? false,
      lastEditedAt: json['last_edited_at'] as String?,
      approvalStatus: json['approval_status'] as String?,
      orderId: json['order_id'] as int?,
      deliverySlotId: json['delivery_slot_id'] as int?,
      deliveryCharge: (json['delivery_charge'] as num?)?.toDouble(),
      needApproval: json['need_approval'] as bool? ?? false,
      isApproved: json['is_approved'] as bool? ?? false,
      isCheck: json['is_Check'] as bool? ?? false,
    );

Map<String, dynamic> _$$_LinesCallcenterToJson(_$_LinesCallcenter instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'line_code': instance.lineCode,
      'variant_id': instance.variantId,
      'variant_code': instance.variantCode,
      'variant_name': instance.variantName,
      'image1': instance.image1,
      'barcode': instance.barcode,
      'uom_id': instance.uomId,
      'uom_name': instance.uomName,
      'actual_cost': instance.actualCost,
      'selling_price': instance.sellingPrice,
      'quantity': instance.quantity,
      'old_quantity': instance.oldQty,
      'unit_cost': instance.unitcost,
      'reason_of_approval_reject': instance.reasonOfApprovalReject,
      'discount_based_on': instance.discountBasedOn,
      'discount': instance.discount,
      'amount': instance.amount,
      'vat': instance.vat,
      'vatable_amount': instance.vatableAmount,
      'total_amount': instance.totalAmount,
      'warranty_price': instance.warrantyPrice,
      'warranty_id': instance.warrantyId,
      'shipping_address_id': instance.shippingId,
      'return_type': instance.returnType,
      'hub_code': instance.hubCode,
      'hub_Name': instance.hubName,
      'return_time': instance.returnTime,
      'is_invoiced': instance.isInvoiced,
      'is_active': instance.isActive,
      'last_edited_at': instance.lastEditedAt,
      'approval_status': instance.approvalStatus,
      'order_id': instance.orderId,
      'delivery_slot_id': instance.deliverySlotId,
      'delivery_charge': instance.deliveryCharge,
      'need_approval': instance.needApproval,
      'is_approved': instance.isApproved,
      'is_Check': instance.isCheck,
    };
