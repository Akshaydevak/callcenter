// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Create_Orders.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateOrder _$$_CreateOrderFromJson(Map<String, dynamic> json) =>
    _$_CreateOrder(
      channelCode: json['channel_code'] as String?,
      channelId: json['channel_id'] as String?,
      trnNumber: json['trn_number'] as String?,
      channelTypeCode: json['channel_type_code'] as String?,
      channelTypeId: json['channel_type_id'] as String?,
      channelStockType: json['channel_stock_type'] as String?,
      channelName: json['channel_name'] as String?,
      orderType: json['order_type'] as String?,
      customerCode: json['customer_code'] as String?,
      customerName: json['customer_name'] as String?,
      createdBy: json['created_by'] as String?,
      customerMailId: json['customer_mail_id'] as String?,
      inventoryId: json['inventory_id'] as String?,
      customerTrnNumber: json['customer_trn_number'] as String?,
      customerGroupCode: json['customer_group_code'] as String?,
      shippingAddressId: json['shipping_address_id'] as int?,
      billingAddressId: json['billing_address_id'] as int?,
      discount: (json['discount'] as num?)?.toDouble(),
      vatableAmount: (json['vatable_amount'] as num?)?.toDouble(),
      vat: (json['vat'] as num?)?.toDouble(),
      total: (json['total'] as num?)?.toDouble(),
      unitCost: (json['unit_cost'] as num?)?.toDouble(),
      isHolded: json['is_holded'] as bool?,
      needApproval: json['need_approval'] as bool?,
      sellingPrice: (json['selling_price'] as num?)?.toDouble(),
      notes: json['notes'] as String?,
      remarks: json['remarks'] as String?,
      customerPhoneNumber: json['customer_phone_number'] as String?,
      deliveryAddress: json['delivery_address'] as String?,
      deliveryAddressFullData: json['delivery_address_full_data'] == null
          ? null
          : DeliveryAddressModel.fromJson(
              json['delivery_address_full_data'] as Map<String, dynamic>),
      deliveryCharge: (json['delivery_charge'] as num?)?.toDouble(),
      orderLinesCallcenter: (json['order_lines'] as List<dynamic>?)
          ?.map((e) => OrderLineCallcenter.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CreateOrderToJson(_$_CreateOrder instance) =>
    <String, dynamic>{
      'channel_code': instance.channelCode,
      'channel_id': instance.channelId,
      'trn_number': instance.trnNumber,
      'channel_type_code': instance.channelTypeCode,
      'channel_type_id': instance.channelTypeId,
      'channel_stock_type': instance.channelStockType,
      'channel_name': instance.channelName,
      'order_type': instance.orderType,
      'customer_code': instance.customerCode,
      'customer_name': instance.customerName,
      'created_by': instance.createdBy,
      'customer_mail_id': instance.customerMailId,
      'inventory_id': instance.inventoryId,
      'customer_trn_number': instance.customerTrnNumber,
      'customer_group_code': instance.customerGroupCode,
      'shipping_address_id': instance.shippingAddressId,
      'billing_address_id': instance.billingAddressId,
      'discount': instance.discount,
      'vatable_amount': instance.vatableAmount,
      'vat': instance.vat,
      'total': instance.total,
      'unit_cost': instance.unitCost,
      'is_holded': instance.isHolded,
      'need_approval': instance.needApproval,
      'selling_price': instance.sellingPrice,
      'notes': instance.notes,
      'remarks': instance.remarks,
      'customer_phone_number': instance.customerPhoneNumber,
      'delivery_address': instance.deliveryAddress,
      'delivery_address_full_data': instance.deliveryAddressFullData,
      'delivery_charge': instance.deliveryCharge,
      'order_lines': instance.orderLinesCallcenter,
    };

_$_OrderLineCallcenter _$$_OrderLineCallcenterFromJson(
        Map<String, dynamic> json) =>
    _$_OrderLineCallcenter(
      variantId: json['variant_id'] as int?,
      variantCode: json['variant_code'] as String?,
      variantName: json['variant_name'] as String?,
      isActive: json['is_active'] as bool? ?? false,
      barcode: json['barcode'] as String?,
      uomId: json['uom_id'] as int?,
      uomName: json['uom_name'] as String?,
      image1: json['image1'] as String?,
      sellingPrice: (json['selling_price'] as num?)?.toDouble(),
      quantity: json['quantity'] as int?,
      unitCost: (json['unit_cost'] as num?)?.toDouble(),
      discount: (json['discount'] as num?)?.toDouble(),
      totalAmount: (json['total_amount'] as num?)?.toDouble(),
      vat: (json['vat'] as num?)?.toDouble(),
      actualCost: (json['actual_cost'] as num?)?.toDouble(),
      discountBasedOn: json['discount_based_on'] as String?,
      vatableAmount: (json['vatable_amount'] as num?)?.toDouble(),
      warrantyPrice: (json['warranty_price'] as num?)?.toDouble(),
      warrantyId: json['warranty_id'] as int?,
      shippingAddressId: json['shipping_address_id'] as int?,
      returnType: json['return_type'] as String?,
      hubCode: json['hub_code'] as String?,
      hubName: json['hub_name'] as String?,
      returnTime: json['return_time'] as int?,
      inventoryId: json['inventory_id'] as String?,
      discountData: json['discount_data'] == null
          ? null
          : DiscountData.fromJson(
              json['discount_data'] as Map<String, dynamic>),
      deliverySlotId: json['delivery_slot_id'] as int?,
      needApproval: json['need_approval'] as bool? ?? false,
      deliveryCharge: (json['delivery_charge'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_OrderLineCallcenterToJson(
        _$_OrderLineCallcenter instance) =>
    <String, dynamic>{
      'variant_id': instance.variantId,
      'variant_code': instance.variantCode,
      'variant_name': instance.variantName,
      'is_active': instance.isActive,
      'barcode': instance.barcode,
      'uom_id': instance.uomId,
      'uom_name': instance.uomName,
      'image1': instance.image1,
      'selling_price': instance.sellingPrice,
      'quantity': instance.quantity,
      'unit_cost': instance.unitCost,
      'discount': instance.discount,
      'total_amount': instance.totalAmount,
      'vat': instance.vat,
      'actual_cost': instance.actualCost,
      'discount_based_on': instance.discountBasedOn,
      'vatable_amount': instance.vatableAmount,
      'warranty_price': instance.warrantyPrice,
      'warranty_id': instance.warrantyId,
      'shipping_address_id': instance.shippingAddressId,
      'return_type': instance.returnType,
      'hub_code': instance.hubCode,
      'hub_name': instance.hubName,
      'return_time': instance.returnTime,
      'inventory_id': instance.inventoryId,
      'discount_data': instance.discountData,
      'delivery_slot_id': instance.deliverySlotId,
      'need_approval': instance.needApproval,
      'delivery_charge': instance.deliveryCharge,
    };

_$_CreateCartModel _$$_CreateCartModelFromJson(Map<String, dynamic> json) =>
    _$_CreateCartModel(
      customerCode: json['customer_code'] as String?,
      customerName: json['customer_name'] as String?,
      address: json['address'] == null
          ? null
          : AddressCart.fromJson(json['address'] as Map<String, dynamic>),
      cartLinesModel: (json['cart_lines'] as List<dynamic>?)
          ?.map((e) => CartLinesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CreateCartModelToJson(_$_CreateCartModel instance) =>
    <String, dynamic>{
      'customer_code': instance.customerCode,
      'customer_name': instance.customerName,
      'address': instance.address,
      'cart_lines': instance.cartLinesModel,
    };

_$_CartLinesModel _$$_CartLinesModelFromJson(Map<String, dynamic> json) =>
    _$_CartLinesModel(
      price: (json['price'] as num?)?.toDouble(),
      vat: (json['vat'] as num?)?.toDouble(),
      quantity: json['quantity'] as int?,
      image: json['image'] as String?,
      barcode: json['barcode'] as String?,
      variantId: json['variant_id'] as int?,
      variantCode: json['variant_code'] as String?,
      inventoryId: json['inventory_id'] as String?,
      offerDetails: json['offer_details'] == null
          ? null
          : DiscountData.fromJson(
              json['offer_details'] as Map<String, dynamic>),
      variantName: json['variant_name'] as String?,
      totalPrice: (json['total_price'] as num?)?.toDouble(),
      needApproval: json['need_approval'] as bool? ?? false,
      deliverySlotId: json['delivery_slot_id'] as int?,
      isActive: json['is_active'] as bool? ?? false,
    );

Map<String, dynamic> _$$_CartLinesModelToJson(_$_CartLinesModel instance) =>
    <String, dynamic>{
      'price': instance.price,
      'vat': instance.vat,
      'quantity': instance.quantity,
      'image': instance.image,
      'barcode': instance.barcode,
      'variant_id': instance.variantId,
      'variant_code': instance.variantCode,
      'inventory_id': instance.inventoryId,
      'offer_details': instance.offerDetails,
      'variant_name': instance.variantName,
      'total_price': instance.totalPrice,
      'need_approval': instance.needApproval,
      'delivery_slot_id': instance.deliverySlotId,
      'is_active': instance.isActive,
    };

_$_CartListModel _$$_CartListModelFromJson(Map<String, dynamic> json) =>
    _$_CartListModel(
      price: (json['price'] as num?)?.toDouble(),
      vat: (json['vat'] as num?)?.toDouble(),
      quantity: json['quantity'] as int?,
      id: json['id'] as int?,
      image: json['image'] as String?,
      barcode: json['barcode'] as String?,
      variantId: json['variant_id'] as int?,
      cartCode: json['cart_code'] as String?,
      variantCode: json['variant_code'] as String?,
      inventoryId: json['inventory_id'] as String?,
      offerDetails: json['offer_details'] == null
          ? null
          : DiscountData.fromJson(
              json['offer_details'] as Map<String, dynamic>),
      variantName: json['variant_name'] as String?,
      deliverySlotID: json['delivery_slot_id'] as int?,
      isActive: json['is_active'] as bool? ?? false,
    );

Map<String, dynamic> _$$_CartListModelToJson(_$_CartListModel instance) =>
    <String, dynamic>{
      'price': instance.price,
      'vat': instance.vat,
      'quantity': instance.quantity,
      'id': instance.id,
      'image': instance.image,
      'barcode': instance.barcode,
      'variant_id': instance.variantId,
      'cart_code': instance.cartCode,
      'variant_code': instance.variantCode,
      'inventory_id': instance.inventoryId,
      'offer_details': instance.offerDetails,
      'variant_name': instance.variantName,
      'delivery_slot_id': instance.deliverySlotID,
      'is_active': instance.isActive,
    };

_$_OrderTypes _$$_OrderTypesFromJson(Map<String, dynamic> json) =>
    _$_OrderTypes(
      orderType: (json['order_types'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_OrderTypesToJson(_$_OrderTypes instance) =>
    <String, dynamic>{
      'order_types': instance.orderType,
    };

_$_AddressCart _$$_AddressCartFromJson(Map<String, dynamic> json) =>
    _$_AddressCart(
      state: json['state'] as String?,
      country: json['country'] as String?,
      area: json['area'] as String?,
      location: json['location'] as String?,
      buildingNumber: json['building_number'] as String?,
    );

Map<String, dynamic> _$$_AddressCartToJson(_$_AddressCart instance) =>
    <String, dynamic>{
      'state': instance.state,
      'country': instance.country,
      'area': instance.area,
      'location': instance.location,
      'building_number': instance.buildingNumber,
    };
