import 'package:freezed_annotation/freezed_annotation.dart';

part 'Business_Unit_Data.freezed.dart';
part 'Business_Unit_Data.g.dart';


@freezed
class BusinessUnitData with _$BusinessUnitData{
  const factory BusinessUnitData({
    final int? id,
    @JsonKey(name: "state")final String? state,
    @JsonKey(name: "country")final String? country,
    @JsonKey(name: "address_one")final String? addOne,
    @JsonKey(name: "location")final String? location,
    @JsonKey(name: "city_or_town")final String? cityOrTown,
    @JsonKey(name: "pin")final String? pin,
    @JsonKey(name: "land_mark")final String? landmark,
    @JsonKey(name: "contact")final Contact? contact,
    @JsonKey(name: "status")final bool? status,
    @JsonKey(name: "email")final String? email,
    @JsonKey(name: "business_unit_code")final String? busUnitCode,
    @JsonKey(name: "name")final String? name,
    @JsonKey(name: "search_name")final String? serchName,
    @JsonKey(name: "display_name")final String? displayName,
    @JsonKey(name: "description")final String? description,
    @JsonKey(name: "is_active")final bool? isActive,
    @JsonKey(name: "business_address")final int? busAddress,
    @JsonKey(name: "user_id")final String? userId,
    @JsonKey(name: "is_offline")final bool? isOffline,
    @JsonKey(name: "legal_unit_code")final String? legalUnitCode,
  })=_BusinessUnitData;
  factory BusinessUnitData.fromJson(Map<String, dynamic> json) =>
      _$BusinessUnitDataFromJson(json);
}

@freezed
class Contact with _$Contact{
  const factory Contact({
    @JsonKey(name: "primary")final String? primary,
  })=_Contact;
  factory Contact.fromJson(Map<String, dynamic> json) =>
      _$ContactFromJson(json);
}