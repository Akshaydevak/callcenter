import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:salesapp/Models/Call_Center_Model/Read_Varriant/Read_Varriant.dart';

part 'recommondation.freezed.dart';
part 'recommondation.g.dart';
@freezed
class RecommendationCallCenterModel with _$RecommendationCallCenterModel{
  const factory RecommendationCallCenterModel({
    final int? id,
    final String? code,
    final String? barcode,
    final String? name,
    final String? image1,
    final double? vat,
    @JsonKey(name: "ordered_date")final String? orderdDate,


    @JsonKey(name: "sales_uom")final String? salesUom,
    @JsonKey(name: "sales_uom_name")final String? salesUomName,
    @JsonKey(name: "unit_cost")final double? unitCost,
    @JsonKey(name: "min_gp")final double? minGp,
    @JsonKey(name: "max_gp")final double? maxGp,
    @JsonKey(name: "targeted_gp")final double? targetedGp,
    @JsonKey(name: "price_data")final double? priceData,
    @JsonKey(name: "actual_cost")final double? actualCost,
    @JsonKey(name: "stock_count")final int? stockCount,
    @JsonKey(name: "min_sales_order_limit")final int? minSalesOrderLimit,
    @JsonKey(name: "max_sales_order_limit")final int? maxSalesOrderLimit,


    @JsonKey(name: "discount_data")final DiscountDataModel? discountData,
    @JsonKey(name: "buy_more_details")final BuyMoreDetailsModel? buyMoreDetailsModel,


  })=_RecommendationCallCenterModel;
  factory RecommendationCallCenterModel.fromJson(Map<String,dynamic>json)=>
      _$RecommendationCallCenterModelFromJson(json);
}


@freezed
class DiscountDataModel with _$DiscountDataModel{
  const factory DiscountDataModel({

    @JsonKey(name: "is_discount_have")final bool? isDiscountData,
    @JsonKey(name: "discount_type")final String? discountType,
    @JsonKey(name: "discount_applied_price")final double? discountAppliedPrice,
    @JsonKey(name: "discount_percentage_price")final double? discountPercentagePrice,





  })=_DiscountDataModel;
  factory DiscountDataModel.fromJson(Map<String,dynamic>json)=>
      _$DiscountDataModelFromJson(json);
}

@freezed
class BuyMoreDetailsModel with _$BuyMoreDetailsModel{
  const factory BuyMoreDetailsModel({

    @JsonKey(name: "has_buy_more")final bool? hasBuyMore,


  })=_BuyMoreDetailsModel;
  factory BuyMoreDetailsModel.fromJson(Map<String,dynamic>json)=>
      _$BuyMoreDetailsModelFromJson(json);
}



@freezed
class offerCallCenterModel with _$offerCallCenterModel{
  const factory offerCallCenterModel({
    final int? id,
    final String? name,
    final String? image1,
    final String? code,

    @JsonKey(name: "discount_line_id")final int? discountLineId,
    @JsonKey(name: "offer_lines_id")final int? offerLineId,
    @JsonKey(name: "stock_count")final int? stockCount,
    @JsonKey(name: "min_order_limit")final int? minOrderLimit,
    @JsonKey(name: "max_order_limit")final int? maxOrderLimit,
    @JsonKey(name: "discount_percentage_or_price")final double? discountPercentageOrPrice,
    @JsonKey(name: "selling_price")final double? sellingPrice,
    @JsonKey(name: "base_uom_conversion_factor")final double? baseUomConversionFactor,
    @JsonKey(name: "sales_uom_conversion_factor")final double? salesUomConversionFactor,


    @JsonKey(name: "offer_lines_code")final String? offerLineCode,
    @JsonKey(name: "based_on")final String? basedOn,
    @JsonKey(name: "data_type")final String? dataTYpe,
    @JsonKey(name: "inventory_id")final String? inventoryId,
    @JsonKey(name: "brand_name")final String? brandName,
    @JsonKey(name: "display_name")final String? displayName,
    @JsonKey(name: "produced_country")final String? producedCountry,
    @JsonKey(name: "channel_code")final String? channelCode,
    @JsonKey(name: "base_uom_name")final String? baseUomNamed,
    @JsonKey(name: "sales_uom_name")final String? salesUomName,

    @JsonKey(name: "is_stock",defaultValue: false)final bool? isStock,



    @JsonKey(name: "discount_data")final DiscountDataModel? discountData,
    @JsonKey(name: "buy_more_details")final BuyMoreDetailsModel? buyMoreDetailsModel,


  })=_offerCallCenterModel;
  factory offerCallCenterModel.fromJson(Map<String,dynamic>json)=>
      _$offerCallCenterModelFromJson(json);
}



