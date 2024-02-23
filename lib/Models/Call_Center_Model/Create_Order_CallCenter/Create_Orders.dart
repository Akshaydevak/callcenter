import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:salesapp/Models/Call_Center_Model/Read_Customer_List/Customer_List.dart';
import 'package:salesapp/Models/Call_Center_Model/Read_Varriant/Read_Varriant.dart';

part 'Create_Orders.freezed.dart';
part 'Create_Orders.g.dart';
@freezed
class CreateOrder with _$CreateOrder{
  const factory CreateOrder({
    @JsonKey(name: "channel_code")final String? channelCode,
    @JsonKey(name: "channel_id")final String? channelId,
    @JsonKey(name: "trn_number")final String? trnNumber,
    @JsonKey(name: "channel_type_code")final String? channelTypeCode,
    @JsonKey(name: "channel_type_id")final String? channelTypeId,
    @JsonKey(name: "channel_stock_type")final String? channelStockType,
    @JsonKey(name: "channel_name")final String? channelName,
    @JsonKey(name: "order_type")final String? orderType,
    @JsonKey(name: "customer_code")final String? customerCode,
    @JsonKey(name: "customer_name")final String? customerName,
    @JsonKey(name: "created_by")final String? createdBy,
    @JsonKey(name: "customer_mail_id")final String? customerMailId,
    @JsonKey(name: "inventory_id")final String? inventoryId,
    @JsonKey(name: "customer_trn_number")final String? customerTrnNumber,
    @JsonKey(name: "customer_group_code")final String? customerGroupCode,
    @JsonKey(name: "shipping_address_id")final int? shippingAddressId,
    @JsonKey(name: "billing_address_id")final int? billingAddressId,
    @JsonKey(name: "discount")final double? discount,
    @JsonKey(name: "vatable_amount")final double? vatableAmount,
    @JsonKey(name: "vat")final double? vat,
    @JsonKey(name: "total")final double? total,
    @JsonKey(name: "unit_cost")final double? unitCost,
    @JsonKey(name: "is_holded")final bool? isHolded,
    @JsonKey(name: "need_approval")final bool? needApproval,
    @JsonKey(name: "selling_price")final double? sellingPrice,
    @JsonKey(name: "notes")final String? notes,
    @JsonKey(name: "remarks")final String? remarks,
    @JsonKey(name: "customer_phone_number")final String? customerPhoneNumber,
    @JsonKey(name: "delivery_address")final String? deliveryAddress,
    @JsonKey(name: "delivery_address_full_data")final DeliveryAddressModel? deliveryAddressFullData,
    @JsonKey(name: "delivery_charge")final double? deliveryCharge,
    @JsonKey(name: "order_lines")final List<OrderLineCallcenter>? orderLinesCallcenter,

  })=_CreateOrder;
  factory CreateOrder.fromJson(Map<String,dynamic>json)=>
      _$CreateOrderFromJson(json);
}

@freezed
class OrderLineCallcenter with _$OrderLineCallcenter{
  const factory OrderLineCallcenter({

    @JsonKey(name: "variant_id")final int? variantId,
    @JsonKey(name: "variant_code")final String? variantCode,
    @JsonKey(name: "variant_name")final String? variantName,
    @JsonKey(name: "is_active",defaultValue: false)final bool? isActive,
    @JsonKey(name: "barcode")final String? barcode,
    @JsonKey(name: "uom_id")final int? uomId,
    @JsonKey(name: "uom_name")final String? uomName,
    @JsonKey(name: "image1")final String? image1,

    @JsonKey(name: "selling_price")final double? sellingPrice,
    @JsonKey(name: "quantity")final int? quantity,
    @JsonKey(name: "unit_cost")final double? unitCost,
    @JsonKey(name: "discount")final double? discount,
    @JsonKey(name: "total_amount")final double? totalAmount,
    @JsonKey(name: "vat")final double? vat,
    @JsonKey(name: "actual_cost")final double? actualCost,
    @JsonKey(name: "discount_based_on")final String? discountBasedOn,
    @JsonKey(name: "vatable_amount")final double? vatableAmount,
    @JsonKey(name: "warranty_price")final double? warrantyPrice,
    @JsonKey(name: "warranty_id")final int? warrantyId,
    @JsonKey(name: "shipping_address_id")final int? shippingAddressId,
    @JsonKey(name: "return_type")final String? returnType,
    @JsonKey(name: "hub_code")final String? hubCode,
    @JsonKey(name: "hub_name")final String? hubName,
    @JsonKey(name: "return_time")final int? returnTime,

    @JsonKey(name: "inventory_id")final String? inventoryId,
    @JsonKey(name: "discount_data")final DiscountData? discountData,
    @JsonKey(name: "delivery_slot_id")final int? deliverySlotId,
    @JsonKey(name: "need_approval",defaultValue: false)final bool? needApproval,

    @JsonKey(name: "delivery_charge")final double? deliveryCharge,


  })=_OrderLineCallcenter;
  factory OrderLineCallcenter.fromJson(Map<String,dynamic>json)=>
      _$OrderLineCallcenterFromJson(json);
}



