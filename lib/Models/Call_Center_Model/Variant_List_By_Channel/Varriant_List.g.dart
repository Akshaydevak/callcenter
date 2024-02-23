// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Varriant_List.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VariantList _$$_VariantListFromJson(Map<String, dynamic> json) =>
    _$_VariantList(
      id: json['id'] as int?,
      code: json['code'] as String?,
      barcode: json['barcode'] == null
          ? null
          : Barcode.fromJson(json['barcode'] as Map<String, dynamic>),
      name: json['name'] as String?,
      stockQty: json['stock_qty'] as int?,
      image1: json['image1'] as String?,
    );

Map<String, dynamic> _$$_VariantListToJson(_$_VariantList instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'barcode': instance.barcode,
      'name': instance.name,
      'stock_qty': instance.stockQty,
      'image1': instance.image1,
    };

_$_Barcode _$$_BarcodeFromJson(Map<String, dynamic> json) => _$_Barcode(
      fileName: json['file_name'] as String?,
      barcodeNumber: json['barcode_number'] as String?,
    );

Map<String, dynamic> _$$_BarcodeToJson(_$_Barcode instance) =>
    <String, dynamic>{
      'file_name': instance.fileName,
      'barcode_number': instance.barcodeNumber,
    };
