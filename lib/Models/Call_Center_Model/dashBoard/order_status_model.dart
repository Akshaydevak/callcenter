import 'package:freezed_annotation/freezed_annotation.dart';
part 'order_status_model.freezed.dart';
part 'order_status_model.g.dart';
@freezed
class OrderStatus with _$OrderStatus{
  const factory OrderStatus({
    final int? id,
    final double? total,
    @JsonKey(name: "ordered_date")final String? orderedDate,
    @JsonKey(name: "customer_name")final String? customerName,
    @JsonKey(name: "order_satus")final String? orderStats,


  })=_OrderStatus;
  factory OrderStatus.fromJson(Map<String,dynamic>json)=>
      _$OrderStatusFromJson(json);
}
@freezed
class NewOrderListModel with _$NewOrderListModel{
  const factory NewOrderListModel({
    final int? id,
    final double? total,
    final double? data,
    @JsonKey(name: "variant_name")final String? variantName,
    @JsonKey(name: "selling_price")final double? sellingPrice,
    @JsonKey(name: "unit_cost")final double? unitCost,
    @JsonKey(name: "total_amount")final double? totalAmount,
    @JsonKey(name: "today_sales")final double? todaysSale,
    @JsonKey(name: "image")final String? image,


  })=_NewOrderListModel;
  factory NewOrderListModel.fromJson(Map<String,dynamic>json)=>
      _$NewOrderListModelFromJson(json);
}

@freezed
class StateList with _$StateList {
  const factory StateList({

    final int? code,
    final String? name,













  }) = _StateList;
  factory StateList.fromJson(Map<String, dynamic> json) =>
      _$StateListFromJson(json);
}


@freezed
class InventoryListModel with _$InventoryListModel {
  const factory InventoryListModel({
    final String? name,
    final String? description,
    final Address? address,
    final int? id,

    final bool? status,
    final String? state,
    final String? email,
    final String? primary,

    final bool? isInventoryExist,
    @JsonKey(name: "is_active", defaultValue: false) final bool? isActive,
    @JsonKey(name: "is_offline", defaultValue: false) final bool? isOffline,
    @JsonKey(name: "country_name" ) final String? countryName,
    @JsonKey(name: "business_unit_code", ) final String? businessUnitCode,
    @JsonKey(name: "address_one" ) final String? addressOne,
    @JsonKey(name: "address_two" ) final String? addressTwo,
    @JsonKey(name: "land_mark" ) final String? landMark,
    @JsonKey(name: "company_logo" ) final String? companyLogo,
    @JsonKey(name: "store_logo" ) final String? storeLogo,
    @JsonKey(name: "user_id", ) final String? userId,
    @JsonKey(name: "city_or_town" ) final String? cityz,
    @JsonKey(name: "company_display_name", ) final String? companyDisplayName,
    @JsonKey(name: "business_addres", ) final int? businessAddress,
  }) = _InventoryListModel;
  factory InventoryListModel.fromJson(Map<String, dynamic> json) =>
      _$InventoryListModelFromJson(json);
}


@freezed
class Address with _$Address {
  const factory Address({
    final String? state,
    final String? location,
    final String? country,
    final String? area,
    final int? id,
    final String? email,
    final Contact? contact,


    @JsonKey(name: "address_one" ) final String? addressOne,
    @JsonKey(name: "address_two" ) final String? AddressTwo,
    @JsonKey(name: "city_or_town" ) final String? cityz,
    @JsonKey(name: "country_name" ) final String? countryName,

  }) = _Address;
  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
}

@freezed
class Contact with _$Contact {
  const factory Contact({
    final String? primary,


  }) = _Contact;
  factory Contact.fromJson(Map<String, dynamic> json) =>
      _$ContactFromJson(json);
}

