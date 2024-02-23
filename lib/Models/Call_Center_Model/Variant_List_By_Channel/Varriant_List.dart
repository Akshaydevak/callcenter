import 'package:freezed_annotation/freezed_annotation.dart';

part 'Varriant_List.freezed.dart';
part 'Varriant_List.g.dart';
@freezed
class VariantList with _$VariantList{
  const factory VariantList({
    final int? id,
    @JsonKey(name: "code")final String? code,
    @JsonKey(name: "barcode")final Barcode? barcode,
    @JsonKey(name: "name")final String? name,
    @JsonKey(name: "stock_qty")final int? stockQty,
    @JsonKey(name: "image1")final String? image1,

  })=_VariantList;
  factory VariantList.fromJson(Map<String,dynamic>json)=>
      _$VariantListFromJson(json);
}


@freezed
class Barcode with _$Barcode{
  const factory Barcode({

    @JsonKey(name: "file_name")final String? fileName,
    @JsonKey(name: "barcode_number")final String? barcodeNumber,

  })=_Barcode;
  factory Barcode.fromJson(Map<String,dynamic>json)=>
      _$BarcodeFromJson(json);
}