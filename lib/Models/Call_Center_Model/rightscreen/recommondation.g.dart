// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recommondation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RecommendationCallCenterModel _$$_RecommendationCallCenterModelFromJson(
        Map<String, dynamic> json) =>
    _$_RecommendationCallCenterModel(
      id: json['id'] as int?,
      code: json['code'] as String?,
      barcode: json['barcode'] as String?,
      name: json['name'] as String?,
      image1: json['image1'] as String?,
      vat: (json['vat'] as num?)?.toDouble(),
      orderdDate: json['ordered_date'] as String?,
      salesUom: json['sales_uom'] as String?,
      salesUomName: json['sales_uom_name'] as String?,
      unitCost: (json['unit_cost'] as num?)?.toDouble(),
      minGp: (json['min_gp'] as num?)?.toDouble(),
      maxGp: (json['max_gp'] as num?)?.toDouble(),
      targetedGp: (json['targeted_gp'] as num?)?.toDouble(),
      priceData: (json['price_data'] as num?)?.toDouble(),
      actualCost: (json['actual_cost'] as num?)?.toDouble(),
      stockCount: json['stock_count'] as int?,
      minSalesOrderLimit: json['min_sales_order_limit'] as int?,
      maxSalesOrderLimit: json['max_sales_order_limit'] as int?,
      discountData: json['discount_data'] == null
          ? null
          : DiscountDataModel.fromJson(
              json['discount_data'] as Map<String, dynamic>),
      buyMoreDetailsModel: json['buy_more_details'] == null
          ? null
          : BuyMoreDetailsModel.fromJson(
              json['buy_more_details'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RecommendationCallCenterModelToJson(
        _$_RecommendationCallCenterModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'barcode': instance.barcode,
      'name': instance.name,
      'image1': instance.image1,
      'vat': instance.vat,
      'ordered_date': instance.orderdDate,
      'sales_uom': instance.salesUom,
      'sales_uom_name': instance.salesUomName,
      'unit_cost': instance.unitCost,
      'min_gp': instance.minGp,
      'max_gp': instance.maxGp,
      'targeted_gp': instance.targetedGp,
      'price_data': instance.priceData,
      'actual_cost': instance.actualCost,
      'stock_count': instance.stockCount,
      'min_sales_order_limit': instance.minSalesOrderLimit,
      'max_sales_order_limit': instance.maxSalesOrderLimit,
      'discount_data': instance.discountData,
      'buy_more_details': instance.buyMoreDetailsModel,
    };

_$_DiscountDataModel _$$_DiscountDataModelFromJson(Map<String, dynamic> json) =>
    _$_DiscountDataModel(
      isDiscountData: json['is_discount_have'] as bool?,
      discountType: json['discount_type'] as String?,
      discountAppliedPrice:
          (json['discount_applied_price'] as num?)?.toDouble(),
      discountPercentagePrice:
          (json['discount_percentage_price'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_DiscountDataModelToJson(
        _$_DiscountDataModel instance) =>
    <String, dynamic>{
      'is_discount_have': instance.isDiscountData,
      'discount_type': instance.discountType,
      'discount_applied_price': instance.discountAppliedPrice,
      'discount_percentage_price': instance.discountPercentagePrice,
    };

_$_BuyMoreDetailsModel _$$_BuyMoreDetailsModelFromJson(
        Map<String, dynamic> json) =>
    _$_BuyMoreDetailsModel(
      hasBuyMore: json['has_buy_more'] as bool?,
    );

Map<String, dynamic> _$$_BuyMoreDetailsModelToJson(
        _$_BuyMoreDetailsModel instance) =>
    <String, dynamic>{
      'has_buy_more': instance.hasBuyMore,
    };

_$_offerCallCenterModel _$$_offerCallCenterModelFromJson(
        Map<String, dynamic> json) =>
    _$_offerCallCenterModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      image1: json['image1'] as String?,
      code: json['code'] as String?,
      discountLineId: json['discount_line_id'] as int?,
      offerLineId: json['offer_lines_id'] as int?,
      stockCount: json['stock_count'] as int?,
      minOrderLimit: json['min_order_limit'] as int?,
      maxOrderLimit: json['max_order_limit'] as int?,
      discountPercentageOrPrice:
          (json['discount_percentage_or_price'] as num?)?.toDouble(),
      sellingPrice: (json['selling_price'] as num?)?.toDouble(),
      baseUomConversionFactor:
          (json['base_uom_conversion_factor'] as num?)?.toDouble(),
      salesUomConversionFactor:
          (json['sales_uom_conversion_factor'] as num?)?.toDouble(),
      offerLineCode: json['offer_lines_code'] as String?,
      basedOn: json['based_on'] as String?,
      dataTYpe: json['data_type'] as String?,
      inventoryId: json['inventory_id'] as String?,
      brandName: json['brand_name'] as String?,
      displayName: json['display_name'] as String?,
      producedCountry: json['produced_country'] as String?,
      channelCode: json['channel_code'] as String?,
      baseUomNamed: json['base_uom_name'] as String?,
      salesUomName: json['sales_uom_name'] as String?,
      isStock: json['is_stock'] as bool? ?? false,
      discountData: json['discount_data'] == null
          ? null
          : DiscountDataModel.fromJson(
              json['discount_data'] as Map<String, dynamic>),
      buyMoreDetailsModel: json['buy_more_details'] == null
          ? null
          : BuyMoreDetailsModel.fromJson(
              json['buy_more_details'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_offerCallCenterModelToJson(
        _$_offerCallCenterModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image1': instance.image1,
      'code': instance.code,
      'discount_line_id': instance.discountLineId,
      'offer_lines_id': instance.offerLineId,
      'stock_count': instance.stockCount,
      'min_order_limit': instance.minOrderLimit,
      'max_order_limit': instance.maxOrderLimit,
      'discount_percentage_or_price': instance.discountPercentageOrPrice,
      'selling_price': instance.sellingPrice,
      'base_uom_conversion_factor': instance.baseUomConversionFactor,
      'sales_uom_conversion_factor': instance.salesUomConversionFactor,
      'offer_lines_code': instance.offerLineCode,
      'based_on': instance.basedOn,
      'data_type': instance.dataTYpe,
      'inventory_id': instance.inventoryId,
      'brand_name': instance.brandName,
      'display_name': instance.displayName,
      'produced_country': instance.producedCountry,
      'channel_code': instance.channelCode,
      'base_uom_name': instance.baseUomNamed,
      'sales_uom_name': instance.salesUomName,
      'is_stock': instance.isStock,
      'discount_data': instance.discountData,
      'buy_more_details': instance.buyMoreDetailsModel,
    };

_$_warrentyModel _$$_warrentyModelFromJson(Map<String, dynamic> json) =>
    _$_warrentyModel(
      id: json['id'] as int?,
      duration: json['duration'] as int?,
      description: json['description'] as String?,
      warrentyTypeTitle: json['warranty_type_title'] as String?,
      warrentyTypeId: json['warranty_type_id'] as int?,
      warrentyConditions: (json['warranty_conditions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      warrentyCode: json['warranty_code'] as String?,
      isExtendedWarranty: json['is_extended_warranty'] as bool? ?? false,
      isAdditionalWarranty: json['is_additional_warranty'] as bool? ?? false,
      isActive: json['is_active'] as bool? ?? false,
      additionalWarranty: (json['additional_warranty'] as List<dynamic>?)
          ?.map((e) => AdditionalWarranty.fromJson(e as Map<String, dynamic>))
          .toList(),
      extendedWarranty: json['extended_warranty'] == null
          ? null
          : ExtendedWarranty.fromJson(
              json['extended_warranty'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_warrentyModelToJson(_$_warrentyModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'duration': instance.duration,
      'description': instance.description,
      'warranty_type_title': instance.warrentyTypeTitle,
      'warranty_type_id': instance.warrentyTypeId,
      'warranty_conditions': instance.warrentyConditions,
      'warranty_code': instance.warrentyCode,
      'is_extended_warranty': instance.isExtendedWarranty,
      'is_additional_warranty': instance.isAdditionalWarranty,
      'is_active': instance.isActive,
      'additional_warranty': instance.additionalWarranty,
      'extended_warranty': instance.extendedWarranty,
    };

_$_AdditionalWarranty _$$_AdditionalWarrantyFromJson(
        Map<String, dynamic> json) =>
    _$_AdditionalWarranty(
      id: json['id'] as int?,
      duration: json['duration'] as int?,
      additionalWarrantyCode: json['additional_warranty_code'] as String?,
      warrantySection: json['warranty_section'] as String?,
      warrentyTypeId: json['warranty_type_id'] as int?,
      description: json['description'] as String?,
      maximumOccurance: json['maximum_occurence'] as int?,
      isActive: json['is_active'] as bool?,
      isEnabled: json['is_enabled'] as bool?,
      additionalWarrantyConditions:
          (json['addtional_warranty_conditions'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
    );

Map<String, dynamic> _$$_AdditionalWarrantyToJson(
        _$_AdditionalWarranty instance) =>
    <String, dynamic>{
      'id': instance.id,
      'duration': instance.duration,
      'additional_warranty_code': instance.additionalWarrantyCode,
      'warranty_section': instance.warrantySection,
      'warranty_type_id': instance.warrentyTypeId,
      'description': instance.description,
      'maximum_occurence': instance.maximumOccurance,
      'is_active': instance.isActive,
      'is_enabled': instance.isEnabled,
      'addtional_warranty_conditions': instance.additionalWarrantyConditions,
    };

_$_ExtendedWarranty _$$_ExtendedWarrantyFromJson(Map<String, dynamic> json) =>
    _$_ExtendedWarranty(
      id: json['id'] as int?,
      duration: json['duration'] as int?,
      price: (json['price'] as num?)?.toDouble(),
      ExtendedWarrantyCode: json['extended_warranty_code'] as String?,
      description: json['description'] as String?,
      maximumOccurance: json['maximum_occurence'] as int?,
      isActive: json['is_active'] as bool?,
      isEnabled: json['is_enabled'] as bool?,
      additionalWarranty: (json['additional_warranty'] as List<dynamic>?)
          ?.map((e) => AdditionalWarranty.fromJson(e as Map<String, dynamic>))
          .toList(),
      buyMoreDetailsModel: json['buy_more_details'] == null
          ? null
          : BuyMoreDetailsModel.fromJson(
              json['buy_more_details'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ExtendedWarrantyToJson(_$_ExtendedWarranty instance) =>
    <String, dynamic>{
      'id': instance.id,
      'duration': instance.duration,
      'price': instance.price,
      'extended_warranty_code': instance.ExtendedWarrantyCode,
      'description': instance.description,
      'maximum_occurence': instance.maximumOccurance,
      'is_active': instance.isActive,
      'is_enabled': instance.isEnabled,
      'additional_warranty': instance.additionalWarranty,
      'buy_more_details': instance.buyMoreDetailsModel,
    };

_$_NegotiationModel _$$_NegotiationModelFromJson(Map<String, dynamic> json) =>
    _$_NegotiationModel(
      id: json['id'] as int?,
      customerGroupCode: json['customer_group_code'] as String?,
      segmentCode: json['segment_code'] as String?,
      totalCartValue: (json['total_cart_value'] as num?)?.toDouble(),
      cartlineModel: (json['cart_line'] as List<dynamic>?)
          ?.map((e) => CartLineModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_NegotiationModelToJson(_$_NegotiationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'customer_group_code': instance.customerGroupCode,
      'segment_code': instance.segmentCode,
      'total_cart_value': instance.totalCartValue,
      'cart_line': instance.cartlineModel,
    };

_$_NegotiationCheckModel _$$_NegotiationCheckModelFromJson(
        Map<String, dynamic> json) =>
    _$_NegotiationCheckModel(
      id: json['id'] as int?,
      negotiationType: json['negtiation_type'] as String?,
      negotiatonCode: json['negotiation_code'] as String?,
      negotiationLimit: json['negotiation_limit'] as int?,
      totalCartValue: (json['total_cart_value'] as num?)?.toDouble(),
      cartlineModel: (json['cart_line'] as List<dynamic>?)
          ?.map((e) => CartLineModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_NegotiationCheckModelToJson(
        _$_NegotiationCheckModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'negtiation_type': instance.negotiationType,
      'negotiation_code': instance.negotiatonCode,
      'negotiation_limit': instance.negotiationLimit,
      'total_cart_value': instance.totalCartValue,
      'cart_line': instance.cartlineModel,
    };

_$_CartLineModel _$$_CartLineModelFromJson(Map<String, dynamic> json) =>
    _$_CartLineModel(
      quantity: json['quantity'] as int?,
      totalSellingPrice: (json['total_selling_price'] as num?)?.toDouble(),
      actualCost: (json['actual_cost'] as num?)?.toDouble(),
      varaintCode: json['variant_code'] as String?,
    );

Map<String, dynamic> _$$_CartLineModelToJson(_$_CartLineModel instance) =>
    <String, dynamic>{
      'quantity': instance.quantity,
      'total_selling_price': instance.totalSellingPrice,
      'actual_cost': instance.actualCost,
      'variant_code': instance.varaintCode,
    };

_$_NegotiationOutPutModel _$$_NegotiationOutPutModelFromJson(
        Map<String, dynamic> json) =>
    _$_NegotiationOutPutModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      image: json['image'] as String?,
      description: json['description'] as String?,
      negotiationCode: json['negotiation_code'] as String?,
      negotiationValue: (json['negotiation_value'] as num?)?.toDouble(),
      basedOn: json['based_on'] as String?,
      negotiationType: json['negtiation_type'] as String?,
      negotiationAppliedValue:
          (json['negotiation_applied_value'] as num?)?.toDouble(),
      negotiationLinit: json['negotiation_limit'] as int?,
      isNegotationGet: json['is_negotiation_get'] as bool?,
      cartlineModel: (json['cart_line'] as List<dynamic>?)
          ?.map((e) => CartLineModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_NegotiationOutPutModelToJson(
        _$_NegotiationOutPutModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'description': instance.description,
      'negotiation_code': instance.negotiationCode,
      'negotiation_value': instance.negotiationValue,
      'based_on': instance.basedOn,
      'negtiation_type': instance.negotiationType,
      'negotiation_applied_value': instance.negotiationAppliedValue,
      'negotiation_limit': instance.negotiationLinit,
      'is_negotiation_get': instance.isNegotationGet,
      'cart_line': instance.cartlineModel,
    };

_$_NegotiationListModel _$$_NegotiationListModelFromJson(
        Map<String, dynamic> json) =>
    _$_NegotiationListModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      barcode: json['barcode'] as String?,
      image1: json['image1'] as String?,
      vat: (json['vat'] as num?)?.toDouble(),
      segmentation: (json['segmentation'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      negotiationLineCode: json['negotiation_line_code'] as String?,
      negotiationId: json['negotiation_id'] as int?,
      negotiationLineId: json['negotiation_line_id'] as int?,
      stockCount: json['stock_count'] as int?,
      minSalesOrderlimit: json['min_sales_order_limit'] as int?,
      maxSalesOrderlimit: json['max_sales_order_limit'] as int?,
      haveNegotiation: json['have_negotiation'] as bool?,
      priceData: (json['price_data'] as num?)?.toDouble(),
      unitCost: (json['unit_cost'] as num?)?.toDouble(),
      actualCost: (json['actual_cost'] as num?)?.toDouble(),
      salesUomName: json['sales_uom_name'] as String?,
      salesUom: json['sales_uom'] as String?,
      inventoryId: json['inventory_id'] as String?,
      discountDataModel: json['discount_data'] == null
          ? null
          : DiscountDataModel.fromJson(
              json['discount_data'] as Map<String, dynamic>),
      returnType: json['return_type'] as String?,
      returnTime: (json['return_time'] as num?)?.toDouble(),
      isAdded: json['is_added'] as bool? ?? false,
      totalPrice: (json['total_price'] as num?)?.toDouble(),
      vatableAmount: (json['vatable_amount'] as num?)?.toDouble(),
      hubCode: json['hub_code'] as String?,
      hubName: json['hub_name'] as String?,
    );

Map<String, dynamic> _$$_NegotiationListModelToJson(
        _$_NegotiationListModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'barcode': instance.barcode,
      'image1': instance.image1,
      'vat': instance.vat,
      'segmentation': instance.segmentation,
      'negotiation_line_code': instance.negotiationLineCode,
      'negotiation_id': instance.negotiationId,
      'negotiation_line_id': instance.negotiationLineId,
      'stock_count': instance.stockCount,
      'min_sales_order_limit': instance.minSalesOrderlimit,
      'max_sales_order_limit': instance.maxSalesOrderlimit,
      'have_negotiation': instance.haveNegotiation,
      'price_data': instance.priceData,
      'unit_cost': instance.unitCost,
      'actual_cost': instance.actualCost,
      'sales_uom_name': instance.salesUomName,
      'sales_uom': instance.salesUom,
      'inventory_id': instance.inventoryId,
      'discount_data': instance.discountDataModel,
      'return_type': instance.returnType,
      'return_time': instance.returnTime,
      'is_added': instance.isAdded,
      'total_price': instance.totalPrice,
      'vatable_amount': instance.vatableAmount,
      'hub_code': instance.hubCode,
      'hub_name': instance.hubName,
    };

_$_CustomerGroupModel _$$_CustomerGroupModelFromJson(
        Map<String, dynamic> json) =>
    _$_CustomerGroupModel(
      name: json['name'] as String?,
      code: json['code'] as String?,
    );

Map<String, dynamic> _$$_CustomerGroupModelToJson(
        _$_CustomerGroupModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
    };

_$_WishListModel _$$_WishListModelFromJson(Map<String, dynamic> json) =>
    _$_WishListModel(
      id: json['id'] as int?,
      created: json['created'] as String?,
      variantId: json['variant_id'] as int?,
      variantCode: json['variant_code'] as String?,
      availableQuantity: json['available_qty'] as int?,
      virtualStock: json['virtual_stock'] as int?,
      customerCode: json['customer_code'] as String?,
      inventoryCode: json['inventory_code'] as String?,
      sellingPrice: (json['selling_price'] as num?)?.toDouble(),
      websiteStockStatus: json['website_stock_status'] as String?,
      variantDataModel: json['variant_data'] == null
          ? null
          : VariantDataModel.fromJson(
              json['variant_data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_WishListModelToJson(_$_WishListModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created': instance.created,
      'variant_id': instance.variantId,
      'variant_code': instance.variantCode,
      'available_qty': instance.availableQuantity,
      'virtual_stock': instance.virtualStock,
      'customer_code': instance.customerCode,
      'inventory_code': instance.inventoryCode,
      'selling_price': instance.sellingPrice,
      'website_stock_status': instance.websiteStockStatus,
      'variant_data': instance.variantDataModel,
    };

_$_VariantDataModel _$$_VariantDataModelFromJson(Map<String, dynamic> json) =>
    _$_VariantDataModel(
      id: json['id'] as int?,
      image: json['image'] as String?,
      barcode: json['barcode'] as String?,
      variantame: json['variant_name'] as String?,
      inventoryName: json['inventory_name'] as String?,
      minSalesOrder: json['min_sales_order'] as int?,
      actualCost: (json['actual_cost'] as num?)?.toDouble(),
      maxSaleOrder: json['max_sales_order'] as int?,
      groupCode: json['group_code'] as String?,
      groupName: json['group_name'] as String?,
      categoryCode: json['category_code'] as String?,
      divisiionName: json['division_name'] as String?,
      divisiionCode: json['division_code'] as String?,
      salesUom: json['sales_uom'] as String?,
    );

Map<String, dynamic> _$$_VariantDataModelToJson(_$_VariantDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'barcode': instance.barcode,
      'variant_name': instance.variantame,
      'inventory_name': instance.inventoryName,
      'min_sales_order': instance.minSalesOrder,
      'actual_cost': instance.actualCost,
      'max_sales_order': instance.maxSaleOrder,
      'group_code': instance.groupCode,
      'group_name': instance.groupName,
      'category_code': instance.categoryCode,
      'division_name': instance.divisiionName,
      'division_code': instance.divisiionCode,
      'sales_uom': instance.salesUom,
    };
