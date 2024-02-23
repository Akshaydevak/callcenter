import 'package:freezed_annotation/freezed_annotation.dart';

part 'Sales_Invoice_Code_List.freezed.dart';
part 'Sales_Invoice_Code_List.g.dart';

@freezed
class InvoiceCodeList with _$InvoiceCodeList{
  const factory InvoiceCodeList({
    final int? id,
    @JsonKey(name: "invoice_code")final String? invoiceCode
  })=_InvoiceCodeList;
  factory InvoiceCodeList.fromJson(Map<String, dynamic> json) =>
      _$InvoiceCodeListFromJson(json);
}