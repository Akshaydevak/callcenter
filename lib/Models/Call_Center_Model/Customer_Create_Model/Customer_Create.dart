import 'package:freezed_annotation/freezed_annotation.dart';

part 'Customer_Create.freezed.dart';
part 'Customer_Create.g.dart';
@freezed
class CustomerCreate with _$CustomerCreate{
  const factory CustomerCreate({
    @JsonKey(name: "fullname")final String? fullName,
    @JsonKey(name: "mobile")final String? mobile,
    @JsonKey(name: "email")final String? email,
    @JsonKey(name: "country")final String? country,
    @JsonKey(name: "state")final String? state,
    @JsonKey(name: "building_name")final String? buildingName,
    @JsonKey(name: "business_name")final String? businessName,
    @JsonKey(name: "tax_id")final String? taxId,
    @JsonKey(name: "import_export_code")final String? impExpCode,
    @JsonKey(name: "alternative_mobile")final String? altMobile,
    @JsonKey(name: "alternative_email")final String? altEmail,
    @JsonKey(name: "is_login",defaultValue: false)final bool? isLogin,
    @JsonKey(name: "is_business",defaultValue: false)final bool? isBuisness,
    @JsonKey(name: "zone")final String? zone,
    @JsonKey(name: "whatsapp")final String? whatsapp,
    @JsonKey(name: "facebook")final String? facebook,
    @JsonKey(name: "instagram")final String? instagram,
    @JsonKey(name: "snapchat")final String? snapchat,
    @JsonKey(name: "city")final String? city,
    @JsonKey(name: "area")final String? area,
    @JsonKey(name: "street")final String? street,
    @JsonKey(name: "landmark")final String? landmark,
    @JsonKey(name: "customer_usercode")final String? customerUserCode,

})=_CustomerCreate;
  factory CustomerCreate.fromJson(Map<String,dynamic>json)=>
      _$CustomerCreateFromJson(json);
}


@freezed
class DeliverySlotPostModel with _$DeliverySlotPostModel{
  const factory DeliverySlotPostModel({
     final int? id,
     final String? group,
     final String? state,
     final String? volume,
     final String? address,
     final String? contact,
     final String? country,
     final String? category,
     final String? landmark,
     final String? latitude,
     final String? longitude,
     final List<String>? segment,
    @JsonKey(name: "full_name")final String? fullName,
    @JsonKey(name: "street_name")final String? streetName,
    @JsonKey(name: "city_or_town")final String? cityOrTown,
    @JsonKey(name: "varient_code")final String? varientCode,
    @JsonKey(name: "building_name")final String? buildingName,

})=_DeliverySlotPostModel;
  factory DeliverySlotPostModel.fromJson(Map<String,dynamic>json)=>
      _$DeliverySlotPostModelFromJson(json);
}
@freezed
class DeliverySlotResultModel with _$DeliverySlotResultModel{
  const factory DeliverySlotResultModel({
     final int? id,
     final String? name,

    @JsonKey(name: "delivery_charge")final double? deliveryCharge,
    @JsonKey(name: "delivery_time")final String? deliveryTime,
    @JsonKey(name: "delivery_process")final String? deliveryProcess,

})=_DeliverySlotResultModel;
  factory DeliverySlotResultModel.fromJson(Map<String,dynamic>json)=>
      _$DeliverySlotResultModelFromJson(json);
}
@freezed
class CaptchaReadModel with _$CaptchaReadModel{
  const factory CaptchaReadModel({
     final int? id,

    @JsonKey(name: "captcha_id")final String? captchaId,
    @JsonKey(name: "captcha_image_base64")final String? captchaImageBase64,

})=_CaptchaReadModel;
  factory CaptchaReadModel.fromJson(Map<String,dynamic>json)=>
      _$CaptchaReadModelFromJson(json);
}