// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'All_Customers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AllCustomerList _$$_AllCustomerListFromJson(Map<String, dynamic> json) =>
    _$_AllCustomerList(
      id: json['id'] as int?,
      orderCode: json['order_code'] as String?,
      customerCode: json['customer_code'] as String?,
      customerName: json['customer_name'] as String?,
      createdDate: json['created_date'] as String?,
      createdTime: json['created_time'] as String?,
      lineCode: json['line_code'] as String?,
      variantId: json['variant_id'] as int?,
      variantName: json['variant_name'] as String?,
      discountBasedOn: json['discount_based_on'] as String?,
      barcode: json['barcode'] as String?,
      uomName: json['uom_name'] as String?,
      sellingPrice: (json['selling_price'] as num?)?.toDouble(),
      quantity: json['quantity'] as int?,
      unitCost: (json['unit_cost'] as num?)?.toDouble(),
      discount: (json['discount'] as num?)?.toDouble(),
      amount: (json['amount'] as num?)?.toDouble(),
      vatableAmount: (json['vatable_amount'] as num?)?.toDouble(),
      totalAmount: (json['total_amount'] as num?)?.toDouble(),
      warrantyPrice: (json['warranty_price'] as num?)?.toDouble(),
      lastEditedAt: json['last_edited_at'] as String?,
    );

Map<String, dynamic> _$$_AllCustomerListToJson(_$_AllCustomerList instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order_code': instance.orderCode,
      'customer_code': instance.customerCode,
      'customer_name': instance.customerName,
      'created_date': instance.createdDate,
      'created_time': instance.createdTime,
      'line_code': instance.lineCode,
      'variant_id': instance.variantId,
      'variant_name': instance.variantName,
      'discount_based_on': instance.discountBasedOn,
      'barcode': instance.barcode,
      'uom_name': instance.uomName,
      'selling_price': instance.sellingPrice,
      'quantity': instance.quantity,
      'unit_cost': instance.unitCost,
      'discount': instance.discount,
      'amount': instance.amount,
      'vatable_amount': instance.vatableAmount,
      'total_amount': instance.totalAmount,
      'warranty_price': instance.warrantyPrice,
      'last_edited_at': instance.lastEditedAt,
    };
