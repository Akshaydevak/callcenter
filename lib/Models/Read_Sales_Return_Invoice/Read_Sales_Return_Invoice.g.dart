// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Read_Sales_Return_Invoice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReadSalesReturnInvoice _$$_ReadSalesReturnInvoiceFromJson(
        Map<String, dynamic> json) =>
    _$_ReadSalesReturnInvoice(
      id: json['id'] as int?,
      salesReturnInvoiceOrderLines: (json['order_lines'] as List<dynamic>?)
          ?.map((e) =>
              SalesRetunnInvoiceOrderLines.fromJson(e as Map<String, dynamic>))
          .toList(),
      salesReturnInvoiceLines: (json['invoice_lines'] as List<dynamic>?)
          ?.map((e) =>
              SalesRetunnInvoiceOrderLines.fromJson(e as Map<String, dynamic>))
          .toList(),
      invoiceDataSalesReturn: json['invoice_data'] == null
          ? null
          : InvoiceDataSalesReturn.fromJson(
              json['invoice_data'] as Map<String, dynamic>),
      orderType: json['order_type'] as String?,
      orderMode: json['order_mode'] as String?,
      salesReturnOrderCode: json['sales_return_order_code'] as String?,
      purchaseReturnOrderCode: json['purchase_return_order_code'] as String?,
      returnedDate: json['returned_date'] as String?,
      inventoryId: json['inventory_id'] as String?,
      vendorCode: json['vendor_code'] as String?,
      customerId: json['customer_id'] as String?,
      trnNumber: json['trn_number'] as String?,
      salesInvoiceId: json['sales_invoice_id'] as String?,
      shippingAddressId: json['shipping_address_id'] as String?,
      billingAddressId: json['billing_address_id'] as String?,
      paymentId: json['payment_id'] as String?,
      paymentStatus: json['payment_status'] as String?,
      reason: json['reason'] as String?,
      notes: json['notes'] as String?,
      remarks: json['remarks'] as String?,
      orderStatus: json['order_satus'] as String?,
      invoiceStatus: json['invoice_status'] as String?,
      discount: (json['discount'] as num?)?.toDouble(),
      unitCost: (json['unit_cost'] as num?)?.toDouble(),
      excessTax: (json['excess_tax'] as num?)?.toDouble(),
      taxableAmount: (json['taxable_amount'] as num?)?.toDouble(),
      vat: (json['vat'] as num?)?.toDouble(),
      returnPriceTotal: (json['return_price_total'] as num?)?.toDouble(),
      totalPrice: (json['total_price'] as num?)?.toDouble(),
      status: json['status'] as String?,
      assignTo: json['assigned_to'] as String?,
      invoicedBy: json['invoiced_by'] as String?,
      customerTrnNumber: json['customer_trn_number'] as String?,
      salesreturnOrderId: json['sales_return_order_id'] as String?,
    );

Map<String, dynamic> _$$_ReadSalesReturnInvoiceToJson(
        _$_ReadSalesReturnInvoice instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order_lines': instance.salesReturnInvoiceOrderLines,
      'invoice_lines': instance.salesReturnInvoiceLines,
      'invoice_data': instance.invoiceDataSalesReturn,
      'order_type': instance.orderType,
      'order_mode': instance.orderMode,
      'sales_return_order_code': instance.salesReturnOrderCode,
      'purchase_return_order_code': instance.purchaseReturnOrderCode,
      'returned_date': instance.returnedDate,
      'inventory_id': instance.inventoryId,
      'vendor_code': instance.vendorCode,
      'customer_id': instance.customerId,
      'trn_number': instance.trnNumber,
      'sales_invoice_id': instance.salesInvoiceId,
      'shipping_address_id': instance.shippingAddressId,
      'billing_address_id': instance.billingAddressId,
      'payment_id': instance.paymentId,
      'payment_status': instance.paymentStatus,
      'reason': instance.reason,
      'notes': instance.notes,
      'remarks': instance.remarks,
      'order_satus': instance.orderStatus,
      'invoice_status': instance.invoiceStatus,
      'discount': instance.discount,
      'unit_cost': instance.unitCost,
      'excess_tax': instance.excessTax,
      'taxable_amount': instance.taxableAmount,
      'vat': instance.vat,
      'return_price_total': instance.returnPriceTotal,
      'total_price': instance.totalPrice,
      'status': instance.status,
      'assigned_to': instance.assignTo,
      'invoiced_by': instance.invoicedBy,
      'customer_trn_number': instance.customerTrnNumber,
      'sales_return_order_id': instance.salesreturnOrderId,
    };

