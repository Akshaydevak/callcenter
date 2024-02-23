import 'package:freezed_annotation/freezed_annotation.dart';

part 'Create_Sales_Invoice.freezed.dart';
part 'Create_Sales_Invoice.g.dart';

@freezed
class CreateSalesInvoice with _$CreateSalesInvoice{
  const factory CreateSalesInvoice({
    @JsonKey(name: "sales_order_id")final String? salesOrderId,
    @JsonKey(name: "invoiced_by")final String? invoicedBy,
    @JsonKey(name: "notes")final String? notes,
    @JsonKey(name: "remarks")final String? remarks,
    @JsonKey(name: "assigned_to")final String? assignTo,
    @JsonKey(name: "discount")final double? discount,
    @JsonKey(name: "unit_cost")final double? unitCost,
    @JsonKey(name: "excess_tax")final double? excessTax,
    @JsonKey(name: "taxable_amount")final double? taxableAmount,
    @JsonKey(name: "vat")final double? vat,
    @JsonKey(name: "selling_price_total")final double? sellingPriceTotal,
    @JsonKey(name: "total_price")final double? totalPrice,
    @JsonKey(name: "warranty_price")final double? warrantyPrice,
    @JsonKey(name: "invoice_lines")final List<InvoiceLinesCreate>? invoiceLinesCreate,
})=_CreateSalesInvoice;
  factory CreateSalesInvoice.fromJson(Map<String,dynamic>json)=>
      _$CreateSalesInvoiceFromJson(json);
}

@freezed
class InvoiceLinesCreate with _$InvoiceLinesCreate{
  const factory InvoiceLinesCreate({
    @JsonKey(name: "is_invoiced")final bool? isInvoiced,
    @JsonKey(name: "quantity")final int? quantity,
    @JsonKey(name: "is_active")final bool? isActive,
    @JsonKey(name: "total_price")final double? totalPrice,
    @JsonKey(name: "warranty_price")final double? warrantyPrice,
    @JsonKey(name: "selling_price")final double? sellingPrice,
    @JsonKey(name: "vat")final double? vat,
    @JsonKey(name: "taxable_amount")final double? taxableAmount,
    @JsonKey(name: "unit_cost")final double? unitCost,
    @JsonKey(name: "excess_tax")final double? excessTax,
    @JsonKey(name: "discount")final double? discount,
    @JsonKey(name: "sales_order_line_code")final String? salesOrderLineCode,
  })=_InvoiceLinesCreate;
  factory InvoiceLinesCreate.fromJson(Map<String,dynamic>json)=>
      _$InvoiceLinesCreateFromJson(json);
}


@freezed
class PdfUrlModel with _$PdfUrlModel{
  const factory PdfUrlModel({
    @JsonKey(name: "pdf_url")final String? pdfUrl,

  })=_PdfUrlModel;
  factory PdfUrlModel.fromJson(Map<String,dynamic>json)=>
      _$PdfUrlModelFromJson(json);
}