@freezed
class CreateCartModel with _$CreateCartModel{
  const factory CreateCartModel({
    @JsonKey(name: "customer_code")final String? customerCode,
    @JsonKey(name: "customer_name")final String? customerName,
    final AddressCart? address,

    @JsonKey(name: "cart_lines")final List<CartLinesModel>? cartLinesModel,
  })=_CreateCartModel;
  factory CreateCartModel.fromJson(Map<String,dynamic>json)=>
      _$CreateCartModelFromJson(json);
}

@freezed
class CartLinesModel with _$CartLinesModel{
  const factory CartLinesModel({
    final double? price,
    final double? vat,
    final int? quantity,
    final String? image,
    final String? barcode,
    @JsonKey(name: "variant_id")final int? variantId,
    @JsonKey(name: "variant_code")final String? variantCode,
    @JsonKey(name: "inventory_id")final String? inventoryId,
    @JsonKey(name: "offer_details")final DiscountData? offerDetails,
    @JsonKey(name: "variant_name")final String? variantName,
    @JsonKey(name: "total_price")final double? totalPrice,
    @JsonKey(name: "need_approval",defaultValue: false)final bool? needApproval,
    @JsonKey(name: "delivery_slot_id")final int? deliverySlotId,
    @JsonKey(name: "is_active",defaultValue: false)final bool? isActive,

    // @JsonKey(name: "cart_lines")final List<CartLinesModel>? cartLinesModel,
  })=_CartLinesModel;
  factory CartLinesModel.fromJson(Map<String,dynamic>json)=>
      _$CartLinesModelFromJson(json);
}
@freezed
class CartListModel with _$CartListModel{
  const factory CartListModel({
    final double? price,
    final double? vat,
    final int? quantity,
    final int? id,
    final String? image,
    final String? barcode,
    @JsonKey(name: "variant_id")final int? variantId,
    @JsonKey(name: "cart_code")final String? cartCode,
    @JsonKey(name: "variant_code")final String? variantCode,
    @JsonKey(name: "inventory_id")final String? inventoryId,
    @JsonKey(name: "offer_details")final DiscountData? offerDetails,
    @JsonKey(name: "variant_name")final String? variantName,
    @JsonKey(name: "delivery_slot_id")final int? deliverySlotID,
    @JsonKey(name: "is_active",defaultValue: false)final bool? isActive,

    // @JsonKey(name: "cart_lines")final List<CartLinesModel>? cartLinesModel,
  })=_CartListModel;
  factory CartListModel.fromJson(Map<String,dynamic>json)=>
      _$CartListModelFromJson(json);
}

@freezed
class OrderTypes with _$OrderTypes{
  const factory OrderTypes({
    @JsonKey(name: "order_types")final List<String>? orderType,

  })=_OrderTypes;
  factory OrderTypes.fromJson(Map<String,dynamic>json)=>
      _$OrderTypesFromJson(json);
}
@freezed
class AddressCart with _$AddressCart{
  const factory AddressCart({
  final String? state,
  final String? country,
  final String? area,
  final String? location,
    @JsonKey(name: "building_number")final String? buildingNumber,

  })=_AddressCart;
  factory AddressCart.fromJson(Map<String,dynamic>json)=>
      _$AddressCartFromJson(json);
}