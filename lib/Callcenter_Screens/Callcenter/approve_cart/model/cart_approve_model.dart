import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:salesapp/Models/Call_Center_Model/Read_Varriant/Read_Varriant.dart';
import 'package:salesapp/Models/Call_Center_Model/dashBoard/order_status_model.dart';


part 'cart_approve_model.g.dart';
part 'cart_approve_model.freezed.dart';

@freezed
class ApproveCartModel with _$ApproveCartModel{
  const factory ApproveCartModel({

    @JsonKey(name: "cart_head_id")final int? cartHeadId,
    @JsonKey(name: "approved_by")final String? approvedBy,


    @JsonKey(name: "cart_lines")final List<ApproveCartLinesModel>? lines,


  })=_ApproveCartModel;
  factory ApproveCartModel.fromJson(Map<String,dynamic>json)=>
      _$ApproveCartModelFromJson(json);
}
@freezed
class ApproveCartLinesModel with _$ApproveCartLinesModel{
  const factory ApproveCartLinesModel({
    final double? price,
    final int? quantity,

    @JsonKey(name: "cart_id")final int? cartId,
    @JsonKey(name: "approval_status")final String? approvalStatus,
    @JsonKey(name: "reason_of_approval_reject")final String? reasonOfApprovalReject,
    @JsonKey(name: "approved_by")final String? approvedby,
    @JsonKey(name: "need_approval",defaultValue: false)final bool? needApproval,
    @JsonKey(name: "is_approved",defaultValue: false)final bool? isApproved,
    @JsonKey(name: "is_active",defaultValue: false)final bool? isActive,





  })=_ApproveCartLinesModel;
  factory ApproveCartLinesModel.fromJson(Map<String,dynamic>json)=>
      _$ApproveCartLinesModelFromJson(json);
}

@freezed
class ApproveCartReadModel with _$ApproveCartReadModel{
  const factory ApproveCartReadModel({
    final int? id,
    final Address? address,

    @JsonKey(name: "customer_code")final String? customerCode,
    @JsonKey(name: "customer_name")final String? customerName,
    @JsonKey(name: "total_cart_value")final double? totalCartValue,
    @JsonKey(name: "cart_lines")final List<ApproveCartDisplayModel>? lines,





  })=_ApproveCartReadModel;
  factory ApproveCartReadModel.fromJson(Map<String,dynamic>json)=>
      _$ApproveCartReadModelFromJson(json);
}
@freezed
class ApproveCartDisplayModel with _$ApproveCartDisplayModel{
  const factory ApproveCartDisplayModel({

    final int? id,
    final int? quantity,
    final double? price,
    final double? vat,
    final String? image,

    @JsonKey(name: "variant_id")final int? variantId,
    @JsonKey(name: "cart_code")final String? cartCode,
    @JsonKey(name: "variant_code")final String? variantCode,
    @JsonKey(name: "inventory_id")final String? inventoryId,
    @JsonKey(name: "variant_name")final String? variantName,
    @JsonKey(name: "approval_status")final String? approvalStatus,
    @JsonKey(name: "offer_details")final DiscountData? offerDetails,
    @JsonKey(name: "is_active",defaultValue: false)final bool? isActive,
    @JsonKey(name: "total_price")final double? totalPrize,
    @JsonKey(name: "need_approval",defaultValue: false)final bool? needApproval,
    @JsonKey(name: "is_approved",defaultValue: false)final bool? isApproved,
    @JsonKey(name: "is_Check",defaultValue: false)final bool? isCheck,
    @JsonKey(name: "reason_of_approval_reject")final String? reasonApprovalObject,






  })=_ApproveCartDisplayModel;
  factory ApproveCartDisplayModel.fromJson(Map<String,dynamic>json)=>
      _$ApproveCartDisplayModelFromJson(json);
}



@freezed
class ApproveCartListModel with _$ApproveCartListModel{
  const factory ApproveCartListModel({
    final int? id,
    final double? total,
    final String? notes,
    final String? remarks,

    @JsonKey(name: "order_code")final String ? orderCode,
    @JsonKey(name: "total_cart_value")final double ? totalCartValue,
    @JsonKey(name: "ordered_date")final String ? orderDate,
    @JsonKey(name: "customer_code")final String ? cutsomerCode,
    @JsonKey(name: "customer_name")final String ? customerName,
    @JsonKey(name: "customer_trn_number")final String ? customerTrnNumber,
    @JsonKey(name: "order_satus")final String ? orderStatus,
    @JsonKey(name: "payment_status")final String ? paymentStatus,
    @JsonKey(name: "delivery_address")final String ? deliveryAddress,
    @JsonKey(name: "invoice_status",)final String ? inVoiceStatus,


    @JsonKey(name: "is_active",defaultValue: false)final bool? isActive,


  })=_ApproveCartListModel;
  factory ApproveCartListModel.fromJson(Map<String,dynamic>json)=>
      _$ApproveCartListModelFromJson(json);
}