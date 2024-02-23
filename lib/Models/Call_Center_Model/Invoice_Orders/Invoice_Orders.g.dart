// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Invoice_Orders.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InvoiceOrderCallCenter _$$_InvoiceOrderCallCenterFromJson(
        Map<String, dynamic> json) =>
    _$_InvoiceOrderCallCenter(
      id: json['id'] as int?,
      invoiceDate: json['invoiced_date'] as String?,
      invoiceTime: json['invoice_time'] as String?,
      invoiceCode: json['invoice_code'] as String?,
      invoiceData: json['invoice_data'] == null
          ? null
          : InvoiceData.fromJson(json['invoice_data'] as Map<String, dynamic>),
      linesCallcenter: (json['lines'] as List<dynamic>?)
          ?.map(
              (e) => LinesInvoiceCallcenter.fromJson(e as Map<String, dynamic>))
          .toList(),
      invoiceLinesCallcenter: (json['invoice_line'] as List<dynamic>?)
          ?.map(
              (e) => LinesInvoiceCallcenter.fromJson(e as Map<String, dynamic>))
          .toList(),
      orderId: json['order_id'] as int?,
      orderCode: json['order_code'] as String?,
      orderType: json['order_type'] as String?,
      customerCode: json['customer_code'] as String?,
      customerName: json['customer_name'] as String?,
      customerMailId: json['customer_mail_id'] as String?,
      customerTrn: json['customer_trn_number'] as String?,
      shippingId: json['shipping_address_id'] as int?,
      billingId: json['billing_address_id'] as int?,
      createdBy: json['created_by'] as String?,
      customerGrouCode: json['customer_group_code'] as String?,
      discount: (json['discount'] as num?)?.toDouble(),
      vatableAmount: (json['vatable_amount'] as num?)?.toDouble(),
      totalLineCount: (json['total_line_count'] as num?)?.toDouble(),
      totalAmount: (json['total_amount'] as num?)?.toDouble(),
      vat: (json['vat'] as num?)?.toDouble(),
      total: (json['total'] as num?)?.toDouble(),
      unitCost: (json['unit_cost'] as num?)?.toDouble(),
      sellingPriceTotal: (json['selling_price_total'] as num?)?.toDouble(),
      isHolded: json['is_holded'] as bool?,
      sellingPrice: (json['selling_price'] as num?)?.toDouble(),
      deliveryCharge: (json['delivery_charge'] as num?)?.toDouble(),
      orderStatus: json['order_satus'] as String?,
      paymentStatus: json['payment_status'] as String?,
      invoiceStatus: json['invoice_status'] as String?,
      notes: json['notes'] as String?,
      remarks: json['remarks'] as String?,
      lastEditedAt: json['last_edited_at'] as String?,
      channelDetailsId: json['channel_details_id'] as int?,
      channelData: json['channel_data'] == null
          ? null
          : ChannelData.fromJson(json['channel_data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_InvoiceOrderCallCenterToJson(
        _$_InvoiceOrderCallCenter instance) =>
    <String, dynamic>{
      'id': instance.id,
      'invoiced_date': instance.invoiceDate,
      'invoice_time': instance.invoiceTime,
      'invoice_code': instance.invoiceCode,
      'invoice_data': instance.invoiceData,
      'lines': instance.linesCallcenter,
      'invoice_line': instance.invoiceLinesCallcenter,
      'order_id': instance.orderId,
      'order_code': instance.orderCode,
      'order_type': instance.orderType,
      'customer_code': instance.customerCode,
      'customer_name': instance.customerName,
      'customer_mail_id': instance.customerMailId,
      'customer_trn_number': instance.customerTrn,
      'shipping_address_id': instance.shippingId,
      'billing_address_id': instance.billingId,
      'created_by': instance.createdBy,
      'customer_group_code': instance.customerGrouCode,
      'discount': instance.discount,
      'vatable_amount': instance.vatableAmount,
      'total_line_count': instance.totalLineCount,
      'total_amount': instance.totalAmount,
      'vat': instance.vat,
      'total': instance.total,
      'unit_cost': instance.unitCost,
      'selling_price_total': instance.sellingPriceTotal,
      'is_holded': instance.isHolded,
      'selling_price': instance.sellingPrice,
      'delivery_charge': instance.deliveryCharge,
      'order_satus': instance.orderStatus,
      'payment_status': instance.paymentStatus,
      'invoice_status': instance.invoiceStatus,
      'notes': instance.notes,
      'remarks': instance.remarks,
      'last_edited_at': instance.lastEditedAt,
      'channel_details_id': instance.channelDetailsId,
      'channel_data': instance.channelData,
    };

_$_InvoiceData _$$_InvoiceDataFromJson(Map<String, dynamic> json) =>
    _$_InvoiceData(
      id: json['id'] as int?,
      invoiceDate: json['invoiced_date'] as String?,
      invoiceTime: json['invoice_time'] as String?,
      invoiceCode: json['invoice_code'] as String?,
      linesCallcenter: (json['lines'] as List<dynamic>?)
          ?.map(
              (e) => LinesInvoiceCallcenter.fromJson(e as Map<String, dynamic>))
          .toList(),
      invoiceLinesCallcenter: (json['invoice_line'] as List<dynamic>?)
          ?.map(
              (e) => LinesInvoiceCallcenter.fromJson(e as Map<String, dynamic>))
          .toList(),
      orderId: json['order_id'] as int?,
      orderCode: json['order_code'] as String?,
      orderType: json['order_type'] as String?,
      customerCode: json['customer_code'] as String?,
      customerName: json['customer_name'] as String?,
      customerMailId: json['customer_mail_id'] as String?,
      customerTrn: json['customer_trn_number'] as String?,
      shippingId: json['shipping_address_id'] as int?,
      totalLineCount: (json['total_line_count'] as num?)?.toDouble(),
      billingId: json['billing_address_id'] as int?,
      createdBy: json['created_by'] as String?,
      discount: (json['discount'] as num?)?.toDouble(),
      vatableAmount: (json['vatable_amount'] as num?)?.toDouble(),
      totalAmount: (json['total_amount'] as num?)?.toDouble(),
      vat: (json['vat'] as num?)?.toDouble(),
      total: (json['total'] as num?)?.toDouble(),
      unitCost: (json['unit_cost'] as num?)?.toDouble(),
      isHolded: json['is_holded'] as bool?,
      sellingPrice: (json['selling_price'] as num?)?.toDouble(),
      orderStatus: json['order_satus'] as String?,
      paymentStatus: json['payment_status'] as String?,
      invoiceStatus: json['invoice_status'] as String?,
      customerGroupcode: json['customer_group_code'] as String?,
      notes: json['notes'] as String?,
      remarks: json['remarks'] as String?,
      lastEditedAt: json['last_edited_at'] as String?,
      channelDetailsId: json['channel_details_id'] as int?,
      channelData: json['channel_data'] == null
          ? null
          : ChannelData.fromJson(json['channel_data'] as Map<String, dynamic>),
      deliveryCharge: (json['delivery_charge'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_InvoiceDataToJson(_$_InvoiceData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'invoiced_date': instance.invoiceDate,
      'invoice_time': instance.invoiceTime,
      'invoice_code': instance.invoiceCode,
      'lines': instance.linesCallcenter,
      'invoice_line': instance.invoiceLinesCallcenter,
      'order_id': instance.orderId,
      'order_code': instance.orderCode,
      'order_type': instance.orderType,
      'customer_code': instance.customerCode,
      'customer_name': instance.customerName,
      'customer_mail_id': instance.customerMailId,
      'customer_trn_number': instance.customerTrn,
      'shipping_address_id': instance.shippingId,
      'total_line_count': instance.totalLineCount,
      'billing_address_id': instance.billingId,
      'created_by': instance.createdBy,
      'discount': instance.discount,
      'vatable_amount': instance.vatableAmount,
      'total_amount': instance.totalAmount,
      'vat': instance.vat,
      'total': instance.total,
      'unit_cost': instance.unitCost,
      'is_holded': instance.isHolded,
      'selling_price': instance.sellingPrice,
      'order_satus': instance.orderStatus,
      'payment_status': instance.paymentStatus,
      'invoice_status': instance.invoiceStatus,
      'customer_group_code': instance.customerGroupcode,
      'notes': instance.notes,
      'remarks': instance.remarks,
      'last_edited_at': instance.lastEditedAt,
      'channel_details_id': instance.channelDetailsId,
      'channel_data': instance.channelData,
      'delivery_charge': instance.deliveryCharge,
    };

_$_LinesInvoiceCallcenter _$$_LinesInvoiceCallcenterFromJson(
        Map<String, dynamic> json) =>
    _$_LinesInvoiceCallcenter(
      id: json['id'] as int?,
      image: json['image'] as String?,
      lineCode: json['line_code'] as String?,
      invoiceLineCode: json['invoice_line_code'] as String?,
      variantId: json['variant_id'] as int?,
      variantCode: json['variant_code'] as String?,
      variantName: json['variant_name'] as String?,
      barcode: json['barcode'] as String?,
      uomId: json['uom_id'] as int?,
      uomName: json['uom_name'] as String?,
      sellingPrice: (json['selling_price'] as num?)?.toDouble(),
      quantity: json['quantity'] as int?,
      unitcost: (json['unit_cost'] as num?)?.toDouble(),
      deliveryCharge: (json['delivery_charge'] as num?)?.toDouble(),
      deliverySlotID: json['delivery_slot_id'] as int?,
      discount: (json['discount'] as num?)?.toDouble(),
      amount: (json['amount'] as num?)?.toDouble(),
      vatableAmount: (json['vatable_amount'] as num?)?.toDouble(),
      vat: (json['vat'] as num?)?.toDouble(),
      totalAmount: (json['total_amount'] as num?)?.toDouble(),
      warrantyPrice: (json['warranty_price'] as num?)?.toDouble(),
      warrantyId: json['warranty_id'] as int?,
      shippingId: json['shipping_address_id'] as int?,
      returnType: json['return_type'] as String?,
      returnTime: (json['return_time'] as num?)?.toDouble(),
      isInvoiced: json['is_invoiced'] as bool?,
      dicountBasedOn: json['discount_based_on'] as String?,
      isActive: json['is_active'] as bool?,
      lastEditedAt: json['last_edited_at'] as String?,
      orderId: json['order_id'] as int?,
      invoiceId: json['invoice_id'] as int?,
      orderlineId: json['order_line_id'] as int?,
    );

Map<String, dynamic> _$$_LinesInvoiceCallcenterToJson(
        _$_LinesInvoiceCallcenter instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'line_code': instance.lineCode,
      'invoice_line_code': instance.invoiceLineCode,
      'variant_id': instance.variantId,
      'variant_code': instance.variantCode,
      'variant_name': instance.variantName,
      'barcode': instance.barcode,
      'uom_id': instance.uomId,
      'uom_name': instance.uomName,
      'selling_price': instance.sellingPrice,
      'quantity': instance.quantity,
      'unit_cost': instance.unitcost,
      'delivery_charge': instance.deliveryCharge,
      'delivery_slot_id': instance.deliverySlotID,
      'discount': instance.discount,
      'amount': instance.amount,
      'vatable_amount': instance.vatableAmount,
      'vat': instance.vat,
      'total_amount': instance.totalAmount,
      'warranty_price': instance.warrantyPrice,
      'warranty_id': instance.warrantyId,
      'shipping_address_id': instance.shippingId,
      'return_type': instance.returnType,
      'return_time': instance.returnTime,
      'is_invoiced': instance.isInvoiced,
      'discount_based_on': instance.dicountBasedOn,
      'is_active': instance.isActive,
      'last_edited_at': instance.lastEditedAt,
      'order_id': instance.orderId,
      'invoice_id': instance.invoiceId,
      'order_line_id': instance.orderlineId,
    };
