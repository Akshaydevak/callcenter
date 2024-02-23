// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Read_Sales_Genaral.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReadSalesGenaral _$$_ReadSalesGenaralFromJson(Map<String, dynamic> json) =>
    _$_ReadSalesGenaral(
      id: json['id'] as int?,
      invId: json['inventory_id'] as String?,
      orderType: json['order_type'] as String?,
      orderMode: json['order_mode'] as String?,
      customerId: json['customer_id'] as String?,
      trnNumber: json['trn_number'] as String?,
      shippingAddressId: json['shipping_address_id'] as String?,
      billingAddressId: json['billing_address_id'] as String?,
      orderedDate: json['ordered_date'] as String?,
      paymentId: json['payment_id'] as String?,
      paymentStatus: json['payment_status'] as String?,
      warrantyPrice: (json['warranty_price'] as num?)?.toDouble(),
      note: json['note'] as String?,
      remarks: json['remarks'] as String?,
      discount: (json['discount'] as num?)?.toDouble(),
      unitCost: (json['unit_cost'] as num?)?.toDouble(),
      excessTax: (json['excess_tax'] as num?)?.toDouble(),
      taxableAmount: (json['taxable_amount'] as num?)?.toDouble(),
      vat: (json['vat'] as num?)?.toDouble(),
      sellingPriceTotal: (json['selling_price_total'] as num?)?.toDouble(),
      totalPrice: (json['total_price'] as num?)?.toDouble(),
      salesOrderCode: json['sales_order_code'] as String?,
      orderStatus: json['order_satus'] as String?,
      invoiceStatus: json['invoice_status'] as String?,
      orderLines: (json['order_lines'] as List<dynamic>?)
          ?.map((e) => OrderLines.fromJson(e as Map<String, dynamic>))
          .toList(),
      editedBy: json['edited_by'] as String?,
    );

Map<String, dynamic> _$$_ReadSalesGenaralToJson(_$_ReadSalesGenaral instance) =>
    <String, dynamic>{
      'id': instance.id,
      'inventory_id': instance.invId,
      'order_type': instance.orderType,
      'order_mode': instance.orderMode,
      'customer_id': instance.customerId,
      'trn_number': instance.trnNumber,
      'shipping_address_id': instance.shippingAddressId,
      'billing_address_id': instance.billingAddressId,
      'ordered_date': instance.orderedDate,
      'payment_id': instance.paymentId,
      'payment_status': instance.paymentStatus,
      'warranty_price': instance.warrantyPrice,
      'note': instance.note,
      'remarks': instance.remarks,
      'discount': instance.discount,
      'unit_cost': instance.unitCost,
      'excess_tax': instance.excessTax,
      'taxable_amount': instance.taxableAmount,
      'vat': instance.vat,
      'selling_price_total': instance.sellingPriceTotal,
      'total_price': instance.totalPrice,
      'sales_order_code': instance.salesOrderCode,
      'order_satus': instance.orderStatus,
      'invoice_status': instance.invoiceStatus,
      'order_lines': instance.orderLines,
      'edited_by': instance.editedBy,
    };

_$_OrderLines _$$_OrderLinesFromJson(Map<String, dynamic> json) =>
    _$_OrderLines(
      id: json['id'] as int?,
      invId: json['inventory_id'] as String?,
      variantId: json['variant_id'] as String?,
      variantInventoryId: json['variant_inventory_id'] as String?,
      barcode: json['barcode'] as String?,
      salesOrderLineCode: json['sales_order_line_code'] as String?,
      salesUom: json['sales_uom'] as String?,
      isInvoiced: json['is_invoiced'] as bool?,
      warrantyId: json['warranty_id'] as String?,
      discountType: json['discount_type'] as String?,
      discount: (json['discount'] as num?)?.toDouble(),
      unitCost: (json['unit_cost'] as num?)?.toDouble(),
      excessTax: (json['excess_tax'] as num?)?.toDouble(),
      taxableAmount: (json['taxable_amount'] as num?)?.toDouble(),
      vat: (json['vat'] as num?)?.toDouble(),
      sellingPrice: (json['selling_price'] as num?)?.toDouble(),
      quantity: json['quantity'] as int?,
      totalPrice: (json['total_price'] as num?)?.toDouble(),
      isActive: json['is_active'] as bool?,
      warrantyPrice: (json['warranty_price'] as num?)?.toDouble(),
      returnType: json['return_type'] as String?,
      returnTime: json['return_time'] as int?,
      variantName: json['variant_name'] as String?,
    );

Map<String, dynamic> _$$_OrderLinesToJson(_$_OrderLines instance) =>
    <String, dynamic>{
      'id': instance.id,
      'inventory_id': instance.invId,
      'variant_id': instance.variantId,
      'variant_inventory_id': instance.variantInventoryId,
      'barcode': instance.barcode,
      'sales_order_line_code': instance.salesOrderLineCode,
      'sales_uom': instance.salesUom,
      'is_invoiced': instance.isInvoiced,
      'warranty_id': instance.warrantyId,
      'discount_type': instance.discountType,
      'discount': instance.discount,
      'unit_cost': instance.unitCost,
      'excess_tax': instance.excessTax,
      'taxable_amount': instance.taxableAmount,
      'vat': instance.vat,
      'selling_price': instance.sellingPrice,
      'quantity': instance.quantity,
      'total_price': instance.totalPrice,
      'is_active': instance.isActive,
      'warranty_price': instance.warrantyPrice,
      'return_type': instance.returnType,
      'return_time': instance.returnTime,
      'variant_name': instance.variantName,
    };