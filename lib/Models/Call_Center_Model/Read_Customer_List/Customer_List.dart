import 'package:freezed_annotation/freezed_annotation.dart';

part 'Customer_List.freezed.dart';
part 'Customer_List.g.dart';
@freezed
class CustomerList with _$CustomerList{
  const factory CustomerList({
    final int? id,
    final String? country,
    final bool? isLoading,
    final String? state,
    final String? mobile,
    final DeliveryAddressModel? deliveryAddressModel,


    @JsonKey(name: "customer_usercode")final String? customerUserCode,
    @JsonKey(name: "customer_name")final String? customerName,
    @JsonKey(name: "country_name")final String? countryName,
    @JsonKey(name: "alternative_mobile_no")final String? alternativeMobile,
    @JsonKey(name: "phone_number_code")final int? phoneNuberCode,
    @JsonKey(name: "phone_number")final String? phoneNumber,
    @JsonKey(name: "created_date")final String? createdDate,
    @JsonKey(name: "alternative_email")final String? email,
    @JsonKey(name: "is_active")final bool? isActive,
    @JsonKey(name: "is_delete")final bool? isDelete,

    @JsonKey(name: "date_joined")final String? dateJoined,
    @JsonKey(name: "phone_number_country_code")final String? phoneNumberCountryCode,
    @JsonKey(name: "is_business_user")final bool? isBusinessUser,
    @JsonKey(name: "legal_unit")final String? legalUnit,
    @JsonKey(name: "business_unit")final String? businessUnit,
    @JsonKey(name: "customer_id")final int? customerId,
    @JsonKey(name: "business_data")final BusinessData? businessData,
    @JsonKey(name: "customer_meta")final BusinessMeta? customerMeta,
    @JsonKey(name: "tax_id")final String? taxId,
    @JsonKey(name: "business_name")final String? buisnessName,
    @JsonKey(name: "building_name")final String? buildingName,




  })=_CustomerList;
  factory CustomerList.fromJson(Map<String,dynamic>json)=>
      _$CustomerListFromJson(json);
}

@freezed
class BusinessData with _$BusinessData{
  const factory BusinessData({

    final int? id,
    @JsonKey(name: "customer_id")final int? custId,
    @JsonKey(name: "tax_id")final String? taxId,
    @JsonKey(name: "business_name")final String? businessName,
    @JsonKey(name: "business_mode")final String? businessMode,
    @JsonKey(name: "designation")final String? designation,
    @JsonKey(name: "import_export_code")final String? impEmpCode,
    @JsonKey(name: "business_meta")final BusinessMeta? businessMeta,



  })=_BusinessData;
  factory BusinessData.fromJson(Map<String,dynamic>json)=>
      _$BusinessDataFromJson(json);
}

@freezed
class BusinessMeta with _$BusinessMeta{
  const factory BusinessMeta({
    final String? state,
    @JsonKey(name: "zone")final String? zone,
    @JsonKey(name: "area")final String? area,
    @JsonKey(name: "city")final String? city,
    @JsonKey(name: "street")final String? street,
    @JsonKey(name: "country")final String? country,
    @JsonKey(name: "landmark")final String? landmark,
    @JsonKey(name: "facebook")final String? facebook,
    @JsonKey(name: "fullname")final String? fullname,
    @JsonKey(name: "snapchat")final String? snapchat,
    @JsonKey(name: "whatsapp")final String? whatsapp,
    @JsonKey(name: "instagram")final String? instagram,
    @JsonKey(name: "alternative_email")final String? altEmail,
    @JsonKey(name: "alternative_mobile")final String? altMobile,



  })=_BusinessMeta;
  factory BusinessMeta.fromJson(Map<String,dynamic>json)=>
      _$BusinessMetaFromJson(json);
}
@freezed
class DeliveryAddressModel with _$DeliveryAddressModel{
  const factory DeliveryAddressModel({
    final String? state,
    final String? longitude,
    final String? latitude,
    @JsonKey(name: "zone")final String? zone,
    @JsonKey(name: "area")final String? area,
    @JsonKey(name: "city")final String? city,
    @JsonKey(name: "street")final String? street,
    @JsonKey(name: "country")final String? country,
    @JsonKey(name: "landmark")final String? landmark,
    @JsonKey(name: "location")final String? location,
    @JsonKey(name: "facebook")final String? facebook,
    @JsonKey(name: "full_name")final String? fullname,
    @JsonKey(name: "snapchat")final String? snapchat,
    @JsonKey(name: "whatsapp")final String? whatsapp,
    @JsonKey(name: "instagram")final String? instagram,
    @JsonKey(name: "building_name")final String? buildingName,
    @JsonKey(name: "building_no")final String? buildingNo,
    @JsonKey(name: "alternative_email")final String? altEmail,
    @JsonKey(name: "alternative_mobile")final String? altMobile,



  })=_DeliveryAddressModel;
  factory DeliveryAddressModel.fromJson(Map<String,dynamic>json)=>
      _$DeliveryAddressModelFromJson(json);
}