@freezed
class warrentyModel with _$warrentyModel{
  const factory warrentyModel({
    final int? id,
    final int? duration,
    final String? description,


    @JsonKey(name: "warranty_type_title")final String? warrentyTypeTitle,
    @JsonKey(name: "warranty_type_id")final int? warrentyTypeId,
    @JsonKey(name: "warranty_conditions")final List<String>? warrentyConditions,
    @JsonKey(name: "warranty_code")final String? warrentyCode,
    @JsonKey(name: "is_extended_warranty",defaultValue: false)final bool? isExtendedWarranty,
    @JsonKey(name: "is_additional_warranty",defaultValue: false)final bool? isAdditionalWarranty,
    @JsonKey(name: "is_active",defaultValue: false)final bool? isActive,





    @JsonKey(name: "additional_warranty")final List<AdditionalWarranty>? additionalWarranty,
    @JsonKey(name: "extended_warranty")final ExtendedWarranty? extendedWarranty,


  })=_warrentyModel;
  factory warrentyModel.fromJson(Map<String,dynamic>json)=>
      _$warrentyModelFromJson(json);
}


@freezed
class AdditionalWarranty with _$AdditionalWarranty{
  const factory AdditionalWarranty({
    final int? id,
    final int? duration,



    @JsonKey(name: "additional_warranty_code")final String? additionalWarrantyCode,
    @JsonKey(name: "warranty_section")final String? warrantySection,
    @JsonKey(name: "warranty_type_id")final int? warrentyTypeId,
    @JsonKey(name: "description")final String? description,
    @JsonKey(name: "maximum_occurence")final int? maximumOccurance,
    @JsonKey(name: "is_active")final bool? isActive,
    @JsonKey(name: "is_enabled")final bool? isEnabled ,
    @JsonKey(name: "addtional_warranty_conditions")final List<String>? additionalWarrantyConditions,



  })=_AdditionalWarranty;
  factory AdditionalWarranty.fromJson(Map<String,dynamic>json)=>
      _$AdditionalWarrantyFromJson(json);
}

@freezed
class ExtendedWarranty with _$ExtendedWarranty{
  const factory ExtendedWarranty({
    final int? id,
    final int? duration,
    final double? price,



    @JsonKey(name: "extended_warranty_code")final String? ExtendedWarrantyCode,
    @JsonKey(name: "description")final String? description,
    @JsonKey(name: "maximum_occurence")final int? maximumOccurance,
    @JsonKey(name: "is_active")final bool? isActive,
    @JsonKey(name: "is_enabled")final bool? isEnabled ,






    @JsonKey(name: "additional_warranty")final List<AdditionalWarranty>? additionalWarranty,
    @JsonKey(name: "buy_more_details")final BuyMoreDetailsModel? buyMoreDetailsModel,


  })=_ExtendedWarranty;
  factory ExtendedWarranty.fromJson(Map<String,dynamic>json)=>
      _$ExtendedWarrantyFromJson(json);
}

@freezed
class NegotiationModel with _$NegotiationModel{
  const factory NegotiationModel({
    final int? id,




    @JsonKey(name: "customer_group_code")final String? customerGroupCode,
    @JsonKey(name: "segment_code")final String? segmentCode,
    @JsonKey(name: "total_cart_value")final double? totalCartValue,


    @JsonKey(name: "cart_line")final List<CartLineModel>? cartlineModel,

  })=_NegotiationModel;
  factory NegotiationModel.fromJson(Map<String,dynamic>json)=>
      _$NegotiationModelFromJson(json);
}
@freezed
class NegotiationCheckModel with _$NegotiationCheckModel{
  const factory NegotiationCheckModel({
    final int? id,
    @JsonKey(name: "negtiation_type")final String? negotiationType,
    @JsonKey(name: "negotiation_code")final String? negotiatonCode,
    @JsonKey(name: "negotiation_limit")final int? negotiationLimit,
    @JsonKey(name: "total_cart_value")final double? totalCartValue,
    @JsonKey(name: "cart_line")final List<CartLineModel>? cartlineModel,



  })=_NegotiationCheckModel;
  factory NegotiationCheckModel.fromJson(Map<String,dynamic>json)=>
      _$NegotiationCheckModelFromJson(json);
}

@freezed
class CartLineModel with _$CartLineModel{
  const factory CartLineModel({
    final int? quantity,



    @JsonKey(name: "total_selling_price")final double? totalSellingPrice,
    @JsonKey(name: "actual_cost")final double? actualCost,
    @JsonKey(name: "variant_code")final String? varaintCode,












  })=_CartLineModel;
  factory CartLineModel.fromJson(Map<String,dynamic>json)=>
      _$CartLineModelFromJson(json);
}


