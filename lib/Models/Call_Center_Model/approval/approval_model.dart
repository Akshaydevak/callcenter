import 'package:freezed_annotation/freezed_annotation.dart';

part 'approval_model.freezed.dart';
part 'approval_model.g.dart';

@freezed
class ApproveOrderModel with _$ApproveOrderModel{
  const factory ApproveOrderModel({
    final double? vat,
    final double? total,
    final bool? loading,
    @JsonKey(name: "order_id")final int? orderId,
    @JsonKey(name: "vatable_amount")final double? vatableAmount,
    @JsonKey(name: "unit_cost")final double? unitCost,
    @JsonKey(name: "selling_price")final double? sellingPrice,
    @JsonKey(name: "reason_of_approval_reject")final String? reasonApprovalObject,

    @JsonKey(name: "lines")final List<ApproveLinesModel>? lines,


  })=_ApproveOrderModel;
  factory ApproveOrderModel.fromJson(Map<String,dynamic>json)=>
      _$ApproveOrderModelFromJson(json);
}


@freezed
class ApproveLinesModel with _$ApproveLinesModel{
  const factory ApproveLinesModel({
    final double? vat,
    final double? amount,
    final int? quantity,

    @JsonKey(name: "line_id")final int? lineId,
    @JsonKey(name: "old_quantity")final int? oldQuantity,
    @JsonKey(name: "vatable_amount")final double? vatableAmount,
    @JsonKey(name: "unit_cost")final double? unitCost,
    @JsonKey(name: "variant_name")final String? variantName,
    @JsonKey(name: "variant_id")final int? variantId,
    @JsonKey(name: "selling_price")final double? sellingPrice,
    @JsonKey(name: "total_amount")final double? totalAmount,
    @JsonKey(name: "reason_of_approval_reject")final String? reasonApprovalObject,
    @JsonKey(name: "is_approved",defaultValue: false)final bool? isApproved,
    @JsonKey(name: "approval_status",)final String? approvalStatus,
    @JsonKey(name: "is_active",defaultValue: false)final bool? isActive,


  })=_ApproveLinesModel;
  factory ApproveLinesModel.fromJson(Map<String,dynamic>json)=>
      _$ApproveLinesModelFromJson(json);
}
@freezed
class ApproveListModel with _$ApproveListModel{
  const factory ApproveListModel({
    final int? id,
    final double? total,
    final String? notes,
    final String? remarks,

    @JsonKey(name: "order_code")final String ? orderCode,
    @JsonKey(name: "ordered_date")final String ? orderDate,
    @JsonKey(name: "customer_code")final String ? cutsomerCode,
    @JsonKey(name: "customer_name")final String ? customerName,
    @JsonKey(name: "customer_trn_number")final String ? customerTrnNumber,
    @JsonKey(name: "order_satus")final String ? orderStatus,
    @JsonKey(name: "payment_status")final String ? paymentStatus,
    @JsonKey(name: "delivery_address")final String ? deliveryAddress,
    @JsonKey(name: "invoice_status",)final String ? inVoiceStatus,


    @JsonKey(name: "is_active",defaultValue: false)final bool? isActive,


  })=_ApproveListModel;
  factory ApproveListModel.fromJson(Map<String,dynamic>json)=>
      _$ApproveListModelFromJson(json);
}