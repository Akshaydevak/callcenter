// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_approve_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApproveCartModel _$$_ApproveCartModelFromJson(Map<String, dynamic> json) =>
    _$_ApproveCartModel(
      cartHeadId: json['cart_head_id'] as int?,
      approvedBy: json['approved_by'] as String?,
      lines: (json['cart_lines'] as List<dynamic>?)
          ?.map(
              (e) => ApproveCartLinesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ApproveCartModelToJson(_$_ApproveCartModel instance) =>
    <String, dynamic>{
      'cart_head_id': instance.cartHeadId,
      'approved_by': instance.approvedBy,
      'cart_lines': instance.lines,
    };

_$_ApproveCartLinesModel _$$_ApproveCartLinesModelFromJson(
        Map<String, dynamic> json) =>
    _$_ApproveCartLinesModel(
      price: (json['price'] as num?)?.toDouble(),
      quantity: json['quantity'] as int?,
      cartId: json['cart_id'] as int?,
      approvalStatus: json['approval_status'] as String?,
      reasonOfApprovalReject: json['reason_of_approval_reject'] as String?,
      approvedby: json['approved_by'] as String?,
      needApproval: json['need_approval'] as bool? ?? false,
      isApproved: json['is_approved'] as bool? ?? false,
      isActive: json['is_active'] as bool? ?? false,
    );

Map<String, dynamic> _$$_ApproveCartLinesModelToJson(
        _$_ApproveCartLinesModel instance) =>
    <String, dynamic>{
      'price': instance.price,
      'quantity': instance.quantity,
      'cart_id': instance.cartId,
      'approval_status': instance.approvalStatus,
      'reason_of_approval_reject': instance.reasonOfApprovalReject,
      'approved_by': instance.approvedby,
      'need_approval': instance.needApproval,
      'is_approved': instance.isApproved,
      'is_active': instance.isActive,
    };

_$_ApproveCartReadModel _$$_ApproveCartReadModelFromJson(
        Map<String, dynamic> json) =>
    _$_ApproveCartReadModel(
      id: json['id'] as int?,
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      customerCode: json['customer_code'] as String?,
      customerName: json['customer_name'] as String?,
      totalCartValue: (json['total_cart_value'] as num?)?.toDouble(),
      lines: (json['cart_lines'] as List<dynamic>?)
          ?.map((e) =>
              ApproveCartDisplayModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ApproveCartReadModelToJson(
        _$_ApproveCartReadModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'address': instance.address,
      'customer_code': instance.customerCode,
      'customer_name': instance.customerName,
      'total_cart_value': instance.totalCartValue,
      'cart_lines': instance.lines,
    };

_$_ApproveCartDisplayModel _$$_ApproveCartDisplayModelFromJson(
        Map<String, dynamic> json) =>
    _$_ApproveCartDisplayModel(
      id: json['id'] as int?,
      quantity: json['quantity'] as int?,
      price: (json['price'] as num?)?.toDouble(),
      vat: (json['vat'] as num?)?.toDouble(),
      image: json['image'] as String?,
      variantId: json['variant_id'] as int?,
      cartCode: json['cart_code'] as String?,
      variantCode: json['variant_code'] as String?,
      inventoryId: json['inventory_id'] as String?,
      variantName: json['variant_name'] as String?,
      approvalStatus: json['approval_status'] as String?,
      offerDetails: json['offer_details'] == null
          ? null
          : DiscountData.fromJson(
              json['offer_details'] as Map<String, dynamic>),
      isActive: json['is_active'] as bool? ?? false,
      totalPrize: (json['total_price'] as num?)?.toDouble(),
      needApproval: json['need_approval'] as bool? ?? false,
      isApproved: json['is_approved'] as bool? ?? false,
      isCheck: json['is_Check'] as bool? ?? false,
      reasonApprovalObject: json['reason_of_approval_reject'] as String?,
    );

Map<String, dynamic> _$$_ApproveCartDisplayModelToJson(
        _$_ApproveCartDisplayModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'quantity': instance.quantity,
      'price': instance.price,
      'vat': instance.vat,
      'image': instance.image,
      'variant_id': instance.variantId,
      'cart_code': instance.cartCode,
      'variant_code': instance.variantCode,
      'inventory_id': instance.inventoryId,
      'variant_name': instance.variantName,
      'approval_status': instance.approvalStatus,
      'offer_details': instance.offerDetails,
      'is_active': instance.isActive,
      'total_price': instance.totalPrize,
      'need_approval': instance.needApproval,
      'is_approved': instance.isApproved,
      'is_Check': instance.isCheck,
      'reason_of_approval_reject': instance.reasonApprovalObject,
    };

_$_ApproveCartListModel _$$_ApproveCartListModelFromJson(
        Map<String, dynamic> json) =>
    _$_ApproveCartListModel(
      id: json['id'] as int?,
      total: (json['total'] as num?)?.toDouble(),
      notes: json['notes'] as String?,
      remarks: json['remarks'] as String?,
      orderCode: json['order_code'] as String?,
      totalCartValue: (json['total_cart_value'] as num?)?.toDouble(),
      orderDate: json['ordered_date'] as String?,
      cutsomerCode: json['customer_code'] as String?,
      customerName: json['customer_name'] as String?,
      customerTrnNumber: json['customer_trn_number'] as String?,
      orderStatus: json['order_satus'] as String?,
      paymentStatus: json['payment_status'] as String?,
      deliveryAddress: json['delivery_address'] as String?,
      inVoiceStatus: json['invoice_status'] as String?,
      isActive: json['is_active'] as bool? ?? false,
    );

Map<String, dynamic> _$$_ApproveCartListModelToJson(
        _$_ApproveCartListModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'total': instance.total,
      'notes': instance.notes,
      'remarks': instance.remarks,
      'order_code': instance.orderCode,
      'total_cart_value': instance.totalCartValue,
      'ordered_date': instance.orderDate,
      'customer_code': instance.cutsomerCode,
      'customer_name': instance.customerName,
      'customer_trn_number': instance.customerTrnNumber,
      'order_satus': instance.orderStatus,
      'payment_status': instance.paymentStatus,
      'delivery_address': instance.deliveryAddress,
      'invoice_status': instance.inVoiceStatus,
      'is_active': instance.isActive,
    };