// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Read_Sales_Invoice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReadSalesInvoice _$$_ReadSalesInvoiceFromJson(Map<String, dynamic> json) =>
    _$_ReadSalesInvoice(
      id: json['id'] as int?,
      salesOrderCode: json['sales_order_code'] as String?,
      customerId: json['customer_id'] as String?,
      trnNumber: json['trn_number'] as String?,
      paymentId: json['payment_id'] as String?,
      paymentStatus: json['payment_status'] as String?,
      orderStatus: json['order_satus'] as String?,
      discount: (json['discount'] as num?)?.toDouble(),
      unitCost: (json['unit_cost'] as num?)?.toDouble(),
      excessTax: (json['excess_tax'] as num?)?.toDouble(),
      taxableAmount: (json['taxable_amount'] as num?)?.toDouble(),
      vat: (json['vat'] as num?)?.toDouble(),
      sellingPriceTotal: (json['selling_price_total'] as num?)?.toDouble(),
      warrantyPrice: (json['warranty_price'] as num?)?.toDouble(),
      totalPrice: (json['total_price'] as num?)?.toDouble(),
      orderLineInvoice: (json['order_lines'] as List<dynamic>?)
          ?.map((e) => OrderLineInvoice.fromJson(e as Map<String, dynamic>))
          .toList(),
      invoiceDatas: json['invoice_data'] == null
          ? null
          : InvoiceData.fromJson(json['invoice_data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ReadSalesInvoiceToJson(_$_ReadSalesInvoice instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sales_order_code': instance.salesOrderCode,
      'customer_id': instance.customerId,
      'trn_number': instance.trnNumber,
      'payment_id': instance.paymentId,
      'payment_status': instance.paymentStatus,
      'order_satus': instance.orderStatus,
      'discount': instance.discount,
      'unit_cost': instance.unitCost,
      'excess_tax': instance.excessTax,
      'taxable_amount': instance.taxableAmount,
      'vat': instance.vat,
      'selling_price_total': instance.sellingPriceTotal,
      'warranty_price': instance.warrantyPrice,
      'total_price': instance.totalPrice,
      'order_lines': instance.orderLineInvoice,
      'invoice_data': instance.invoiceDatas,
    };

_$_OrderLineInvoice _$$_OrderLineInvoiceFromJson(Map<String, dynamic> json) =>
    _$_OrderLineInvoice(
      id: json['id'] as int?,
      invoiceLineCode: json['invoice_line_code'] as String?,
      variantId: json['variant_id'] as String?,
      variantInventoryId: json['variant_inventory_id'] as String?,
      barcode: json['barcode'] as String?,
      salesOrderLineCode: json['sales_order_line_code'] as String?,
      salesUom: json['sales_uom'] as String?,
      totalQty: json['total_qty'] as int?,
      quantity: json['quantity'] as int?,
      isInvoiced: json['is_invoiced'] as bool?,
      discountType: json['discount_type'] as String?,
      discount: (json['discount'] as num?)?.toDouble(),
      unitCost: (json['unit_cost'] as num?)?.toDouble(),
      excessTax: (json['excess_tax'] as num?)?.toDouble(),
      taxableAmount: (json['taxable_amount'] as num?)?.toDouble(),
      vat: (json['vat'] as num?)?.toDouble(),
      sellingPrice: (json['selling_price'] as num?)?.toDouble(),
      totalPrice: (json['total_price'] as num?)?.toDouble(),
      warrantyPrice: (json['warranty_price'] as num?)?.toDouble(),
      isActive: json['is_active'] as bool?,
      stockId: json['stock_id'] as String?,
      returnType: json['return_type'] as String?,
      returnTime: json['return_time'] as int?,
      invoiceDate: json['invoiced_date'] as String?,
      invoiceTime: json['invoiced_time'] as String?,
    );

Map<String, dynamic> _$$_OrderLineInvoiceToJson(_$_OrderLineInvoice instance) =>
    <String, dynamic>{
      'id': instance.id,
      'invoice_line_code': instance.invoiceLineCode,
      'variant_id': instance.variantId,
      'variant_inventory_id': instance.variantInventoryId,
      'barcode': instance.barcode,
      'sales_order_line_code': instance.salesOrderLineCode,
      'sales_uom': instance.salesUom,
      'total_qty': instance.totalQty,
      'quantity': instance.quantity,
      'is_invoiced': instance.isInvoiced,
      'discount_type': instance.discountType,
      'discount': instance.discount,
      'unit_cost': instance.unitCost,
      'excess_tax': instance.excessTax,
      'taxable_amount': instance.taxableAmount,
      'vat': instance.vat,
      'selling_price': instance.sellingPrice,
      'total_price': instance.totalPrice,
      'warranty_price': instance.warrantyPrice,
      'is_active': instance.isActive,
      'stock_id': instance.stockId,
      'return_type': instance.returnType,
      'return_time': instance.returnTime,
      'invoiced_date': instance.invoiceDate,
      'invoiced_time': instance.invoiceTime,
    };

_$_InvoiceData _$$_InvoiceDataFromJson(Map<String, dynamic> json) =>
    _$_InvoiceData(
      id: json['id'] as int?,
      salesOrderId: json['sales_order_id'] as int?,
      invoiceCode: json['invoice_code'] as String?,
      createdDate: json['created_date'] as String?,
      notes: json['notes'] as String?,
      remarks: json['remarks'] as String?,
      invoiceStatus: json['invoice_status'] as String?,
      assignTo: json['assigned_to'] as String?,
      discount: (json['discount'] as num?)?.toDouble(),
      unitCost: (json['unit_cost'] as num?)?.toDouble(),
      excessTax: (json['excess_tax'] as num?)?.toDouble(),
      taxableAmount: (json['taxable_amount'] as num?)?.toDouble(),
      vat: (json['vat'] as num?)?.toDouble(),
      sellingPriceTotal: (json['selling_price_total'] as num?)?.toDouble(),
      totalPrice: (json['total_price'] as num?)?.toDouble(),
      invoiceLinesRead: (json['invoice_lines'] as List<dynamic>?)
          ?.map((e) => OrderLineInvoice.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_InvoiceDataToJson(_$_InvoiceData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sales_order_id': instance.salesOrderId,
      'invoice_code': instance.invoiceCode,
      'created_date': instance.createdDate,
      'notes': instance.notes,
      'remarks': instance.remarks,
      'invoice_status': instance.invoiceStatus,
      'assigned_to': instance.assignTo,
      'discount': instance.discount,
      'unit_cost': instance.unitCost,
      'excess_tax': instance.excessTax,
      'taxable_amount': instance.taxableAmount,
      'vat': instance.vat,
      'selling_price_total': instance.sellingPriceTotal,
      'total_price': instance.totalPrice,
      'invoice_lines': instance.invoiceLinesRead,
    };
