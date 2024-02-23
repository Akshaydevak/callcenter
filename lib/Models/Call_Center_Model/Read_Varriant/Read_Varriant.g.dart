// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Read_Varriant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReadVarriant _$$_ReadVarriantFromJson(Map<String, dynamic> json) =>
    _$_ReadVarriant(
      id: json['id'] as int?,
      isChangePrize: json['isChangePrize'] as bool?,
      code: json['code'] as String?,
      barcode: json['barcode'] as String?,
      name: json['name'] as String?,
      image1: json['image1'] as String?,
      salesUom: json['sales_uom'] as String?,
      salesUomName: json['sales_uom_name'] as String?,
      unitCost: (json['unit_cost'] as num?)?.toDouble(),
      returnTime: (json['return_time'] as num?)?.toDouble(),
      actualCost: (json['actual_cost'] as num?)?.toDouble(),
      minGp: (json['min_gp'] as num?)?.toDouble(),
      deliveryCharge: (json['delivery_charge'] as num?)?.toDouble(),
      avgGp: (json['avrg_gp'] as num?)?.toDouble(),
      warrantyPrice: (json['warranty_price'] as num?)?.toDouble(),
      maxGp: (json['max_gp'] as num?)?.toDouble(),
      targetGp: (json['targeted_gp'] as num?)?.toDouble(),
      vat: (json['vat'] as num?)?.toDouble(),
      orginalPrice: (json['original_price'] as num?)?.toDouble(),
      returnType: json['return_type'] as String?,
      discountBasedOn: json['discount_based_on'] as String?,
      categoryCode: json['category_code'] as String?,
      groupCode: json['group_code'] as String?,
      inventoryId: json['inventory_id'] as String?,
      isActive: json['is_active'] as bool? ?? false,
      needApproval: json['need_approval'] as bool? ?? false,
      deliverySlotId: json['delivery_slot_id'] as int?,
      discountData: json['discount_data'] == null
          ? null
          : DiscountData.fromJson(
              json['discount_data'] as Map<String, dynamic>),
      priceData: (json['price_data'] as num?)?.toDouble(),
      stockCount: json['stock_count'] as int?,
      qty: json['qty'] as int?,
      total: (json['total'] as num?)?.toDouble(),
      vatable: (json['vatable'] as num?)?.toDouble(),
      approvalCapAmount: (json['approval_cap_amount'] as num?)?.toDouble(),
      segmentList: (json['segment_list'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_ReadVarriantToJson(_$_ReadVarriant instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isChangePrize': instance.isChangePrize,
      'code': instance.code,
      'barcode': instance.barcode,
      'name': instance.name,
      'image1': instance.image1,
      'sales_uom': instance.salesUom,
      'sales_uom_name': instance.salesUomName,
      'unit_cost': instance.unitCost,
      'return_time': instance.returnTime,
      'actual_cost': instance.actualCost,
      'min_gp': instance.minGp,
      'delivery_charge': instance.deliveryCharge,
      'avrg_gp': instance.avgGp,
      'warranty_price': instance.warrantyPrice,
      'max_gp': instance.maxGp,
      'targeted_gp': instance.targetGp,
      'vat': instance.vat,
      'original_price': instance.orginalPrice,
      'return_type': instance.returnType,
      'discount_based_on': instance.discountBasedOn,
      'category_code': instance.categoryCode,
      'group_code': instance.groupCode,
      'inventory_id': instance.inventoryId,
      'is_active': instance.isActive,
      'need_approval': instance.needApproval,
      'delivery_slot_id': instance.deliverySlotId,
      'discount_data': instance.discountData,
      'price_data': instance.priceData,
      'stock_count': instance.stockCount,
      'qty': instance.qty,
      'total': instance.total,
      'vatable': instance.vatable,
      'approval_cap_amount': instance.approvalCapAmount,
      'segment_list': instance.segmentList,
    };

_$_DiscountData _$$_DiscountDataFromJson(Map<String, dynamic> json) =>
    _$_DiscountData(
      isDiscountHave: json['is_discount_have'] as bool?,
      discountType: json['discount_type'] as String?,
      discountPercentagePrice:
          (json['discount_percentage_price'] as num?)?.toDouble(),
      discountAppliedPrice:
          (json['discount_applied_price'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_DiscountDataToJson(_$_DiscountData instance) =>
    <String, dynamic>{
      'is_discount_have': instance.isDiscountHave,
      'discount_type': instance.discountType,
      'discount_percentage_price': instance.discountPercentagePrice,
      'discount_applied_price': instance.discountAppliedPrice,
    };
