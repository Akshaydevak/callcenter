// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Customer_Create.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CustomerCreate _$$_CustomerCreateFromJson(Map<String, dynamic> json) =>
    _$_CustomerCreate(
      fullName: json['fullname'] as String?,
      mobile: json['mobile'] as String?,
      email: json['email'] as String?,
      country: json['country'] as String?,
      state: json['state'] as String?,
      buildingName: json['building_name'] as String?,
      businessName: json['business_name'] as String?,
      taxId: json['tax_id'] as String?,
      impExpCode: json['import_export_code'] as String?,
      altMobile: json['alternative_mobile'] as String?,
      altEmail: json['alternative_email'] as String?,
      isLogin: json['is_login'] as bool? ?? false,
      isBuisness: json['is_business'] as bool? ?? false,
      zone: json['zone'] as String?,
      whatsapp: json['whatsapp'] as String?,
      facebook: json['facebook'] as String?,
      instagram: json['instagram'] as String?,
      snapchat: json['snapchat'] as String?,
      city: json['city'] as String?,
      area: json['area'] as String?,
      street: json['street'] as String?,
      landmark: json['landmark'] as String?,
      customerUserCode: json['customer_usercode'] as String?,
    );

Map<String, dynamic> _$$_CustomerCreateToJson(_$_CustomerCreate instance) =>
    <String, dynamic>{
      'fullname': instance.fullName,
      'mobile': instance.mobile,
      'email': instance.email,
      'country': instance.country,
      'state': instance.state,
      'building_name': instance.buildingName,
      'business_name': instance.businessName,
      'tax_id': instance.taxId,
      'import_export_code': instance.impExpCode,
      'alternative_mobile': instance.altMobile,
      'alternative_email': instance.altEmail,
      'is_login': instance.isLogin,
      'is_business': instance.isBuisness,
      'zone': instance.zone,
      'whatsapp': instance.whatsapp,
      'facebook': instance.facebook,
      'instagram': instance.instagram,
      'snapchat': instance.snapchat,
      'city': instance.city,
      'area': instance.area,
      'street': instance.street,
      'landmark': instance.landmark,
      'customer_usercode': instance.customerUserCode,
    };

_$_DeliverySlotPostModel _$$_DeliverySlotPostModelFromJson(
        Map<String, dynamic> json) =>
    _$_DeliverySlotPostModel(
      id: json['id'] as int?,
      group: json['group'] as String?,
      state: json['state'] as String?,
      volume: json['volume'] as String?,
      address: json['address'] as String?,
      contact: json['contact'] as String?,
      country: json['country'] as String?,
      category: json['category'] as String?,
      landmark: json['landmark'] as String?,
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
      segment:
          (json['segment'] as List<dynamic>?)?.map((e) => e as String).toList(),
      fullName: json['full_name'] as String?,
      streetName: json['street_name'] as String?,
      cityOrTown: json['city_or_town'] as String?,
      varientCode: json['varient_code'] as String?,
      buildingName: json['building_name'] as String?,
    );

Map<String, dynamic> _$$_DeliverySlotPostModelToJson(
        _$_DeliverySlotPostModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'group': instance.group,
      'state': instance.state,
      'volume': instance.volume,
      'address': instance.address,
      'contact': instance.contact,
      'country': instance.country,
      'category': instance.category,
      'landmark': instance.landmark,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'segment': instance.segment,
      'full_name': instance.fullName,
      'street_name': instance.streetName,
      'city_or_town': instance.cityOrTown,
      'varient_code': instance.varientCode,
      'building_name': instance.buildingName,
    };

_$_DeliverySlotResultModel _$$_DeliverySlotResultModelFromJson(
        Map<String, dynamic> json) =>
    _$_DeliverySlotResultModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      deliveryCharge: (json['delivery_charge'] as num?)?.toDouble(),
      deliveryTime: json['delivery_time'] as String?,
      deliveryProcess: json['delivery_process'] as String?,
    );

Map<String, dynamic> _$$_DeliverySlotResultModelToJson(
        _$_DeliverySlotResultModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'delivery_charge': instance.deliveryCharge,
      'delivery_time': instance.deliveryTime,
      'delivery_process': instance.deliveryProcess,
    };

_$_CaptchaReadModel _$$_CaptchaReadModelFromJson(Map<String, dynamic> json) =>
    _$_CaptchaReadModel(
      id: json['id'] as int?,
      captchaId: json['captcha_id'] as String?,
      captchaImageBase64: json['captcha_image_base64'] as String?,
    );

Map<String, dynamic> _$$_CaptchaReadModelToJson(_$_CaptchaReadModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'captcha_id': instance.captchaId,
      'captcha_image_base64': instance.captchaImageBase64,
    };