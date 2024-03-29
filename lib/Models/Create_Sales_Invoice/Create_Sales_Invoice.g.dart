// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Create_Sales_Invoice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateSalesInvoice _$$_CreateSalesInvoiceFromJson(
        Map<String, dynamic> json) =>
    _$_CreateSalesInvoice(
      salesOrderId: json['sales_order_id'] as String?,
      invoicedBy: json['invoiced_by'] as String?,
      notes: json['notes'] as String?,
      remarks: json['remarks'] as String?,
      assignTo: json['assigned_to'] as String?,
      discount: (json['discount'] as num?)?.toDouble(),
      unitCost: (json['unit_cost'] as num?)?.toDouble(),
      excessTax: (json['excess_tax'] as num?)?.toDouble(),
      taxableAmount: (json['taxable_amount'] as num?)?.toDouble(),
      vat: (json['vat'] as num?)?.toDouble(),
      sellingPriceTotal: (json['selling_price_total'] as num?)?.toDouble(),
      totalPrice: (json['total_price'] as num?)?.toDouble(),
      warrantyPrice: (json['warranty_price'] as num?)?.toDouble(),
      invoiceLinesCreate: (json['invoice_lines'] as List<dynamic>?)
          ?.map((e) => InvoiceLinesCreate.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CreateSalesInvoiceToJson(
        _$_CreateSalesInvoice instance) =>
    <String, dynamic>{
      'sales_order_id': instance.salesOrderId,
      'invoiced_by': instance.invoicedBy,
      'notes': instance.notes,
      'remarks': instance.remarks,
      'assigned_to': instance.assignTo,
      'discount': instance.discount,
      'unit_cost': instance.unitCost,
      'excess_tax': instance.excessTax,
      'taxable_amount': instance.taxableAmount,
      'vat': instance.vat,
      'selling_price_total': instance.sellingPriceTotal,
      'total_price': instance.totalPrice,
      'warranty_price': instance.warrantyPrice,
      'invoice_lines': instance.invoiceLinesCreate,
    };

_$_InvoiceLinesCreate _$$_InvoiceLinesCreateFromJson(
        Map<String, dynamic> json) =>
    _$_InvoiceLinesCreate(
      isInvoiced: json['is_invoiced'] as bool?,
      quantity: json['quantity'] as int?,
      isActive: json['is_active'] as bool?,
      totalPrice: (json['total_price'] as num?)?.toDouble(),
      warrantyPrice: (json['warranty_price'] as num?)?.toDouble(),
      sellingPrice: (json['selling_price'] as num?)?.toDouble(),
      vat: (json['vat'] as num?)?.toDouble(),
      taxableAmount: (json['taxable_amount'] as num?)?.toDouble(),
      unitCost: (json['unit_cost'] as num?)?.toDouble(),
      excessTax: (json['excess_tax'] as num?)?.toDouble(),
      discount: (json['discount'] as num?)?.toDouble(),
      salesOrderLineCode: json['sales_order_line_code'] as String?,
    );

Map<String, dynamic> _$$_InvoiceLinesCreateToJson(
        _$_InvoiceLinesCreate instance) =>
    <String, dynamic>{
      'is_invoiced': instance.isInvoiced,
      'quantity': instance.quantity,
      'is_active': instance.isActive,
      'total_price': instance.totalPrice,
      'warranty_price': instance.warrantyPrice,
      'selling_price': instance.sellingPrice,
      'vat': instance.vat,
      'taxable_amount': instance.taxableAmount,
      'unit_cost': instance.unitCost,
      'excess_tax': instance.excessTax,
      'discount': instance.discount,
      'sales_order_line_code': instance.salesOrderLineCode,
    };

_$_PdfUrlModel _$$_PdfUrlModelFromJson(Map<String, dynamic> json) =>
    _$_PdfUrlModel(
      pdfUrl: json['pdf_url'] as String?,
    );

Map<String, dynamic> _$$_PdfUrlModelToJson(_$_PdfUrlModel instance) =>
    <String, dynamic>{
      'pdf_url': instance.pdfUrl,
    };
