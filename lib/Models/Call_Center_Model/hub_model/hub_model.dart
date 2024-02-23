import 'package:freezed_annotation/freezed_annotation.dart';
part 'hub_model.freezed.dart';
part 'hub_model.g.dart';
@freezed
class HubResponseModel with _$HubResponseModel{
  const factory HubResponseModel({
    final int? id,
    @JsonKey(name: "variant_code")final String? variantCode,
    @JsonKey(name: "inventory_id")final String? inventoryId,
    @JsonKey(name: "hub_stock_name")final String? hubStockName,
    @JsonKey(name: "hub_code")final String? hubCode,
    @JsonKey(name: "hub_stock_code")final String? hubStockCode,
    @JsonKey(name: "stock_qty")final int? stockQty,





  })=_HubResponseModel;
  factory HubResponseModel.fromJson(Map<String,dynamic>json)=>
      _$HubResponseModelFromJson(json);
}