_$_SalesRetunnInvoiceOrderLines _$$_SalesRetunnInvoiceOrderLinesFromJson(
        Map<String, dynamic> json) =>
    _$_SalesRetunnInvoiceOrderLines(
      id: json['id'] as int?,
      inventoryId: json['inventory_id'] as String?,
      invoiceLineId: json['invoice_line_id'] as int?,
      variantId: json['variant_id'] as String?,
      barcode: json['barcode'] as String?,
      salesReturnOrderLineCode: json['sales_return_order_line_code'] as String?,
      stockId: json['stock_id'] as String?,
      warrantyId: json['warranty_id'] as String?,
      salesUom: json['sales_uom'] as String?,
      discountType: json['discount_type'] as String?,
      discount: (json['discount'] as num?)?.toDouble(),
      unitCost: (json['unit_cost'] as num?)?.toDouble(),
      excessTax: (json['excess_tax'] as num?)?.toDouble(),
      taxableAmount: (json['taxable_amount'] as num?)?.toDouble(),
      vat: (json['vat'] as num?)?.toDouble(),
      warrantyPrice: (json['warranty_price'] as num?)?.toDouble(),
      soldPrice: (json['sold_price'] as num?)?.toDouble(),
      quantity: json['quantity'] as int?,
      returnType: json['return_type'] as String?,
      returnTime: json['return_time'] as int?,
      invoiceDate: json['invoiced_date'] as String?,
      invoiceTime: json['invoiced_time'] as String?,
      totalPrice: (json['total_price'] as num?)?.toDouble(),
      isInvoiced: json['is_invoiced'] as bool?,
      isActive: json['is_active'] as bool?,
      totalQty: json['total_qty'] as int?,
      sellingPrice: (json['selling_price'] as num?)?.toDouble(),
      salesReturnInvoiceId: json['sales_return_invoice_id'] as int?,
      salesReturnOrderLineId: json['sales_return_order_line_id'] as int?,
    );

Map<String, dynamic> _$$_SalesRetunnInvoiceOrderLinesToJson(
        _$_SalesRetunnInvoiceOrderLines instance) =>
    <String, dynamic>{
      'id': instance.id,
      'inventory_id': instance.inventoryId,
      'invoice_line_id': instance.invoiceLineId,
      'variant_id': instance.variantId,
      'barcode': instance.barcode,
      'sales_return_order_line_code': instance.salesReturnOrderLineCode,
      'stock_id': instance.stockId,
      'warranty_id': instance.warrantyId,
      'sales_uom': instance.salesUom,
      'discount_type': instance.discountType,
      'discount': instance.discount,
      'unit_cost': instance.unitCost,
      'excess_tax': instance.excessTax,
      'taxable_amount': instance.taxableAmount,
      'vat': instance.vat,
      'warranty_price': instance.warrantyPrice,
      'sold_price': instance.soldPrice,
      'quantity': instance.quantity,
      'return_type': instance.returnType,
      'return_time': instance.returnTime,
      'invoiced_date': instance.invoiceDate,
      'invoiced_time': instance.invoiceTime,
      'total_price': instance.totalPrice,
      'is_invoiced': instance.isInvoiced,
      'is_active': instance.isActive,
      'total_qty': instance.totalQty,
      'selling_price': instance.sellingPrice,
      'sales_return_invoice_id': instance.salesReturnInvoiceId,
      'sales_return_order_line_id': instance.salesReturnOrderLineId,
    };

_$_InvoiceDataSalesReturn _$$_InvoiceDataSalesReturnFromJson(
        Map<String, dynamic> json) =>
    _$_InvoiceDataSalesReturn(
      id: json['id'] as int?,
      linesReturnInvoice: (json['lines'] as List<dynamic>?)
          ?.map((e) =>
              SalesRetunnInvoiceOrderLines.fromJson(e as Map<String, dynamic>))
          .toList(),
      salesReturnInvoiceCode: json['sales_return_invoice_code'] as String?,
      vendorCode: json['vendor_code'] as String?,
      createdDate: json['created_date'] as String?,
      customerId: json['customer_id'] as String?,
      trnNumber: json['trn_number'] as String?,
      notes: json['notes'] as String?,
      remarks: json['remarks'] as String?,
      invoiceStatus: json['invoice_status'] as String?,
      discount: (json['discount'] as num?)?.toDouble(),
      unitCost: (json['unit_cost'] as num?)?.toDouble(),
      excessTax: (json['excess_tax'] as num?)?.toDouble(),
      taxableAmount: (json['taxable_amount'] as num?)?.toDouble(),
      vat: (json['vat'] as num?)?.toDouble(),
      returnPriceTotal: (json['return_price_total'] as num?)?.toDouble(),
      totalPrice: (json['total_price'] as num?)?.toDouble(),
      paymentCode: json['payment_code'] as String?,
      paymentStatus: json['payment_status'] as String?,
      paymentMethod: json['payment_method'] as String?,
      assignTo: json['assigned_to'] as String?,
      isActive: json['is_active'] as bool?,
      salesReturnOrderId: json['sales_return_order_id'] as int?,
    );

Map<String, dynamic> _$$_InvoiceDataSalesReturnToJson(
        _$_InvoiceDataSalesReturn instance) =>
    <String, dynamic>{
      'id': instance.id,
      'lines': instance.linesReturnInvoice,
      'sales_return_invoice_code': instance.salesReturnInvoiceCode,
      'vendor_code': instance.vendorCode,
      'created_date': instance.createdDate,
      'customer_id': instance.customerId,
      'trn_number': instance.trnNumber,
      'notes': instance.notes,
      'remarks': instance.remarks,
      'invoice_status': instance.invoiceStatus,
      'discount': instance.discount,
      'unit_cost': instance.unitCost,
      'excess_tax': instance.excessTax,
      'taxable_amount': instance.taxableAmount,
      'vat': instance.vat,
      'return_price_total': instance.returnPriceTotal,
      'total_price': instance.totalPrice,
      'payment_code': instance.paymentCode,
      'payment_status': instance.paymentStatus,
      'payment_method': instance.paymentMethod,
      'assigned_to': instance.assignTo,
      'is_active': instance.isActive,
      'sales_return_order_id': instance.salesReturnOrderId,
    };
