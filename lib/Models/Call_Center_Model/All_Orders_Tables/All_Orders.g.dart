// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'All_Orders.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AllOrdersTables _$$_AllOrdersTablesFromJson(Map<String, dynamic> json) =>
    _$_AllOrdersTables(
      id: json['id'] as int?,
      loading: json['loading'] as bool?,
      isLoading: json['isLoading'] as bool?,
      orderCode: json['order_code'] as String?,
      orderdDate: json['ordered_date'] as String?,
      customerCode: json['customer_code'] as String?,
      customerName: json['customer_name'] as String?,
      customerTrn: json['customer_trn_number'] as String?,
      total: (json['total'] as num?)?.toDouble(),
      orderStatus: json['order_satus'] as String?,
      paymentStatus: json['payment_status'] as String?,
      inVoiceStatus: json['invoice_status'] as String?,
      deliveryAdrress: json['delivery_address'] as String?,
      invoiceId: json['invoice_id'] as int?,
      notes: json['notes'] as String?,
      remarks: json['remarks'] as String?,
      vat: (json['vat'] as num?)?.toDouble(),
      discount: (json['discount'] as num?)?.toDouble(),
      lines: (json['line'] as List<dynamic>?)
          ?.map((e) => LinesAllOrder.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AllOrdersTablesToJson(_$_AllOrdersTables instance) =>
    <String, dynamic>{
      'id': instance.id,
      'loading': instance.loading,
      'isLoading': instance.isLoading,
      'order_code': instance.orderCode,
      'ordered_date': instance.orderdDate,
      'customer_code': instance.customerCode,
      'customer_name': instance.customerName,
      'customer_trn_number': instance.customerTrn,
      'total': instance.total,
      'order_satus': instance.orderStatus,
      'payment_status': instance.paymentStatus,
      'invoice_status': instance.inVoiceStatus,
      'delivery_address': instance.deliveryAdrress,
      'invoice_id': instance.invoiceId,
      'notes': instance.notes,
      'remarks': instance.remarks,
      'vat': instance.vat,
      'discount': instance.discount,
      'line': instance.lines,
    };

_$_LinesAllOrder _$$_LinesAllOrderFromJson(Map<String, dynamic> json) =>
    _$_LinesAllOrder(
      id: json['id'] as int?,
      lineCode: json['line_code'] as String?,
      variantId: json['variant_id'] as int?,
      variantCode: json['variant_code'] as String?,
      variantName: json['variant_name'] as String?,
      barcode: json['barcode'] as String?,
      uomId: json['uom_id'] as int?,
      uomName: json['uom_name'] as String?,
      sellingPrice: (json['selling_price'] as num?)?.toDouble(),
      quantity: json['quantity'] as int?,
      unitCost: (json['unit_cost'] as num?)?.toDouble(),
      discount: (json['discount'] as num?)?.toDouble(),
      amount: (json['amount'] as num?)?.toDouble(),
      vat: (json['vat'] as num?)?.toDouble(),
      vatableAmount: (json['vatable_amount'] as num?)?.toDouble(),
      total: (json['total_amount'] as num?)?.toDouble(),
      isInvoiced: json['is_invoiced'] as bool? ?? false,
      warrantyPrice: (json['warranty_price'] as num?)?.toDouble(),
      warrantyId: json['warranty_id'] as int?,
      shippingAddressId: json['shipping_address_id'] as int?,
      returnType: json['return_type'] as String?,
      returnTime: (json['return_time'] as num?)?.toDouble(),
      isActive: json['is_active'] as bool?,
      lastEdited: json['last_edited_at'] as String?,
      orderId: json['order_id'] as int?,
    );

Map<String, dynamic> _$$_LinesAllOrderToJson(_$_LinesAllOrder instance) =>
    <String, dynamic>{
      'id': instance.id,
      'line_code': instance.lineCode,
      'variant_id': instance.variantId,
      'variant_code': instance.variantCode,
      'variant_name': instance.variantName,
      'barcode': instance.barcode,
      'uom_id': instance.uomId,
      'uom_name': instance.uomName,
      'selling_price': instance.sellingPrice,
      'quantity': instance.quantity,
      'unit_cost': instance.unitCost,
      'discount': instance.discount,
      'amount': instance.amount,
      'vat': instance.vat,
      'vatable_amount': instance.vatableAmount,
      'total_amount': instance.total,
      'is_invoiced': instance.isInvoiced,
      'warranty_price': instance.warrantyPrice,
      'warranty_id': instance.warrantyId,
      'shipping_address_id': instance.shippingAddressId,
      'return_type': instance.returnType,
      'return_time': instance.returnTime,
      'is_active': instance.isActive,
      'last_edited_at': instance.lastEdited,
      'order_id': instance.orderId,
    };
