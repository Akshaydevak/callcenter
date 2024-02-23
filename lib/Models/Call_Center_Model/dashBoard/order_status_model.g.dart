// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_status_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderStatus _$$_OrderStatusFromJson(Map<String, dynamic> json) =>
    _$_OrderStatus(
      id: json['id'] as int?,
      total: (json['total'] as num?)?.toDouble(),
      orderedDate: json['ordered_date'] as String?,
      customerName: json['customer_name'] as String?,
      orderStats: json['order_satus'] as String?,
    );

Map<String, dynamic> _$$_OrderStatusToJson(_$_OrderStatus instance) =>
    <String, dynamic>{
      'id': instance.id,
      'total': instance.total,
      'ordered_date': instance.orderedDate,
      'customer_name': instance.customerName,
      'order_satus': instance.orderStats,
    };

_$_NewOrderListModel _$$_NewOrderListModelFromJson(Map<String, dynamic> json) =>
    _$_NewOrderListModel(
      id: json['id'] as int?,
      total: (json['total'] as num?)?.toDouble(),
      data: (json['data'] as num?)?.toDouble(),
      variantName: json['variant_name'] as String?,
      sellingPrice: (json['selling_price'] as num?)?.toDouble(),
      unitCost: (json['unit_cost'] as num?)?.toDouble(),
      totalAmount: (json['total_amount'] as num?)?.toDouble(),
      todaysSale: (json['today_sales'] as num?)?.toDouble(),
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$_NewOrderListModelToJson(
        _$_NewOrderListModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'total': instance.total,
      'data': instance.data,
      'variant_name': instance.variantName,
      'selling_price': instance.sellingPrice,
      'unit_cost': instance.unitCost,
      'total_amount': instance.totalAmount,
      'today_sales': instance.todaysSale,
      'image': instance.image,
    };

_$_StateList _$$_StateListFromJson(Map<String, dynamic> json) => _$_StateList(
      code: json['code'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_StateListToJson(_$_StateList instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
    };

_$_InventoryListModel _$$_InventoryListModelFromJson(
        Map<String, dynamic> json) =>
    _$_InventoryListModel(
      name: json['name'] as String?,
      description: json['description'] as String?,
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      id: json['id'] as int?,
      status: json['status'] as bool?,
      state: json['state'] as String?,
      email: json['email'] as String?,
      primary: json['primary'] as String?,
      isInventoryExist: json['isInventoryExist'] as bool?,
      isActive: json['is_active'] as bool? ?? false,
      isOffline: json['is_offline'] as bool? ?? false,
      countryName: json['country_name'] as String?,
      businessUnitCode: json['business_unit_code'] as String?,
      addressOne: json['address_one'] as String?,
      addressTwo: json['address_two'] as String?,
      landMark: json['land_mark'] as String?,
      companyLogo: json['company_logo'] as String?,
      storeLogo: json['store_logo'] as String?,
      userId: json['user_id'] as String?,
      cityz: json['city_or_town'] as String?,
      companyDisplayName: json['company_display_name'] as String?,
      businessAddress: json['business_addres'] as int?,
    );

Map<String, dynamic> _$$_InventoryListModelToJson(
        _$_InventoryListModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'address': instance.address,
      'id': instance.id,
      'status': instance.status,
      'state': instance.state,
      'email': instance.email,
      'primary': instance.primary,
      'isInventoryExist': instance.isInventoryExist,
      'is_active': instance.isActive,
      'is_offline': instance.isOffline,
      'country_name': instance.countryName,
      'business_unit_code': instance.businessUnitCode,
      'address_one': instance.addressOne,
      'address_two': instance.addressTwo,
      'land_mark': instance.landMark,
      'company_logo': instance.companyLogo,
      'store_logo': instance.storeLogo,
      'user_id': instance.userId,
      'city_or_town': instance.cityz,
      'company_display_name': instance.companyDisplayName,
      'business_addres': instance.businessAddress,
    };

_$_Address _$$_AddressFromJson(Map<String, dynamic> json) => _$_Address(
      state: json['state'] as String?,
      location: json['location'] as String?,
      country: json['country'] as String?,
      area: json['area'] as String?,
      id: json['id'] as int?,
      email: json['email'] as String?,
      contact: json['contact'] == null
          ? null
          : Contact.fromJson(json['contact'] as Map<String, dynamic>),
      addressOne: json['address_one'] as String?,
      AddressTwo: json['address_two'] as String?,
      cityz: json['city_or_town'] as String?,
      countryName: json['country_name'] as String?,
    );

Map<String, dynamic> _$$_AddressToJson(_$_Address instance) =>
    <String, dynamic>{
      'state': instance.state,
      'location': instance.location,
      'country': instance.country,
      'area': instance.area,
      'id': instance.id,
      'email': instance.email,
      'contact': instance.contact,
      'address_one': instance.addressOne,
      'address_two': instance.AddressTwo,
      'city_or_town': instance.cityz,
      'country_name': instance.countryName,
    };

_$_Contact _$$_ContactFromJson(Map<String, dynamic> json) => _$_Contact(
      primary: json['primary'] as String?,
    );

Map<String, dynamic> _$$_ContactToJson(_$_Contact instance) =>
    <String, dynamic>{
      'primary': instance.primary,
    };
