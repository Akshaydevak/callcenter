
import 'package:freezed_annotation/freezed_annotation.dart';

part 'Delivery_Address.freezed.dart';
part 'Delivery_Address.g.dart';

@freezed
class DeliveryAddressData with _$DeliveryAddressData{
  const factory DeliveryAddressData({

    final int? id,
    final String? longitude,
    final String? latitude,
    @JsonKey(name: "address_type")final String? addressType,
    @JsonKey(name: "country")final String? country,
    @JsonKey(name: "location")final String? location,
    @JsonKey(name: "landmark")final String? landMark,
    @JsonKey(name: "country_name")final String? countryName,
    @JsonKey(name: "state")final String? state,
    @JsonKey(name: "city")final String? city,
    @JsonKey(name: "user_code")final String? userCode,
    @JsonKey(name: "full_name")final String? fullName,
    @JsonKey(name: "contact")final String? contact,
    @JsonKey(name: "street_name")final String? streetName,
    @JsonKey(name: "building_name")final String? buildingName,
    @JsonKey(name: "building_no")final String? buildingNo,
    @JsonKey(name: "is_default",defaultValue: false)final bool? defaultValue,



  }) =_DeliveryAddressData;
  factory DeliveryAddressData.fromJson(Map<String,dynamic>json)=>
      _$DeliveryAddressDataFromJson(json);
}