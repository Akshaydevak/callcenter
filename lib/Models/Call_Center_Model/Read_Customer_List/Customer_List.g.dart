// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Customer_List.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CustomerList _$$_CustomerListFromJson(Map<String, dynamic> json) =>
    _$_CustomerList(
      id: json['id'] as int?,
      country: json['country'] as String?,
      isLoading: json['isLoading'] as bool?,
      state: json['state'] as String?,
      mobile: json['mobile'] as String?,
      deliveryAddressModel: json['deliveryAddressModel'] == null
          ? null
          : DeliveryAddressModel.fromJson(
              json['deliveryAddressModel'] as Map<String, dynamic>),
      customerUserCode: json['customer_usercode'] as String?,
      customerName: json['customer_name'] as String?,
      countryName: json['country_name'] as String?,
      alternativeMobile: json['alternative_mobile_no'] as String?,
      phoneNuberCode: json['phone_number_code'] as int?,
      phoneNumber: json['phone_number'] as String?,
      createdDate: json['created_date'] as String?,
      email: json['alternative_email'] as String?,
      isActive: json['is_active'] as bool?,
      isDelete: json['is_delete'] as bool?,
      dateJoined: json['date_joined'] as String?,
      phoneNumberCountryCode: json['phone_number_country_code'] as String?,
      isBusinessUser: json['is_business_user'] as bool?,
      legalUnit: json['legal_unit'] as String?,
      businessUnit: json['business_unit'] as String?,
      customerId: json['customer_id'] as int?,
      businessData: json['business_data'] == null
          ? null
          : BusinessData.fromJson(
              json['business_data'] as Map<String, dynamic>),
      customerMeta: json['customer_meta'] == null
          ? null
          : BusinessMeta.fromJson(
              json['customer_meta'] as Map<String, dynamic>),
      taxId: json['tax_id'] as String?,
      buisnessName: json['business_name'] as String?,
      buildingName: json['building_name'] as String?,
    );

Map<String, dynamic> _$$_CustomerListToJson(_$_CustomerList instance) =>
    <String, dynamic>{
      'id': instance.id,
      'country': instance.country,
      'isLoading': instance.isLoading,
      'state': instance.state,
      'mobile': instance.mobile,
      'deliveryAddressModel': instance.deliveryAddressModel,
      'customer_usercode': instance.customerUserCode,
      'customer_name': instance.customerName,
      'country_name': instance.countryName,
      'alternative_mobile_no': instance.alternativeMobile,
      'phone_number_code': instance.phoneNuberCode,
      'phone_number': instance.phoneNumber,
      'created_date': instance.createdDate,
      'alternative_email': instance.email,
      'is_active': instance.isActive,
      'is_delete': instance.isDelete,
      'date_joined': instance.dateJoined,
      'phone_number_country_code': instance.phoneNumberCountryCode,
      'is_business_user': instance.isBusinessUser,
      'legal_unit': instance.legalUnit,
      'business_unit': instance.businessUnit,
      'customer_id': instance.customerId,
      'business_data': instance.businessData,
      'customer_meta': instance.customerMeta,
      'tax_id': instance.taxId,
      'business_name': instance.buisnessName,
      'building_name': instance.buildingName,
    };

_$_BusinessData _$$_BusinessDataFromJson(Map<String, dynamic> json) =>
    _$_BusinessData(
      id: json['id'] as int?,
      custId: json['customer_id'] as int?,
      taxId: json['tax_id'] as String?,
      businessName: json['business_name'] as String?,
      businessMode: json['business_mode'] as String?,
      designation: json['designation'] as String?,
      impEmpCode: json['import_export_code'] as String?,
      businessMeta: json['business_meta'] == null
          ? null
          : BusinessMeta.fromJson(
              json['business_meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_BusinessDataToJson(_$_BusinessData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'customer_id': instance.custId,
      'tax_id': instance.taxId,
      'business_name': instance.businessName,
      'business_mode': instance.businessMode,
      'designation': instance.designation,
      'import_export_code': instance.impEmpCode,
      'business_meta': instance.businessMeta,
    };

_$_BusinessMeta _$$_BusinessMetaFromJson(Map<String, dynamic> json) =>
    _$_BusinessMeta(
      state: json['state'] as String?,
      zone: json['zone'] as String?,
      area: json['area'] as String?,
      city: json['city'] as String?,
      street: json['street'] as String?,
      country: json['country'] as String?,
      landmark: json['landmark'] as String?,
      facebook: json['facebook'] as String?,
      fullname: json['fullname'] as String?,
      snapchat: json['snapchat'] as String?,
      whatsapp: json['whatsapp'] as String?,
      instagram: json['instagram'] as String?,
      altEmail: json['alternative_email'] as String?,
      altMobile: json['alternative_mobile'] as String?,
    );

Map<String, dynamic> _$$_BusinessMetaToJson(_$_BusinessMeta instance) =>
    <String, dynamic>{
      'state': instance.state,
      'zone': instance.zone,
      'area': instance.area,
      'city': instance.city,
      'street': instance.street,
      'country': instance.country,
      'landmark': instance.landmark,
      'facebook': instance.facebook,
      'fullname': instance.fullname,
      'snapchat': instance.snapchat,
      'whatsapp': instance.whatsapp,
      'instagram': instance.instagram,
      'alternative_email': instance.altEmail,
      'alternative_mobile': instance.altMobile,
    };

_$_DeliveryAddressModel _$$_DeliveryAddressModelFromJson(
        Map<String, dynamic> json) =>
    _$_DeliveryAddressModel(
      state: json['state'] as String?,
      longitude: json['longitude'] as String?,
      latitude: json['latitude'] as String?,
      zone: json['zone'] as String?,
      area: json['area'] as String?,
      city: json['city'] as String?,
      street: json['street'] as String?,
      country: json['country'] as String?,
      landmark: json['landmark'] as String?,
      location: json['location'] as String?,
      facebook: json['facebook'] as String?,
      fullname: json['full_name'] as String?,
      snapchat: json['snapchat'] as String?,
      whatsapp: json['whatsapp'] as String?,
      instagram: json['instagram'] as String?,
      buildingName: json['building_name'] as String?,
      buildingNo: json['building_no'] as String?,
      altEmail: json['alternative_email'] as String?,
      altMobile: json['alternative_mobile'] as String?,
    );

Map<String, dynamic> _$$_DeliveryAddressModelToJson(
        _$_DeliveryAddressModel instance) =>
    <String, dynamic>{
      'state': instance.state,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'zone': instance.zone,
      'area': instance.area,
      'city': instance.city,
      'street': instance.street,
      'country': instance.country,
      'landmark': instance.landmark,
      'location': instance.location,
      'facebook': instance.facebook,
      'full_name': instance.fullname,
      'snapchat': instance.snapchat,
      'whatsapp': instance.whatsapp,
      'instagram': instance.instagram,
      'building_name': instance.buildingName,
      'building_no': instance.buildingNo,
      'alternative_email': instance.altEmail,
      'alternative_mobile': instance.altMobile,
    };