@freezed
class NegotiationOutPutModel with _$NegotiationOutPutModel{
  const factory NegotiationOutPutModel({
    final int? id,
    final String? name,
    final String? image,
    final String? description,


    @JsonKey(name: "negotiation_code")final String? negotiationCode,
    @JsonKey(name: "negotiation_value")final double? negotiationValue,
    @JsonKey(name: "based_on")final String? basedOn,
    @JsonKey(name: "negtiation_type")final String? negotiationType,
    @JsonKey(name: "negotiation_applied_value")final double? negotiationAppliedValue,
    @JsonKey(name: "negotiation_limit")final int? negotiationLinit,
    @JsonKey(name: "is_negotiation_get")final bool? isNegotationGet,








    @JsonKey(name: "cart_line")final List<CartLineModel>? cartlineModel,



  })=_NegotiationOutPutModel;
  factory NegotiationOutPutModel.fromJson(Map<String,dynamic>json)=>
      _$NegotiationOutPutModelFromJson(json);
}



@freezed
class NegotiationListModel with _$NegotiationListModel{
  const factory NegotiationListModel({
    final int? id,
    final String? name,
    final String? code,
    final String? barcode,
    final String? image1,

    final double? vat,
    final List<String>? segmentation,



    @JsonKey(name: "negotiation_line_code")final String? negotiationLineCode,
    @JsonKey(name: "negotiation_id")final int? negotiationId,
    @JsonKey(name: "negotiation_line_id")final int? negotiationLineId,
    @JsonKey(name: "stock_count")final int? stockCount,
    @JsonKey(name: "min_sales_order_limit")final int? minSalesOrderlimit,
    @JsonKey(name: "max_sales_order_limit")final int? maxSalesOrderlimit,
    @JsonKey(name: "have_negotiation")final bool? haveNegotiation,
    @JsonKey(name: "price_data")final double? priceData,
    @JsonKey(name: "unit_cost")final double? unitCost,
    @JsonKey(name: "actual_cost")final double? actualCost,
    @JsonKey(name: "sales_uom_name")final String? salesUomName,
    @JsonKey(name: "sales_uom")final String? salesUom,
    @JsonKey(name: "inventory_id")final String? inventoryId,
    @JsonKey(name: "discount_data")final DiscountDataModel? discountDataModel,
    @JsonKey(name: "return_type")final String? returnType,
    @JsonKey(name: "return_time")final double? returnTime,
    @JsonKey(name: "is_added",defaultValue: false)final bool? isAdded,
    @JsonKey(name: "total_price",)final double? totalPrice,
    @JsonKey(name: "vatable_amount",)final double? vatableAmount,
    @JsonKey(name: "hub_code")final String? hubCode,
    @JsonKey(name: "hub_name")final String? hubName,













  })=_NegotiationListModel;
  factory NegotiationListModel.fromJson(Map<String,dynamic>json)=>
      _$NegotiationListModelFromJson(json);
}
@freezed
class CustomerGroupModel with _$CustomerGroupModel{
  const factory CustomerGroupModel({
    // final int? id,
    final String? name,
    final String? code,






  }) = _CustomerGroupModel;
  factory CustomerGroupModel.fromJson(Map<String, dynamic> json) =>
      _$CustomerGroupModelFromJson(json);




}




@freezed
class WishListModel with _$WishListModel{
  const factory WishListModel({
    final int? id,
    final String? created,
    @JsonKey(name: "variant_id")final int? variantId,
    @JsonKey(name: "variant_code")final String? variantCode,
    @JsonKey(name: "available_qty")final int? availableQuantity,
    @JsonKey(name: "virtual_stock")final int? virtualStock,
    @JsonKey(name: "customer_code")final String? customerCode,
    @JsonKey(name: "inventory_code")final String? inventoryCode,
    @JsonKey(name: "selling_price")final double? sellingPrice,
    @JsonKey(name: "website_stock_status")final String? websiteStockStatus,




    @JsonKey(name: "variant_data")final VariantDataModel? variantDataModel,


  })=_WishListModel;
  factory WishListModel.fromJson(Map<String,dynamic>json)=>
      _$WishListModelFromJson(json);
}

@freezed
class VariantDataModel with _$VariantDataModel{
  const factory VariantDataModel({
    final int? id,
    final String? image,
    final String? barcode,

    @JsonKey(name: "variant_name")final String? variantame,
    @JsonKey(name: "inventory_name")final String? inventoryName,
    @JsonKey(name: "min_sales_order")final int? minSalesOrder,
    @JsonKey(name: "actual_cost")final double? actualCost,
    @JsonKey(name: "max_sales_order")final int? maxSaleOrder,
    @JsonKey(name: "group_code")final String? groupCode,
    @JsonKey(name: "group_name")final String? groupName,
    @JsonKey(name: "category_code")final String? categoryCode,
    @JsonKey(name: "division_name")final String? divisiionName,
    @JsonKey(name: "division_code")final String? divisiionCode,
    @JsonKey(name: "sales_uom")final String? salesUom,




  })=_VariantDataModel;
  factory VariantDataModel.fromJson(Map<String,dynamic>json)=>
      _$VariantDataModelFromJson(json);
}

