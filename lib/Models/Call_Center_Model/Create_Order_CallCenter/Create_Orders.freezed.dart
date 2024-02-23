// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'Create_Orders.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateOrder _$CreateOrderFromJson(Map<String, dynamic> json) {
  return _CreateOrder.fromJson(json);
}

/// @nodoc
mixin _$CreateOrder {
  @JsonKey(name: "channel_code")
  String? get channelCode => throw _privateConstructorUsedError;
  @JsonKey(name: "channel_id")
  String? get channelId => throw _privateConstructorUsedError;
  @JsonKey(name: "trn_number")
  String? get trnNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "channel_type_code")
  String? get channelTypeCode => throw _privateConstructorUsedError;
  @JsonKey(name: "channel_type_id")
  String? get channelTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: "channel_stock_type")
  String? get channelStockType => throw _privateConstructorUsedError;
  @JsonKey(name: "channel_name")
  String? get channelName => throw _privateConstructorUsedError;
  @JsonKey(name: "order_type")
  String? get orderType => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_code")
  String? get customerCode => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_name")
  String? get customerName => throw _privateConstructorUsedError;
  @JsonKey(name: "created_by")
  String? get createdBy => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_mail_id")
  String? get customerMailId => throw _privateConstructorUsedError;
  @JsonKey(name: "inventory_id")
  String? get inventoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_trn_number")
  String? get customerTrnNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_group_code")
  String? get customerGroupCode => throw _privateConstructorUsedError;
  @JsonKey(name: "shipping_address_id")
  int? get shippingAddressId => throw _privateConstructorUsedError;
  @JsonKey(name: "billing_address_id")
  int? get billingAddressId => throw _privateConstructorUsedError;
  @JsonKey(name: "discount")
  double? get discount => throw _privateConstructorUsedError;
  @JsonKey(name: "vatable_amount")
  double? get vatableAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "vat")
  double? get vat => throw _privateConstructorUsedError;
  @JsonKey(name: "total")
  double? get total => throw _privateConstructorUsedError;
  @JsonKey(name: "unit_cost")
  double? get unitCost => throw _privateConstructorUsedError;
  @JsonKey(name: "is_holded")
  bool? get isHolded => throw _privateConstructorUsedError;
  @JsonKey(name: "need_approval")
  bool? get needApproval => throw _privateConstructorUsedError;
  @JsonKey(name: "selling_price")
  double? get sellingPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "notes")
  String? get notes => throw _privateConstructorUsedError;
  @JsonKey(name: "remarks")
  String? get remarks => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_phone_number")
  String? get customerPhoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "delivery_address")
  String? get deliveryAddress => throw _privateConstructorUsedError;
  @JsonKey(name: "delivery_address_full_data")
  DeliveryAddressModel? get deliveryAddressFullData =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "delivery_charge")
  double? get deliveryCharge => throw _privateConstructorUsedError;
  @JsonKey(name: "order_lines")
  List<OrderLineCallcenter>? get orderLinesCallcenter =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateOrderCopyWith<CreateOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateOrderCopyWith<$Res> {
  factory $CreateOrderCopyWith(
          CreateOrder value, $Res Function(CreateOrder) then) =
      _$CreateOrderCopyWithImpl<$Res, CreateOrder>;
  @useResult
  $Res call(
      {@JsonKey(name: "channel_code") String? channelCode,
      @JsonKey(name: "channel_id") String? channelId,
      @JsonKey(name: "trn_number") String? trnNumber,
      @JsonKey(name: "channel_type_code") String? channelTypeCode,
      @JsonKey(name: "channel_type_id") String? channelTypeId,
      @JsonKey(name: "channel_stock_type") String? channelStockType,
      @JsonKey(name: "channel_name") String? channelName,
      @JsonKey(name: "order_type") String? orderType,
      @JsonKey(name: "customer_code") String? customerCode,
      @JsonKey(name: "customer_name") String? customerName,
      @JsonKey(name: "created_by") String? createdBy,
      @JsonKey(name: "customer_mail_id") String? customerMailId,
      @JsonKey(name: "inventory_id") String? inventoryId,
      @JsonKey(name: "customer_trn_number") String? customerTrnNumber,
      @JsonKey(name: "customer_group_code") String? customerGroupCode,
      @JsonKey(name: "shipping_address_id") int? shippingAddressId,
      @JsonKey(name: "billing_address_id") int? billingAddressId,
      @JsonKey(name: "discount") double? discount,
      @JsonKey(name: "vatable_amount") double? vatableAmount,
      @JsonKey(name: "vat") double? vat,
      @JsonKey(name: "total") double? total,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "is_holded") bool? isHolded,
      @JsonKey(name: "need_approval") bool? needApproval,
      @JsonKey(name: "selling_price") double? sellingPrice,
      @JsonKey(name: "notes") String? notes,
      @JsonKey(name: "remarks") String? remarks,
      @JsonKey(name: "customer_phone_number") String? customerPhoneNumber,
      @JsonKey(name: "delivery_address") String? deliveryAddress,
      @JsonKey(name: "delivery_address_full_data")
      DeliveryAddressModel? deliveryAddressFullData,
      @JsonKey(name: "delivery_charge") double? deliveryCharge,
      @JsonKey(name: "order_lines")
      List<OrderLineCallcenter>? orderLinesCallcenter});

  $DeliveryAddressModelCopyWith<$Res>? get deliveryAddressFullData;
}

/// @nodoc
class _$CreateOrderCopyWithImpl<$Res, $Val extends CreateOrder>
    implements $CreateOrderCopyWith<$Res> {
  _$CreateOrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channelCode = freezed,
    Object? channelId = freezed,
    Object? trnNumber = freezed,
    Object? channelTypeCode = freezed,
    Object? channelTypeId = freezed,
    Object? channelStockType = freezed,
    Object? channelName = freezed,
    Object? orderType = freezed,
    Object? customerCode = freezed,
    Object? customerName = freezed,
    Object? createdBy = freezed,
    Object? customerMailId = freezed,
    Object? inventoryId = freezed,
    Object? customerTrnNumber = freezed,
    Object? customerGroupCode = freezed,
    Object? shippingAddressId = freezed,
    Object? billingAddressId = freezed,
    Object? discount = freezed,
    Object? vatableAmount = freezed,
    Object? vat = freezed,
    Object? total = freezed,
    Object? unitCost = freezed,
    Object? isHolded = freezed,
    Object? needApproval = freezed,
    Object? sellingPrice = freezed,
    Object? notes = freezed,
    Object? remarks = freezed,
    Object? customerPhoneNumber = freezed,
    Object? deliveryAddress = freezed,
    Object? deliveryAddressFullData = freezed,
    Object? deliveryCharge = freezed,
    Object? orderLinesCallcenter = freezed,
  }) {
    return _then(_value.copyWith(
      channelCode: freezed == channelCode
          ? _value.channelCode
          : channelCode // ignore: cast_nullable_to_non_nullable
              as String?,
      channelId: freezed == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String?,
      trnNumber: freezed == trnNumber
          ? _value.trnNumber
          : trnNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      channelTypeCode: freezed == channelTypeCode
          ? _value.channelTypeCode
          : channelTypeCode // ignore: cast_nullable_to_non_nullable
              as String?,
      channelTypeId: freezed == channelTypeId
          ? _value.channelTypeId
          : channelTypeId // ignore: cast_nullable_to_non_nullable
              as String?,
      channelStockType: freezed == channelStockType
          ? _value.channelStockType
          : channelStockType // ignore: cast_nullable_to_non_nullable
              as String?,
      channelName: freezed == channelName
          ? _value.channelName
          : channelName // ignore: cast_nullable_to_non_nullable
              as String?,
      orderType: freezed == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as String?,
      customerCode: freezed == customerCode
          ? _value.customerCode
          : customerCode // ignore: cast_nullable_to_non_nullable
              as String?,
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      customerMailId: freezed == customerMailId
          ? _value.customerMailId
          : customerMailId // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      customerTrnNumber: freezed == customerTrnNumber
          ? _value.customerTrnNumber
          : customerTrnNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      customerGroupCode: freezed == customerGroupCode
          ? _value.customerGroupCode
          : customerGroupCode // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingAddressId: freezed == shippingAddressId
          ? _value.shippingAddressId
          : shippingAddressId // ignore: cast_nullable_to_non_nullable
              as int?,
      billingAddressId: freezed == billingAddressId
          ? _value.billingAddressId
          : billingAddressId // ignore: cast_nullable_to_non_nullable
              as int?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      vatableAmount: freezed == vatableAmount
          ? _value.vatableAmount
          : vatableAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double?,
      unitCost: freezed == unitCost
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      isHolded: freezed == isHolded
          ? _value.isHolded
          : isHolded // ignore: cast_nullable_to_non_nullable
              as bool?,
      needApproval: freezed == needApproval
          ? _value.needApproval
          : needApproval // ignore: cast_nullable_to_non_nullable
              as bool?,
      sellingPrice: freezed == sellingPrice
          ? _value.sellingPrice
          : sellingPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      remarks: freezed == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      customerPhoneNumber: freezed == customerPhoneNumber
          ? _value.customerPhoneNumber
          : customerPhoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryAddress: freezed == deliveryAddress
          ? _value.deliveryAddress
          : deliveryAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryAddressFullData: freezed == deliveryAddressFullData
          ? _value.deliveryAddressFullData
          : deliveryAddressFullData // ignore: cast_nullable_to_non_nullable
              as DeliveryAddressModel?,
      deliveryCharge: freezed == deliveryCharge
          ? _value.deliveryCharge
          : deliveryCharge // ignore: cast_nullable_to_non_nullable
              as double?,
      orderLinesCallcenter: freezed == orderLinesCallcenter
          ? _value.orderLinesCallcenter
          : orderLinesCallcenter // ignore: cast_nullable_to_non_nullable
              as List<OrderLineCallcenter>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DeliveryAddressModelCopyWith<$Res>? get deliveryAddressFullData {
    if (_value.deliveryAddressFullData == null) {
      return null;
    }

    return $DeliveryAddressModelCopyWith<$Res>(_value.deliveryAddressFullData!,
        (value) {
      return _then(_value.copyWith(deliveryAddressFullData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CreateOrderCopyWith<$Res>
    implements $CreateOrderCopyWith<$Res> {
  factory _$$_CreateOrderCopyWith(
          _$_CreateOrder value, $Res Function(_$_CreateOrder) then) =
      __$$_CreateOrderCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "channel_code") String? channelCode,
      @JsonKey(name: "channel_id") String? channelId,
      @JsonKey(name: "trn_number") String? trnNumber,
      @JsonKey(name: "channel_type_code") String? channelTypeCode,
      @JsonKey(name: "channel_type_id") String? channelTypeId,
      @JsonKey(name: "channel_stock_type") String? channelStockType,
      @JsonKey(name: "channel_name") String? channelName,
      @JsonKey(name: "order_type") String? orderType,
      @JsonKey(name: "customer_code") String? customerCode,
      @JsonKey(name: "customer_name") String? customerName,
      @JsonKey(name: "created_by") String? createdBy,
      @JsonKey(name: "customer_mail_id") String? customerMailId,
      @JsonKey(name: "inventory_id") String? inventoryId,
      @JsonKey(name: "customer_trn_number") String? customerTrnNumber,
      @JsonKey(name: "customer_group_code") String? customerGroupCode,
      @JsonKey(name: "shipping_address_id") int? shippingAddressId,
      @JsonKey(name: "billing_address_id") int? billingAddressId,
      @JsonKey(name: "discount") double? discount,
      @JsonKey(name: "vatable_amount") double? vatableAmount,
      @JsonKey(name: "vat") double? vat,
      @JsonKey(name: "total") double? total,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "is_holded") bool? isHolded,
      @JsonKey(name: "need_approval") bool? needApproval,
      @JsonKey(name: "selling_price") double? sellingPrice,
      @JsonKey(name: "notes") String? notes,
      @JsonKey(name: "remarks") String? remarks,
      @JsonKey(name: "customer_phone_number") String? customerPhoneNumber,
      @JsonKey(name: "delivery_address") String? deliveryAddress,
      @JsonKey(name: "delivery_address_full_data")
      DeliveryAddressModel? deliveryAddressFullData,
      @JsonKey(name: "delivery_charge") double? deliveryCharge,
      @JsonKey(name: "order_lines")
      List<OrderLineCallcenter>? orderLinesCallcenter});

  @override
  $DeliveryAddressModelCopyWith<$Res>? get deliveryAddressFullData;
}

/// @nodoc
class __$$_CreateOrderCopyWithImpl<$Res>
    extends _$CreateOrderCopyWithImpl<$Res, _$_CreateOrder>
    implements _$$_CreateOrderCopyWith<$Res> {
  __$$_CreateOrderCopyWithImpl(
      _$_CreateOrder _value, $Res Function(_$_CreateOrder) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channelCode = freezed,
    Object? channelId = freezed,
    Object? trnNumber = freezed,
    Object? channelTypeCode = freezed,
    Object? channelTypeId = freezed,
    Object? channelStockType = freezed,
    Object? channelName = freezed,
    Object? orderType = freezed,
    Object? customerCode = freezed,
    Object? customerName = freezed,
    Object? createdBy = freezed,
    Object? customerMailId = freezed,
    Object? inventoryId = freezed,
    Object? customerTrnNumber = freezed,
    Object? customerGroupCode = freezed,
    Object? shippingAddressId = freezed,
    Object? billingAddressId = freezed,
    Object? discount = freezed,
    Object? vatableAmount = freezed,
    Object? vat = freezed,
    Object? total = freezed,
    Object? unitCost = freezed,
    Object? isHolded = freezed,
    Object? needApproval = freezed,
    Object? sellingPrice = freezed,
    Object? notes = freezed,
    Object? remarks = freezed,
    Object? customerPhoneNumber = freezed,
    Object? deliveryAddress = freezed,
    Object? deliveryAddressFullData = freezed,
    Object? deliveryCharge = freezed,
    Object? orderLinesCallcenter = freezed,
  }) {
    return _then(_$_CreateOrder(
      channelCode: freezed == channelCode
          ? _value.channelCode
          : channelCode // ignore: cast_nullable_to_non_nullable
              as String?,
      channelId: freezed == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String?,
      trnNumber: freezed == trnNumber
          ? _value.trnNumber
          : trnNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      channelTypeCode: freezed == channelTypeCode
          ? _value.channelTypeCode
          : channelTypeCode // ignore: cast_nullable_to_non_nullable
              as String?,
      channelTypeId: freezed == channelTypeId
          ? _value.channelTypeId
          : channelTypeId // ignore: cast_nullable_to_non_nullable
              as String?,
      channelStockType: freezed == channelStockType
          ? _value.channelStockType
          : channelStockType // ignore: cast_nullable_to_non_nullable
              as String?,
      channelName: freezed == channelName
          ? _value.channelName
          : channelName // ignore: cast_nullable_to_non_nullable
              as String?,
      orderType: freezed == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as String?,
      customerCode: freezed == customerCode
          ? _value.customerCode
          : customerCode // ignore: cast_nullable_to_non_nullable
              as String?,
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      customerMailId: freezed == customerMailId
          ? _value.customerMailId
          : customerMailId // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      customerTrnNumber: freezed == customerTrnNumber
          ? _value.customerTrnNumber
          : customerTrnNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      customerGroupCode: freezed == customerGroupCode
          ? _value.customerGroupCode
          : customerGroupCode // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingAddressId: freezed == shippingAddressId
          ? _value.shippingAddressId
          : shippingAddressId // ignore: cast_nullable_to_non_nullable
              as int?,
      billingAddressId: freezed == billingAddressId
          ? _value.billingAddressId
          : billingAddressId // ignore: cast_nullable_to_non_nullable
              as int?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      vatableAmount: freezed == vatableAmount
          ? _value.vatableAmount
          : vatableAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double?,
      unitCost: freezed == unitCost
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      isHolded: freezed == isHolded
          ? _value.isHolded
          : isHolded // ignore: cast_nullable_to_non_nullable
              as bool?,
      needApproval: freezed == needApproval
          ? _value.needApproval
          : needApproval // ignore: cast_nullable_to_non_nullable
              as bool?,
      sellingPrice: freezed == sellingPrice
          ? _value.sellingPrice
          : sellingPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      remarks: freezed == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      customerPhoneNumber: freezed == customerPhoneNumber
          ? _value.customerPhoneNumber
          : customerPhoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryAddress: freezed == deliveryAddress
          ? _value.deliveryAddress
          : deliveryAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryAddressFullData: freezed == deliveryAddressFullData
          ? _value.deliveryAddressFullData
          : deliveryAddressFullData // ignore: cast_nullable_to_non_nullable
              as DeliveryAddressModel?,
      deliveryCharge: freezed == deliveryCharge
          ? _value.deliveryCharge
          : deliveryCharge // ignore: cast_nullable_to_non_nullable
              as double?,
      orderLinesCallcenter: freezed == orderLinesCallcenter
          ? _value._orderLinesCallcenter
          : orderLinesCallcenter // ignore: cast_nullable_to_non_nullable
              as List<OrderLineCallcenter>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateOrder implements _CreateOrder {
  const _$_CreateOrder(
      {@JsonKey(name: "channel_code") this.channelCode,
      @JsonKey(name: "channel_id") this.channelId,
      @JsonKey(name: "trn_number") this.trnNumber,
      @JsonKey(name: "channel_type_code") this.channelTypeCode,
      @JsonKey(name: "channel_type_id") this.channelTypeId,
      @JsonKey(name: "channel_stock_type") this.channelStockType,
      @JsonKey(name: "channel_name") this.channelName,
      @JsonKey(name: "order_type") this.orderType,
      @JsonKey(name: "customer_code") this.customerCode,
      @JsonKey(name: "customer_name") this.customerName,
      @JsonKey(name: "created_by") this.createdBy,
      @JsonKey(name: "customer_mail_id") this.customerMailId,
      @JsonKey(name: "inventory_id") this.inventoryId,
      @JsonKey(name: "customer_trn_number") this.customerTrnNumber,
      @JsonKey(name: "customer_group_code") this.customerGroupCode,
      @JsonKey(name: "shipping_address_id") this.shippingAddressId,
      @JsonKey(name: "billing_address_id") this.billingAddressId,
      @JsonKey(name: "discount") this.discount,
      @JsonKey(name: "vatable_amount") this.vatableAmount,
      @JsonKey(name: "vat") this.vat,
      @JsonKey(name: "total") this.total,
      @JsonKey(name: "unit_cost") this.unitCost,
      @JsonKey(name: "is_holded") this.isHolded,
      @JsonKey(name: "need_approval") this.needApproval,
      @JsonKey(name: "selling_price") this.sellingPrice,
      @JsonKey(name: "notes") this.notes,
      @JsonKey(name: "remarks") this.remarks,
      @JsonKey(name: "customer_phone_number") this.customerPhoneNumber,
      @JsonKey(name: "delivery_address") this.deliveryAddress,
      @JsonKey(name: "delivery_address_full_data") this.deliveryAddressFullData,
      @JsonKey(name: "delivery_charge") this.deliveryCharge,
      @JsonKey(name: "order_lines")
      final List<OrderLineCallcenter>? orderLinesCallcenter})
      : _orderLinesCallcenter = orderLinesCallcenter;

  factory _$_CreateOrder.fromJson(Map<String, dynamic> json) =>
      _$$_CreateOrderFromJson(json);

  @override
  @JsonKey(name: "channel_code")
  final String? channelCode;
  @override
  @JsonKey(name: "channel_id")
  final String? channelId;
  @override
  @JsonKey(name: "trn_number")
  final String? trnNumber;
  @override
  @JsonKey(name: "channel_type_code")
  final String? channelTypeCode;
  @override
  @JsonKey(name: "channel_type_id")
  final String? channelTypeId;
  @override
  @JsonKey(name: "channel_stock_type")
  final String? channelStockType;
  @override
  @JsonKey(name: "channel_name")
  final String? channelName;
  @override
  @JsonKey(name: "order_type")
  final String? orderType;
  @override
  @JsonKey(name: "customer_code")
  final String? customerCode;
  @override
  @JsonKey(name: "customer_name")
  final String? customerName;
  @override
  @JsonKey(name: "created_by")
  final String? createdBy;
  @override
  @JsonKey(name: "customer_mail_id")
  final String? customerMailId;
  @override
  @JsonKey(name: "inventory_id")
  final String? inventoryId;
  @override
  @JsonKey(name: "customer_trn_number")
  final String? customerTrnNumber;
  @override
  @JsonKey(name: "customer_group_code")
  final String? customerGroupCode;
  @override
  @JsonKey(name: "shipping_address_id")
  final int? shippingAddressId;
  @override
  @JsonKey(name: "billing_address_id")
  final int? billingAddressId;
  @override
  @JsonKey(name: "discount")
  final double? discount;
  @override
  @JsonKey(name: "vatable_amount")
  final double? vatableAmount;
  @override
  @JsonKey(name: "vat")
  final double? vat;
  @override
  @JsonKey(name: "total")
  final double? total;
  @override
  @JsonKey(name: "unit_cost")
  final double? unitCost;
  @override
  @JsonKey(name: "is_holded")
  final bool? isHolded;
  @override
  @JsonKey(name: "need_approval")
  final bool? needApproval;
  @override
  @JsonKey(name: "selling_price")
  final double? sellingPrice;
  @override
  @JsonKey(name: "notes")
  final String? notes;
  @override
  @JsonKey(name: "remarks")
  final String? remarks;
  @override
  @JsonKey(name: "customer_phone_number")
  final String? customerPhoneNumber;
  @override
  @JsonKey(name: "delivery_address")
  final String? deliveryAddress;
  @override
  @JsonKey(name: "delivery_address_full_data")
  final DeliveryAddressModel? deliveryAddressFullData;
  @override
  @JsonKey(name: "delivery_charge")
  final double? deliveryCharge;
  final List<OrderLineCallcenter>? _orderLinesCallcenter;
  @override
  @JsonKey(name: "order_lines")
  List<OrderLineCallcenter>? get orderLinesCallcenter {
    final value = _orderLinesCallcenter;
    if (value == null) return null;
    if (_orderLinesCallcenter is EqualUnmodifiableListView)
      return _orderLinesCallcenter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CreateOrder(channelCode: $channelCode, channelId: $channelId, trnNumber: $trnNumber, channelTypeCode: $channelTypeCode, channelTypeId: $channelTypeId, channelStockType: $channelStockType, channelName: $channelName, orderType: $orderType, customerCode: $customerCode, customerName: $customerName, createdBy: $createdBy, customerMailId: $customerMailId, inventoryId: $inventoryId, customerTrnNumber: $customerTrnNumber, customerGroupCode: $customerGroupCode, shippingAddressId: $shippingAddressId, billingAddressId: $billingAddressId, discount: $discount, vatableAmount: $vatableAmount, vat: $vat, total: $total, unitCost: $unitCost, isHolded: $isHolded, needApproval: $needApproval, sellingPrice: $sellingPrice, notes: $notes, remarks: $remarks, customerPhoneNumber: $customerPhoneNumber, deliveryAddress: $deliveryAddress, deliveryAddressFullData: $deliveryAddressFullData, deliveryCharge: $deliveryCharge, orderLinesCallcenter: $orderLinesCallcenter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateOrder &&
            (identical(other.channelCode, channelCode) ||
                other.channelCode == channelCode) &&
            (identical(other.channelId, channelId) ||
                other.channelId == channelId) &&
            (identical(other.trnNumber, trnNumber) ||
                other.trnNumber == trnNumber) &&
            (identical(other.channelTypeCode, channelTypeCode) ||
                other.channelTypeCode == channelTypeCode) &&
            (identical(other.channelTypeId, channelTypeId) ||
                other.channelTypeId == channelTypeId) &&
            (identical(other.channelStockType, channelStockType) ||
                other.channelStockType == channelStockType) &&
            (identical(other.channelName, channelName) ||
                other.channelName == channelName) &&
            (identical(other.orderType, orderType) ||
                other.orderType == orderType) &&
            (identical(other.customerCode, customerCode) ||
                other.customerCode == customerCode) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.customerMailId, customerMailId) ||
                other.customerMailId == customerMailId) &&
            (identical(other.inventoryId, inventoryId) ||
                other.inventoryId == inventoryId) &&
            (identical(other.customerTrnNumber, customerTrnNumber) ||
                other.customerTrnNumber == customerTrnNumber) &&
            (identical(other.customerGroupCode, customerGroupCode) ||
                other.customerGroupCode == customerGroupCode) &&
            (identical(other.shippingAddressId, shippingAddressId) ||
                other.shippingAddressId == shippingAddressId) &&
            (identical(other.billingAddressId, billingAddressId) ||
                other.billingAddressId == billingAddressId) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.vatableAmount, vatableAmount) ||
                other.vatableAmount == vatableAmount) &&
            (identical(other.vat, vat) || other.vat == vat) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.unitCost, unitCost) ||
                other.unitCost == unitCost) &&
            (identical(other.isHolded, isHolded) ||
                other.isHolded == isHolded) &&
            (identical(other.needApproval, needApproval) ||
                other.needApproval == needApproval) &&
            (identical(other.sellingPrice, sellingPrice) ||
                other.sellingPrice == sellingPrice) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.remarks, remarks) || other.remarks == remarks) &&
            (identical(other.customerPhoneNumber, customerPhoneNumber) ||
                other.customerPhoneNumber == customerPhoneNumber) &&
            (identical(other.deliveryAddress, deliveryAddress) ||
                other.deliveryAddress == deliveryAddress) &&
            (identical(
                    other.deliveryAddressFullData, deliveryAddressFullData) ||
                other.deliveryAddressFullData == deliveryAddressFullData) &&
            (identical(other.deliveryCharge, deliveryCharge) ||
                other.deliveryCharge == deliveryCharge) &&
            const DeepCollectionEquality()
                .equals(other._orderLinesCallcenter, _orderLinesCallcenter));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        channelCode,
        channelId,
        trnNumber,
        channelTypeCode,
        channelTypeId,
        channelStockType,
        channelName,
        orderType,
        customerCode,
        customerName,
        createdBy,
        customerMailId,
        inventoryId,
        customerTrnNumber,
        customerGroupCode,
        shippingAddressId,
        billingAddressId,
        discount,
        vatableAmount,
        vat,
        total,
        unitCost,
        isHolded,
        needApproval,
        sellingPrice,
        notes,
        remarks,
        customerPhoneNumber,
        deliveryAddress,
        deliveryAddressFullData,
        deliveryCharge,
        const DeepCollectionEquality().hash(_orderLinesCallcenter)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateOrderCopyWith<_$_CreateOrder> get copyWith =>
      __$$_CreateOrderCopyWithImpl<_$_CreateOrder>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateOrderToJson(
      this,
    );
  }
}

abstract class _CreateOrder implements CreateOrder {
  const factory _CreateOrder(
      {@JsonKey(name: "channel_code") final String? channelCode,
      @JsonKey(name: "channel_id") final String? channelId,
      @JsonKey(name: "trn_number") final String? trnNumber,
      @JsonKey(name: "channel_type_code") final String? channelTypeCode,
      @JsonKey(name: "channel_type_id") final String? channelTypeId,
      @JsonKey(name: "channel_stock_type") final String? channelStockType,
      @JsonKey(name: "channel_name") final String? channelName,
      @JsonKey(name: "order_type") final String? orderType,
      @JsonKey(name: "customer_code") final String? customerCode,
      @JsonKey(name: "customer_name") final String? customerName,
      @JsonKey(name: "created_by") final String? createdBy,
      @JsonKey(name: "customer_mail_id") final String? customerMailId,
      @JsonKey(name: "inventory_id") final String? inventoryId,
      @JsonKey(name: "customer_trn_number") final String? customerTrnNumber,
      @JsonKey(name: "customer_group_code") final String? customerGroupCode,
      @JsonKey(name: "shipping_address_id") final int? shippingAddressId,
      @JsonKey(name: "billing_address_id") final int? billingAddressId,
      @JsonKey(name: "discount") final double? discount,
      @JsonKey(name: "vatable_amount") final double? vatableAmount,
      @JsonKey(name: "vat") final double? vat,
      @JsonKey(name: "total") final double? total,
      @JsonKey(name: "unit_cost") final double? unitCost,
      @JsonKey(name: "is_holded") final bool? isHolded,
      @JsonKey(name: "need_approval") final bool? needApproval,
      @JsonKey(name: "selling_price") final double? sellingPrice,
      @JsonKey(name: "notes") final String? notes,
      @JsonKey(name: "remarks") final String? remarks,
      @JsonKey(name: "customer_phone_number") final String? customerPhoneNumber,
      @JsonKey(name: "delivery_address") final String? deliveryAddress,
      @JsonKey(name: "delivery_address_full_data")
      final DeliveryAddressModel? deliveryAddressFullData,
      @JsonKey(name: "delivery_charge") final double? deliveryCharge,
      @JsonKey(name: "order_lines")
      final List<OrderLineCallcenter>? orderLinesCallcenter}) = _$_CreateOrder;

  factory _CreateOrder.fromJson(Map<String, dynamic> json) =
      _$_CreateOrder.fromJson;

  @override
  @JsonKey(name: "channel_code")
  String? get channelCode;
  @override
  @JsonKey(name: "channel_id")
  String? get channelId;
  @override
  @JsonKey(name: "trn_number")
  String? get trnNumber;
  @override
  @JsonKey(name: "channel_type_code")
  String? get channelTypeCode;
  @override
  @JsonKey(name: "channel_type_id")
  String? get channelTypeId;
  @override
  @JsonKey(name: "channel_stock_type")
  String? get channelStockType;
  @override
  @JsonKey(name: "channel_name")
  String? get channelName;
  @override
  @JsonKey(name: "order_type")
  String? get orderType;
  @override
  @JsonKey(name: "customer_code")
  String? get customerCode;
  @override
  @JsonKey(name: "customer_name")
  String? get customerName;
  @override
  @JsonKey(name: "created_by")
  String? get createdBy;
  @override
  @JsonKey(name: "customer_mail_id")
  String? get customerMailId;
  @override
  @JsonKey(name: "inventory_id")
  String? get inventoryId;
  @override
  @JsonKey(name: "customer_trn_number")
  String? get customerTrnNumber;
  @override
  @JsonKey(name: "customer_group_code")
  String? get customerGroupCode;
  @override
  @JsonKey(name: "shipping_address_id")
  int? get shippingAddressId;
  @override
  @JsonKey(name: "billing_address_id")
  int? get billingAddressId;
  @override
  @JsonKey(name: "discount")
  double? get discount;
  @override
  @JsonKey(name: "vatable_amount")
  double? get vatableAmount;
  @override
  @JsonKey(name: "vat")
  double? get vat;
  @override
  @JsonKey(name: "total")
  double? get total;
  @override
  @JsonKey(name: "unit_cost")
  double? get unitCost;
  @override
  @JsonKey(name: "is_holded")
  bool? get isHolded;
  @override
  @JsonKey(name: "need_approval")
  bool? get needApproval;
  @override
  @JsonKey(name: "selling_price")
  double? get sellingPrice;
  @override
  @JsonKey(name: "notes")
  String? get notes;
  @override
  @JsonKey(name: "remarks")
  String? get remarks;
  @override
  @JsonKey(name: "customer_phone_number")
  String? get customerPhoneNumber;
  @override
  @JsonKey(name: "delivery_address")
  String? get deliveryAddress;
  @override
  @JsonKey(name: "delivery_address_full_data")
  DeliveryAddressModel? get deliveryAddressFullData;
  @override
  @JsonKey(name: "delivery_charge")
  double? get deliveryCharge;
  @override
  @JsonKey(name: "order_lines")
  List<OrderLineCallcenter>? get orderLinesCallcenter;
  @override
  @JsonKey(ignore: true)
  _$$_CreateOrderCopyWith<_$_CreateOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderLineCallcenter _$OrderLineCallcenterFromJson(Map<String, dynamic> json) {
  return _OrderLineCallcenter.fromJson(json);
}

/// @nodoc
mixin _$OrderLineCallcenter {
  @JsonKey(name: "variant_id")
  int? get variantId => throw _privateConstructorUsedError;
  @JsonKey(name: "variant_code")
  String? get variantCode => throw _privateConstructorUsedError;
  @JsonKey(name: "variant_name")
  String? get variantName => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "barcode")
  String? get barcode => throw _privateConstructorUsedError;
  @JsonKey(name: "uom_id")
  int? get uomId => throw _privateConstructorUsedError;
  @JsonKey(name: "uom_name")
  String? get uomName => throw _privateConstructorUsedError;
  @JsonKey(name: "image1")
  String? get image1 => throw _privateConstructorUsedError;
  @JsonKey(name: "selling_price")
  double? get sellingPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "quantity")
  int? get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: "unit_cost")
  double? get unitCost => throw _privateConstructorUsedError;
  @JsonKey(name: "discount")
  double? get discount => throw _privateConstructorUsedError;
  @JsonKey(name: "total_amount")
  double? get totalAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "vat")
  double? get vat => throw _privateConstructorUsedError;
  @JsonKey(name: "actual_cost")
  double? get actualCost => throw _privateConstructorUsedError;
  @JsonKey(name: "discount_based_on")
  String? get discountBasedOn => throw _privateConstructorUsedError;
  @JsonKey(name: "vatable_amount")
  double? get vatableAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "warranty_price")
  double? get warrantyPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "warranty_id")
  int? get warrantyId => throw _privateConstructorUsedError;
  @JsonKey(name: "shipping_address_id")
  int? get shippingAddressId => throw _privateConstructorUsedError;
  @JsonKey(name: "return_type")
  String? get returnType => throw _privateConstructorUsedError;
  @JsonKey(name: "hub_code")
  String? get hubCode => throw _privateConstructorUsedError;
  @JsonKey(name: "hub_name")
  String? get hubName => throw _privateConstructorUsedError;
  @JsonKey(name: "return_time")
  int? get returnTime => throw _privateConstructorUsedError;
  @JsonKey(name: "inventory_id")
  String? get inventoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "discount_data")
  DiscountData? get discountData => throw _privateConstructorUsedError;
  @JsonKey(name: "delivery_slot_id")
  int? get deliverySlotId => throw _privateConstructorUsedError;
  @JsonKey(name: "need_approval", defaultValue: false)
  bool? get needApproval => throw _privateConstructorUsedError;
  @JsonKey(name: "delivery_charge")
  double? get deliveryCharge => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderLineCallcenterCopyWith<OrderLineCallcenter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderLineCallcenterCopyWith<$Res> {
  factory $OrderLineCallcenterCopyWith(
          OrderLineCallcenter value, $Res Function(OrderLineCallcenter) then) =
      _$OrderLineCallcenterCopyWithImpl<$Res, OrderLineCallcenter>;
  @useResult
  $Res call(
      {@JsonKey(name: "variant_id") int? variantId,
      @JsonKey(name: "variant_code") String? variantCode,
      @JsonKey(name: "variant_name") String? variantName,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive,
      @JsonKey(name: "barcode") String? barcode,
      @JsonKey(name: "uom_id") int? uomId,
      @JsonKey(name: "uom_name") String? uomName,
      @JsonKey(name: "image1") String? image1,
      @JsonKey(name: "selling_price") double? sellingPrice,
      @JsonKey(name: "quantity") int? quantity,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "discount") double? discount,
      @JsonKey(name: "total_amount") double? totalAmount,
      @JsonKey(name: "vat") double? vat,
      @JsonKey(name: "actual_cost") double? actualCost,
      @JsonKey(name: "discount_based_on") String? discountBasedOn,
      @JsonKey(name: "vatable_amount") double? vatableAmount,
      @JsonKey(name: "warranty_price") double? warrantyPrice,
      @JsonKey(name: "warranty_id") int? warrantyId,
      @JsonKey(name: "shipping_address_id") int? shippingAddressId,
      @JsonKey(name: "return_type") String? returnType,
      @JsonKey(name: "hub_code") String? hubCode,
      @JsonKey(name: "hub_name") String? hubName,
      @JsonKey(name: "return_time") int? returnTime,
      @JsonKey(name: "inventory_id") String? inventoryId,
      @JsonKey(name: "discount_data") DiscountData? discountData,
      @JsonKey(name: "delivery_slot_id") int? deliverySlotId,
      @JsonKey(name: "need_approval", defaultValue: false) bool? needApproval,
      @JsonKey(name: "delivery_charge") double? deliveryCharge});

  $DiscountDataCopyWith<$Res>? get discountData;
}

/// @nodoc
class _$OrderLineCallcenterCopyWithImpl<$Res, $Val extends OrderLineCallcenter>
    implements $OrderLineCallcenterCopyWith<$Res> {
  _$OrderLineCallcenterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? variantId = freezed,
    Object? variantCode = freezed,
    Object? variantName = freezed,
    Object? isActive = freezed,
    Object? barcode = freezed,
    Object? uomId = freezed,
    Object? uomName = freezed,
    Object? image1 = freezed,
    Object? sellingPrice = freezed,
    Object? quantity = freezed,
    Object? unitCost = freezed,
    Object? discount = freezed,
    Object? totalAmount = freezed,
    Object? vat = freezed,
    Object? actualCost = freezed,
    Object? discountBasedOn = freezed,
    Object? vatableAmount = freezed,
    Object? warrantyPrice = freezed,
    Object? warrantyId = freezed,
    Object? shippingAddressId = freezed,
    Object? returnType = freezed,
    Object? hubCode = freezed,
    Object? hubName = freezed,
    Object? returnTime = freezed,
    Object? inventoryId = freezed,
    Object? discountData = freezed,
    Object? deliverySlotId = freezed,
    Object? needApproval = freezed,
    Object? deliveryCharge = freezed,
  }) {
    return _then(_value.copyWith(
      variantId: freezed == variantId
          ? _value.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
              as int?,
      variantCode: freezed == variantCode
          ? _value.variantCode
          : variantCode // ignore: cast_nullable_to_non_nullable
              as String?,
      variantName: freezed == variantName
          ? _value.variantName
          : variantName // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      uomId: freezed == uomId
          ? _value.uomId
          : uomId // ignore: cast_nullable_to_non_nullable
              as int?,
      uomName: freezed == uomName
          ? _value.uomName
          : uomName // ignore: cast_nullable_to_non_nullable
              as String?,
      image1: freezed == image1
          ? _value.image1
          : image1 // ignore: cast_nullable_to_non_nullable
              as String?,
      sellingPrice: freezed == sellingPrice
          ? _value.sellingPrice
          : sellingPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      unitCost: freezed == unitCost
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      totalAmount: freezed == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      actualCost: freezed == actualCost
          ? _value.actualCost
          : actualCost // ignore: cast_nullable_to_non_nullable
              as double?,
      discountBasedOn: freezed == discountBasedOn
          ? _value.discountBasedOn
          : discountBasedOn // ignore: cast_nullable_to_non_nullable
              as String?,
      vatableAmount: freezed == vatableAmount
          ? _value.vatableAmount
          : vatableAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      warrantyPrice: freezed == warrantyPrice
          ? _value.warrantyPrice
          : warrantyPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      warrantyId: freezed == warrantyId
          ? _value.warrantyId
          : warrantyId // ignore: cast_nullable_to_non_nullable
              as int?,
      shippingAddressId: freezed == shippingAddressId
          ? _value.shippingAddressId
          : shippingAddressId // ignore: cast_nullable_to_non_nullable
              as int?,
      returnType: freezed == returnType
          ? _value.returnType
          : returnType // ignore: cast_nullable_to_non_nullable
              as String?,
      hubCode: freezed == hubCode
          ? _value.hubCode
          : hubCode // ignore: cast_nullable_to_non_nullable
              as String?,
      hubName: freezed == hubName
          ? _value.hubName
          : hubName // ignore: cast_nullable_to_non_nullable
              as String?,
      returnTime: freezed == returnTime
          ? _value.returnTime
          : returnTime // ignore: cast_nullable_to_non_nullable
              as int?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      discountData: freezed == discountData
          ? _value.discountData
          : discountData // ignore: cast_nullable_to_non_nullable
              as DiscountData?,
      deliverySlotId: freezed == deliverySlotId
          ? _value.deliverySlotId
          : deliverySlotId // ignore: cast_nullable_to_non_nullable
              as int?,
      needApproval: freezed == needApproval
          ? _value.needApproval
          : needApproval // ignore: cast_nullable_to_non_nullable
              as bool?,
      deliveryCharge: freezed == deliveryCharge
          ? _value.deliveryCharge
          : deliveryCharge // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DiscountDataCopyWith<$Res>? get discountData {
    if (_value.discountData == null) {
      return null;
    }

    return $DiscountDataCopyWith<$Res>(_value.discountData!, (value) {
      return _then(_value.copyWith(discountData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OrderLineCallcenterCopyWith<$Res>
    implements $OrderLineCallcenterCopyWith<$Res> {
  factory _$$_OrderLineCallcenterCopyWith(_$_OrderLineCallcenter value,
          $Res Function(_$_OrderLineCallcenter) then) =
      __$$_OrderLineCallcenterCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "variant_id") int? variantId,
      @JsonKey(name: "variant_code") String? variantCode,
      @JsonKey(name: "variant_name") String? variantName,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive,
      @JsonKey(name: "barcode") String? barcode,
      @JsonKey(name: "uom_id") int? uomId,
      @JsonKey(name: "uom_name") String? uomName,
      @JsonKey(name: "image1") String? image1,
      @JsonKey(name: "selling_price") double? sellingPrice,
      @JsonKey(name: "quantity") int? quantity,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "discount") double? discount,
      @JsonKey(name: "total_amount") double? totalAmount,
      @JsonKey(name: "vat") double? vat,
      @JsonKey(name: "actual_cost") double? actualCost,
      @JsonKey(name: "discount_based_on") String? discountBasedOn,
      @JsonKey(name: "vatable_amount") double? vatableAmount,
      @JsonKey(name: "warranty_price") double? warrantyPrice,
      @JsonKey(name: "warranty_id") int? warrantyId,
      @JsonKey(name: "shipping_address_id") int? shippingAddressId,
      @JsonKey(name: "return_type") String? returnType,
      @JsonKey(name: "hub_code") String? hubCode,
      @JsonKey(name: "hub_name") String? hubName,
      @JsonKey(name: "return_time") int? returnTime,
      @JsonKey(name: "inventory_id") String? inventoryId,
      @JsonKey(name: "discount_data") DiscountData? discountData,
      @JsonKey(name: "delivery_slot_id") int? deliverySlotId,
      @JsonKey(name: "need_approval", defaultValue: false) bool? needApproval,
      @JsonKey(name: "delivery_charge") double? deliveryCharge});

  @override
  $DiscountDataCopyWith<$Res>? get discountData;
}

/// @nodoc
class __$$_OrderLineCallcenterCopyWithImpl<$Res>
    extends _$OrderLineCallcenterCopyWithImpl<$Res, _$_OrderLineCallcenter>
    implements _$$_OrderLineCallcenterCopyWith<$Res> {
  __$$_OrderLineCallcenterCopyWithImpl(_$_OrderLineCallcenter _value,
      $Res Function(_$_OrderLineCallcenter) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? variantId = freezed,
    Object? variantCode = freezed,
    Object? variantName = freezed,
    Object? isActive = freezed,
    Object? barcode = freezed,
    Object? uomId = freezed,
    Object? uomName = freezed,
    Object? image1 = freezed,
    Object? sellingPrice = freezed,
    Object? quantity = freezed,
    Object? unitCost = freezed,
    Object? discount = freezed,
    Object? totalAmount = freezed,
    Object? vat = freezed,
    Object? actualCost = freezed,
    Object? discountBasedOn = freezed,
    Object? vatableAmount = freezed,
    Object? warrantyPrice = freezed,
    Object? warrantyId = freezed,
    Object? shippingAddressId = freezed,
    Object? returnType = freezed,
    Object? hubCode = freezed,
    Object? hubName = freezed,
    Object? returnTime = freezed,
    Object? inventoryId = freezed,
    Object? discountData = freezed,
    Object? deliverySlotId = freezed,
    Object? needApproval = freezed,
    Object? deliveryCharge = freezed,
  }) {
    return _then(_$_OrderLineCallcenter(
      variantId: freezed == variantId
          ? _value.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
              as int?,
      variantCode: freezed == variantCode
          ? _value.variantCode
          : variantCode // ignore: cast_nullable_to_non_nullable
              as String?,
      variantName: freezed == variantName
          ? _value.variantName
          : variantName // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      uomId: freezed == uomId
          ? _value.uomId
          : uomId // ignore: cast_nullable_to_non_nullable
              as int?,
      uomName: freezed == uomName
          ? _value.uomName
          : uomName // ignore: cast_nullable_to_non_nullable
              as String?,
      image1: freezed == image1
          ? _value.image1
          : image1 // ignore: cast_nullable_to_non_nullable
              as String?,
      sellingPrice: freezed == sellingPrice
          ? _value.sellingPrice
          : sellingPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      unitCost: freezed == unitCost
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      totalAmount: freezed == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      actualCost: freezed == actualCost
          ? _value.actualCost
          : actualCost // ignore: cast_nullable_to_non_nullable
              as double?,
      discountBasedOn: freezed == discountBasedOn
          ? _value.discountBasedOn
          : discountBasedOn // ignore: cast_nullable_to_non_nullable
              as String?,
      vatableAmount: freezed == vatableAmount
          ? _value.vatableAmount
          : vatableAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      warrantyPrice: freezed == warrantyPrice
          ? _value.warrantyPrice
          : warrantyPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      warrantyId: freezed == warrantyId
          ? _value.warrantyId
          : warrantyId // ignore: cast_nullable_to_non_nullable
              as int?,
      shippingAddressId: freezed == shippingAddressId
          ? _value.shippingAddressId
          : shippingAddressId // ignore: cast_nullable_to_non_nullable
              as int?,
      returnType: freezed == returnType
          ? _value.returnType
          : returnType // ignore: cast_nullable_to_non_nullable
              as String?,
      hubCode: freezed == hubCode
          ? _value.hubCode
          : hubCode // ignore: cast_nullable_to_non_nullable
              as String?,
      hubName: freezed == hubName
          ? _value.hubName
          : hubName // ignore: cast_nullable_to_non_nullable
              as String?,
      returnTime: freezed == returnTime
          ? _value.returnTime
          : returnTime // ignore: cast_nullable_to_non_nullable
              as int?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      discountData: freezed == discountData
          ? _value.discountData
          : discountData // ignore: cast_nullable_to_non_nullable
              as DiscountData?,
      deliverySlotId: freezed == deliverySlotId
          ? _value.deliverySlotId
          : deliverySlotId // ignore: cast_nullable_to_non_nullable
              as int?,
      needApproval: freezed == needApproval
          ? _value.needApproval
          : needApproval // ignore: cast_nullable_to_non_nullable
              as bool?,
      deliveryCharge: freezed == deliveryCharge
          ? _value.deliveryCharge
          : deliveryCharge // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderLineCallcenter implements _OrderLineCallcenter {
  const _$_OrderLineCallcenter(
      {@JsonKey(name: "variant_id") this.variantId,
      @JsonKey(name: "variant_code") this.variantCode,
      @JsonKey(name: "variant_name") this.variantName,
      @JsonKey(name: "is_active", defaultValue: false) this.isActive,
      @JsonKey(name: "barcode") this.barcode,
      @JsonKey(name: "uom_id") this.uomId,
      @JsonKey(name: "uom_name") this.uomName,
      @JsonKey(name: "image1") this.image1,
      @JsonKey(name: "selling_price") this.sellingPrice,
      @JsonKey(name: "quantity") this.quantity,
      @JsonKey(name: "unit_cost") this.unitCost,
      @JsonKey(name: "discount") this.discount,
      @JsonKey(name: "total_amount") this.totalAmount,
      @JsonKey(name: "vat") this.vat,
      @JsonKey(name: "actual_cost") this.actualCost,
      @JsonKey(name: "discount_based_on") this.discountBasedOn,
      @JsonKey(name: "vatable_amount") this.vatableAmount,
      @JsonKey(name: "warranty_price") this.warrantyPrice,
      @JsonKey(name: "warranty_id") this.warrantyId,
      @JsonKey(name: "shipping_address_id") this.shippingAddressId,
      @JsonKey(name: "return_type") this.returnType,
      @JsonKey(name: "hub_code") this.hubCode,
      @JsonKey(name: "hub_name") this.hubName,
      @JsonKey(name: "return_time") this.returnTime,
      @JsonKey(name: "inventory_id") this.inventoryId,
      @JsonKey(name: "discount_data") this.discountData,
      @JsonKey(name: "delivery_slot_id") this.deliverySlotId,
      @JsonKey(name: "need_approval", defaultValue: false) this.needApproval,
      @JsonKey(name: "delivery_charge") this.deliveryCharge});

  factory _$_OrderLineCallcenter.fromJson(Map<String, dynamic> json) =>
      _$$_OrderLineCallcenterFromJson(json);

  @override
  @JsonKey(name: "variant_id")
  final int? variantId;
  @override
  @JsonKey(name: "variant_code")
  final String? variantCode;
  @override
  @JsonKey(name: "variant_name")
  final String? variantName;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  final bool? isActive;
  @override
  @JsonKey(name: "barcode")
  final String? barcode;
  @override
  @JsonKey(name: "uom_id")
  final int? uomId;
  @override
  @JsonKey(name: "uom_name")
  final String? uomName;
  @override
  @JsonKey(name: "image1")
  final String? image1;
  @override
  @JsonKey(name: "selling_price")
  final double? sellingPrice;
  @override
  @JsonKey(name: "quantity")
  final int? quantity;
  @override
  @JsonKey(name: "unit_cost")
  final double? unitCost;
  @override
  @JsonKey(name: "discount")
  final double? discount;
  @override
  @JsonKey(name: "total_amount")
  final double? totalAmount;
  @override
  @JsonKey(name: "vat")
  final double? vat;
  @override
  @JsonKey(name: "actual_cost")
  final double? actualCost;
  @override
  @JsonKey(name: "discount_based_on")
  final String? discountBasedOn;
  @override
  @JsonKey(name: "vatable_amount")
  final double? vatableAmount;
  @override
  @JsonKey(name: "warranty_price")
  final double? warrantyPrice;
  @override
  @JsonKey(name: "warranty_id")
  final int? warrantyId;
  @override
  @JsonKey(name: "shipping_address_id")
  final int? shippingAddressId;
  @override
  @JsonKey(name: "return_type")
  final String? returnType;
  @override
  @JsonKey(name: "hub_code")
  final String? hubCode;
  @override
  @JsonKey(name: "hub_name")
  final String? hubName;
  @override
  @JsonKey(name: "return_time")
  final int? returnTime;
  @override
  @JsonKey(name: "inventory_id")
  final String? inventoryId;
  @override
  @JsonKey(name: "discount_data")
  final DiscountData? discountData;
  @override
  @JsonKey(name: "delivery_slot_id")
  final int? deliverySlotId;
  @override
  @JsonKey(name: "need_approval", defaultValue: false)
  final bool? needApproval;
  @override
  @JsonKey(name: "delivery_charge")
  final double? deliveryCharge;

  @override
  String toString() {
    return 'OrderLineCallcenter(variantId: $variantId, variantCode: $variantCode, variantName: $variantName, isActive: $isActive, barcode: $barcode, uomId: $uomId, uomName: $uomName, image1: $image1, sellingPrice: $sellingPrice, quantity: $quantity, unitCost: $unitCost, discount: $discount, totalAmount: $totalAmount, vat: $vat, actualCost: $actualCost, discountBasedOn: $discountBasedOn, vatableAmount: $vatableAmount, warrantyPrice: $warrantyPrice, warrantyId: $warrantyId, shippingAddressId: $shippingAddressId, returnType: $returnType, hubCode: $hubCode, hubName: $hubName, returnTime: $returnTime, inventoryId: $inventoryId, discountData: $discountData, deliverySlotId: $deliverySlotId, needApproval: $needApproval, deliveryCharge: $deliveryCharge)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderLineCallcenter &&
            (identical(other.variantId, variantId) ||
                other.variantId == variantId) &&
            (identical(other.variantCode, variantCode) ||
                other.variantCode == variantCode) &&
            (identical(other.variantName, variantName) ||
                other.variantName == variantName) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(other.uomId, uomId) || other.uomId == uomId) &&
            (identical(other.uomName, uomName) || other.uomName == uomName) &&
            (identical(other.image1, image1) || other.image1 == image1) &&
            (identical(other.sellingPrice, sellingPrice) ||
                other.sellingPrice == sellingPrice) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unitCost, unitCost) ||
                other.unitCost == unitCost) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.vat, vat) || other.vat == vat) &&
            (identical(other.actualCost, actualCost) ||
                other.actualCost == actualCost) &&
            (identical(other.discountBasedOn, discountBasedOn) ||
                other.discountBasedOn == discountBasedOn) &&
            (identical(other.vatableAmount, vatableAmount) ||
                other.vatableAmount == vatableAmount) &&
            (identical(other.warrantyPrice, warrantyPrice) ||
                other.warrantyPrice == warrantyPrice) &&
            (identical(other.warrantyId, warrantyId) ||
                other.warrantyId == warrantyId) &&
            (identical(other.shippingAddressId, shippingAddressId) ||
                other.shippingAddressId == shippingAddressId) &&
            (identical(other.returnType, returnType) ||
                other.returnType == returnType) &&
            (identical(other.hubCode, hubCode) || other.hubCode == hubCode) &&
            (identical(other.hubName, hubName) || other.hubName == hubName) &&
            (identical(other.returnTime, returnTime) ||
                other.returnTime == returnTime) &&
            (identical(other.inventoryId, inventoryId) ||
                other.inventoryId == inventoryId) &&
            (identical(other.discountData, discountData) ||
                other.discountData == discountData) &&
            (identical(other.deliverySlotId, deliverySlotId) ||
                other.deliverySlotId == deliverySlotId) &&
            (identical(other.needApproval, needApproval) ||
                other.needApproval == needApproval) &&
            (identical(other.deliveryCharge, deliveryCharge) ||
                other.deliveryCharge == deliveryCharge));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        variantId,
        variantCode,
        variantName,
        isActive,
        barcode,
        uomId,
        uomName,
        image1,
        sellingPrice,
        quantity,
        unitCost,
        discount,
        totalAmount,
        vat,
        actualCost,
        discountBasedOn,
        vatableAmount,
        warrantyPrice,
        warrantyId,
        shippingAddressId,
        returnType,
        hubCode,
        hubName,
        returnTime,
        inventoryId,
        discountData,
        deliverySlotId,
        needApproval,
        deliveryCharge
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderLineCallcenterCopyWith<_$_OrderLineCallcenter> get copyWith =>
      __$$_OrderLineCallcenterCopyWithImpl<_$_OrderLineCallcenter>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderLineCallcenterToJson(
      this,
    );
  }
}

abstract class _OrderLineCallcenter implements OrderLineCallcenter {
  const factory _OrderLineCallcenter(
          {@JsonKey(name: "variant_id") final int? variantId,
          @JsonKey(name: "variant_code") final String? variantCode,
          @JsonKey(name: "variant_name") final String? variantName,
          @JsonKey(name: "is_active", defaultValue: false) final bool? isActive,
          @JsonKey(name: "barcode") final String? barcode,
          @JsonKey(name: "uom_id") final int? uomId,
          @JsonKey(name: "uom_name") final String? uomName,
          @JsonKey(name: "image1") final String? image1,
          @JsonKey(name: "selling_price") final double? sellingPrice,
          @JsonKey(name: "quantity") final int? quantity,
          @JsonKey(name: "unit_cost") final double? unitCost,
          @JsonKey(name: "discount") final double? discount,
          @JsonKey(name: "total_amount") final double? totalAmount,
          @JsonKey(name: "vat") final double? vat,
          @JsonKey(name: "actual_cost") final double? actualCost,
          @JsonKey(name: "discount_based_on") final String? discountBasedOn,
          @JsonKey(name: "vatable_amount") final double? vatableAmount,
          @JsonKey(name: "warranty_price") final double? warrantyPrice,
          @JsonKey(name: "warranty_id") final int? warrantyId,
          @JsonKey(name: "shipping_address_id") final int? shippingAddressId,
          @JsonKey(name: "return_type") final String? returnType,
          @JsonKey(name: "hub_code") final String? hubCode,
          @JsonKey(name: "hub_name") final String? hubName,
          @JsonKey(name: "return_time") final int? returnTime,
          @JsonKey(name: "inventory_id") final String? inventoryId,
          @JsonKey(name: "discount_data") final DiscountData? discountData,
          @JsonKey(name: "delivery_slot_id") final int? deliverySlotId,
          @JsonKey(name: "need_approval", defaultValue: false)
          final bool? needApproval,
          @JsonKey(name: "delivery_charge") final double? deliveryCharge}) =
      _$_OrderLineCallcenter;

  factory _OrderLineCallcenter.fromJson(Map<String, dynamic> json) =
      _$_OrderLineCallcenter.fromJson;

  @override
  @JsonKey(name: "variant_id")
  int? get variantId;
  @override
  @JsonKey(name: "variant_code")
  String? get variantCode;
  @override
  @JsonKey(name: "variant_name")
  String? get variantName;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive;
  @override
  @JsonKey(name: "barcode")
  String? get barcode;
  @override
  @JsonKey(name: "uom_id")
  int? get uomId;
  @override
  @JsonKey(name: "uom_name")
  String? get uomName;
  @override
  @JsonKey(name: "image1")
  String? get image1;
  @override
  @JsonKey(name: "selling_price")
  double? get sellingPrice;
  @override
  @JsonKey(name: "quantity")
  int? get quantity;
  @override
  @JsonKey(name: "unit_cost")
  double? get unitCost;
  @override
  @JsonKey(name: "discount")
  double? get discount;
  @override
  @JsonKey(name: "total_amount")
  double? get totalAmount;
  @override
  @JsonKey(name: "vat")
  double? get vat;
  @override
  @JsonKey(name: "actual_cost")
  double? get actualCost;
  @override
  @JsonKey(name: "discount_based_on")
  String? get discountBasedOn;
  @override
  @JsonKey(name: "vatable_amount")
  double? get vatableAmount;
  @override
  @JsonKey(name: "warranty_price")
  double? get warrantyPrice;
  @override
  @JsonKey(name: "warranty_id")
  int? get warrantyId;
  @override
  @JsonKey(name: "shipping_address_id")
  int? get shippingAddressId;
  @override
  @JsonKey(name: "return_type")
  String? get returnType;
  @override
  @JsonKey(name: "hub_code")
  String? get hubCode;
  @override
  @JsonKey(name: "hub_name")
  String? get hubName;
  @override
  @JsonKey(name: "return_time")
  int? get returnTime;
  @override
  @JsonKey(name: "inventory_id")
  String? get inventoryId;
  @override
  @JsonKey(name: "discount_data")
  DiscountData? get discountData;
  @override
  @JsonKey(name: "delivery_slot_id")
  int? get deliverySlotId;
  @override
  @JsonKey(name: "need_approval", defaultValue: false)
  bool? get needApproval;
  @override
  @JsonKey(name: "delivery_charge")
  double? get deliveryCharge;
  @override
  @JsonKey(ignore: true)
  _$$_OrderLineCallcenterCopyWith<_$_OrderLineCallcenter> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateCartModel _$CreateCartModelFromJson(Map<String, dynamic> json) {
  return _CreateCartModel.fromJson(json);
}

/// @nodoc
mixin _$CreateCartModel {
  @JsonKey(name: "customer_code")
  String? get customerCode => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_name")
  String? get customerName => throw _privateConstructorUsedError;
  AddressCart? get address => throw _privateConstructorUsedError;
  @JsonKey(name: "cart_lines")
  List<CartLinesModel>? get cartLinesModel =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateCartModelCopyWith<CreateCartModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateCartModelCopyWith<$Res> {
  factory $CreateCartModelCopyWith(
          CreateCartModel value, $Res Function(CreateCartModel) then) =
      _$CreateCartModelCopyWithImpl<$Res, CreateCartModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "customer_code") String? customerCode,
      @JsonKey(name: "customer_name") String? customerName,
      AddressCart? address,
      @JsonKey(name: "cart_lines") List<CartLinesModel>? cartLinesModel});

  $AddressCartCopyWith<$Res>? get address;
}

/// @nodoc
class _$CreateCartModelCopyWithImpl<$Res, $Val extends CreateCartModel>
    implements $CreateCartModelCopyWith<$Res> {
  _$CreateCartModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerCode = freezed,
    Object? customerName = freezed,
    Object? address = freezed,
    Object? cartLinesModel = freezed,
  }) {
    return _then(_value.copyWith(
      customerCode: freezed == customerCode
          ? _value.customerCode
          : customerCode // ignore: cast_nullable_to_non_nullable
              as String?,
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressCart?,
      cartLinesModel: freezed == cartLinesModel
          ? _value.cartLinesModel
          : cartLinesModel // ignore: cast_nullable_to_non_nullable
              as List<CartLinesModel>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCartCopyWith<$Res>? get address {
    if (_value.address == null) {
      return null;
    }

    return $AddressCartCopyWith<$Res>(_value.address!, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CreateCartModelCopyWith<$Res>
    implements $CreateCartModelCopyWith<$Res> {
  factory _$$_CreateCartModelCopyWith(
          _$_CreateCartModel value, $Res Function(_$_CreateCartModel) then) =
      __$$_CreateCartModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "customer_code") String? customerCode,
      @JsonKey(name: "customer_name") String? customerName,
      AddressCart? address,
      @JsonKey(name: "cart_lines") List<CartLinesModel>? cartLinesModel});

  @override
  $AddressCartCopyWith<$Res>? get address;
}

/// @nodoc
class __$$_CreateCartModelCopyWithImpl<$Res>
    extends _$CreateCartModelCopyWithImpl<$Res, _$_CreateCartModel>
    implements _$$_CreateCartModelCopyWith<$Res> {
  __$$_CreateCartModelCopyWithImpl(
      _$_CreateCartModel _value, $Res Function(_$_CreateCartModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerCode = freezed,
    Object? customerName = freezed,
    Object? address = freezed,
    Object? cartLinesModel = freezed,
  }) {
    return _then(_$_CreateCartModel(
      customerCode: freezed == customerCode
          ? _value.customerCode
          : customerCode // ignore: cast_nullable_to_non_nullable
              as String?,
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressCart?,
      cartLinesModel: freezed == cartLinesModel
          ? _value._cartLinesModel
          : cartLinesModel // ignore: cast_nullable_to_non_nullable
              as List<CartLinesModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateCartModel implements _CreateCartModel {
  const _$_CreateCartModel(
      {@JsonKey(name: "customer_code") this.customerCode,
      @JsonKey(name: "customer_name") this.customerName,
      this.address,
      @JsonKey(name: "cart_lines") final List<CartLinesModel>? cartLinesModel})
      : _cartLinesModel = cartLinesModel;

  factory _$_CreateCartModel.fromJson(Map<String, dynamic> json) =>
      _$$_CreateCartModelFromJson(json);

  @override
  @JsonKey(name: "customer_code")
  final String? customerCode;
  @override
  @JsonKey(name: "customer_name")
  final String? customerName;
  @override
  final AddressCart? address;
  final List<CartLinesModel>? _cartLinesModel;
  @override
  @JsonKey(name: "cart_lines")
  List<CartLinesModel>? get cartLinesModel {
    final value = _cartLinesModel;
    if (value == null) return null;
    if (_cartLinesModel is EqualUnmodifiableListView) return _cartLinesModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CreateCartModel(customerCode: $customerCode, customerName: $customerName, address: $address, cartLinesModel: $cartLinesModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateCartModel &&
            (identical(other.customerCode, customerCode) ||
                other.customerCode == customerCode) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.address, address) || other.address == address) &&
            const DeepCollectionEquality()
                .equals(other._cartLinesModel, _cartLinesModel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, customerCode, customerName,
      address, const DeepCollectionEquality().hash(_cartLinesModel));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateCartModelCopyWith<_$_CreateCartModel> get copyWith =>
      __$$_CreateCartModelCopyWithImpl<_$_CreateCartModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateCartModelToJson(
      this,
    );
  }
}

abstract class _CreateCartModel implements CreateCartModel {
  const factory _CreateCartModel(
      {@JsonKey(name: "customer_code") final String? customerCode,
      @JsonKey(name: "customer_name") final String? customerName,
      final AddressCart? address,
      @JsonKey(name: "cart_lines")
      final List<CartLinesModel>? cartLinesModel}) = _$_CreateCartModel;

  factory _CreateCartModel.fromJson(Map<String, dynamic> json) =
      _$_CreateCartModel.fromJson;

  @override
  @JsonKey(name: "customer_code")
  String? get customerCode;
  @override
  @JsonKey(name: "customer_name")
  String? get customerName;
  @override
  AddressCart? get address;
  @override
  @JsonKey(name: "cart_lines")
  List<CartLinesModel>? get cartLinesModel;
  @override
  @JsonKey(ignore: true)
  _$$_CreateCartModelCopyWith<_$_CreateCartModel> get copyWith =>
      throw _privateConstructorUsedError;
}

CartLinesModel _$CartLinesModelFromJson(Map<String, dynamic> json) {
  return _CartLinesModel.fromJson(json);
}

/// @nodoc
mixin _$CartLinesModel {
  double? get price => throw _privateConstructorUsedError;
  double? get vat => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get barcode => throw _privateConstructorUsedError;
  @JsonKey(name: "variant_id")
  int? get variantId => throw _privateConstructorUsedError;
  @JsonKey(name: "variant_code")
  String? get variantCode => throw _privateConstructorUsedError;
  @JsonKey(name: "inventory_id")
  String? get inventoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_details")
  DiscountData? get offerDetails => throw _privateConstructorUsedError;
  @JsonKey(name: "variant_name")
  String? get variantName => throw _privateConstructorUsedError;
  @JsonKey(name: "total_price")
  double? get totalPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "need_approval", defaultValue: false)
  bool? get needApproval => throw _privateConstructorUsedError;
  @JsonKey(name: "delivery_slot_id")
  int? get deliverySlotId => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartLinesModelCopyWith<CartLinesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartLinesModelCopyWith<$Res> {
  factory $CartLinesModelCopyWith(
          CartLinesModel value, $Res Function(CartLinesModel) then) =
      _$CartLinesModelCopyWithImpl<$Res, CartLinesModel>;
  @useResult
  $Res call(
      {double? price,
      double? vat,
      int? quantity,
      String? image,
      String? barcode,
      @JsonKey(name: "variant_id") int? variantId,
      @JsonKey(name: "variant_code") String? variantCode,
      @JsonKey(name: "inventory_id") String? inventoryId,
      @JsonKey(name: "offer_details") DiscountData? offerDetails,
      @JsonKey(name: "variant_name") String? variantName,
      @JsonKey(name: "total_price") double? totalPrice,
      @JsonKey(name: "need_approval", defaultValue: false) bool? needApproval,
      @JsonKey(name: "delivery_slot_id") int? deliverySlotId,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive});

  $DiscountDataCopyWith<$Res>? get offerDetails;
}

/// @nodoc
class _$CartLinesModelCopyWithImpl<$Res, $Val extends CartLinesModel>
    implements $CartLinesModelCopyWith<$Res> {
  _$CartLinesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = freezed,
    Object? vat = freezed,
    Object? quantity = freezed,
    Object? image = freezed,
    Object? barcode = freezed,
    Object? variantId = freezed,
    Object? variantCode = freezed,
    Object? inventoryId = freezed,
    Object? offerDetails = freezed,
    Object? variantName = freezed,
    Object? totalPrice = freezed,
    Object? needApproval = freezed,
    Object? deliverySlotId = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_value.copyWith(
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      variantId: freezed == variantId
          ? _value.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
              as int?,
      variantCode: freezed == variantCode
          ? _value.variantCode
          : variantCode // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      offerDetails: freezed == offerDetails
          ? _value.offerDetails
          : offerDetails // ignore: cast_nullable_to_non_nullable
              as DiscountData?,
      variantName: freezed == variantName
          ? _value.variantName
          : variantName // ignore: cast_nullable_to_non_nullable
              as String?,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      needApproval: freezed == needApproval
          ? _value.needApproval
          : needApproval // ignore: cast_nullable_to_non_nullable
              as bool?,
      deliverySlotId: freezed == deliverySlotId
          ? _value.deliverySlotId
          : deliverySlotId // ignore: cast_nullable_to_non_nullable
              as int?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DiscountDataCopyWith<$Res>? get offerDetails {
    if (_value.offerDetails == null) {
      return null;
    }

    return $DiscountDataCopyWith<$Res>(_value.offerDetails!, (value) {
      return _then(_value.copyWith(offerDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CartLinesModelCopyWith<$Res>
    implements $CartLinesModelCopyWith<$Res> {
  factory _$$_CartLinesModelCopyWith(
          _$_CartLinesModel value, $Res Function(_$_CartLinesModel) then) =
      __$$_CartLinesModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? price,
      double? vat,
      int? quantity,
      String? image,
      String? barcode,
      @JsonKey(name: "variant_id") int? variantId,
      @JsonKey(name: "variant_code") String? variantCode,
      @JsonKey(name: "inventory_id") String? inventoryId,
      @JsonKey(name: "offer_details") DiscountData? offerDetails,
      @JsonKey(name: "variant_name") String? variantName,
      @JsonKey(name: "total_price") double? totalPrice,
      @JsonKey(name: "need_approval", defaultValue: false) bool? needApproval,
      @JsonKey(name: "delivery_slot_id") int? deliverySlotId,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive});

  @override
  $DiscountDataCopyWith<$Res>? get offerDetails;
}

/// @nodoc
class __$$_CartLinesModelCopyWithImpl<$Res>
    extends _$CartLinesModelCopyWithImpl<$Res, _$_CartLinesModel>
    implements _$$_CartLinesModelCopyWith<$Res> {
  __$$_CartLinesModelCopyWithImpl(
      _$_CartLinesModel _value, $Res Function(_$_CartLinesModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = freezed,
    Object? vat = freezed,
    Object? quantity = freezed,
    Object? image = freezed,
    Object? barcode = freezed,
    Object? variantId = freezed,
    Object? variantCode = freezed,
    Object? inventoryId = freezed,
    Object? offerDetails = freezed,
    Object? variantName = freezed,
    Object? totalPrice = freezed,
    Object? needApproval = freezed,
    Object? deliverySlotId = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_$_CartLinesModel(
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      variantId: freezed == variantId
          ? _value.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
              as int?,
      variantCode: freezed == variantCode
          ? _value.variantCode
          : variantCode // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      offerDetails: freezed == offerDetails
          ? _value.offerDetails
          : offerDetails // ignore: cast_nullable_to_non_nullable
              as DiscountData?,
      variantName: freezed == variantName
          ? _value.variantName
          : variantName // ignore: cast_nullable_to_non_nullable
              as String?,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      needApproval: freezed == needApproval
          ? _value.needApproval
          : needApproval // ignore: cast_nullable_to_non_nullable
              as bool?,
      deliverySlotId: freezed == deliverySlotId
          ? _value.deliverySlotId
          : deliverySlotId // ignore: cast_nullable_to_non_nullable
              as int?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CartLinesModel implements _CartLinesModel {
  const _$_CartLinesModel(
      {this.price,
      this.vat,
      this.quantity,
      this.image,
      this.barcode,
      @JsonKey(name: "variant_id") this.variantId,
      @JsonKey(name: "variant_code") this.variantCode,
      @JsonKey(name: "inventory_id") this.inventoryId,
      @JsonKey(name: "offer_details") this.offerDetails,
      @JsonKey(name: "variant_name") this.variantName,
      @JsonKey(name: "total_price") this.totalPrice,
      @JsonKey(name: "need_approval", defaultValue: false) this.needApproval,
      @JsonKey(name: "delivery_slot_id") this.deliverySlotId,
      @JsonKey(name: "is_active", defaultValue: false) this.isActive});

  factory _$_CartLinesModel.fromJson(Map<String, dynamic> json) =>
      _$$_CartLinesModelFromJson(json);

  @override
  final double? price;
  @override
  final double? vat;
  @override
  final int? quantity;
  @override
  final String? image;
  @override
  final String? barcode;
  @override
  @JsonKey(name: "variant_id")
  final int? variantId;
  @override
  @JsonKey(name: "variant_code")
  final String? variantCode;
  @override
  @JsonKey(name: "inventory_id")
  final String? inventoryId;
  @override
  @JsonKey(name: "offer_details")
  final DiscountData? offerDetails;
  @override
  @JsonKey(name: "variant_name")
  final String? variantName;
  @override
  @JsonKey(name: "total_price")
  final double? totalPrice;
  @override
  @JsonKey(name: "need_approval", defaultValue: false)
  final bool? needApproval;
  @override
  @JsonKey(name: "delivery_slot_id")
  final int? deliverySlotId;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  final bool? isActive;

  @override
  String toString() {
    return 'CartLinesModel(price: $price, vat: $vat, quantity: $quantity, image: $image, barcode: $barcode, variantId: $variantId, variantCode: $variantCode, inventoryId: $inventoryId, offerDetails: $offerDetails, variantName: $variantName, totalPrice: $totalPrice, needApproval: $needApproval, deliverySlotId: $deliverySlotId, isActive: $isActive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartLinesModel &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.vat, vat) || other.vat == vat) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(other.variantId, variantId) ||
                other.variantId == variantId) &&
            (identical(other.variantCode, variantCode) ||
                other.variantCode == variantCode) &&
            (identical(other.inventoryId, inventoryId) ||
                other.inventoryId == inventoryId) &&
            (identical(other.offerDetails, offerDetails) ||
                other.offerDetails == offerDetails) &&
            (identical(other.variantName, variantName) ||
                other.variantName == variantName) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.needApproval, needApproval) ||
                other.needApproval == needApproval) &&
            (identical(other.deliverySlotId, deliverySlotId) ||
                other.deliverySlotId == deliverySlotId) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      price,
      vat,
      quantity,
      image,
      barcode,
      variantId,
      variantCode,
      inventoryId,
      offerDetails,
      variantName,
      totalPrice,
      needApproval,
      deliverySlotId,
      isActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartLinesModelCopyWith<_$_CartLinesModel> get copyWith =>
      __$$_CartLinesModelCopyWithImpl<_$_CartLinesModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartLinesModelToJson(
      this,
    );
  }
}

abstract class _CartLinesModel implements CartLinesModel {
  const factory _CartLinesModel(
      {final double? price,
      final double? vat,
      final int? quantity,
      final String? image,
      final String? barcode,
      @JsonKey(name: "variant_id") final int? variantId,
      @JsonKey(name: "variant_code") final String? variantCode,
      @JsonKey(name: "inventory_id") final String? inventoryId,
      @JsonKey(name: "offer_details") final DiscountData? offerDetails,
      @JsonKey(name: "variant_name") final String? variantName,
      @JsonKey(name: "total_price") final double? totalPrice,
      @JsonKey(name: "need_approval", defaultValue: false)
      final bool? needApproval,
      @JsonKey(name: "delivery_slot_id") final int? deliverySlotId,
      @JsonKey(name: "is_active", defaultValue: false)
      final bool? isActive}) = _$_CartLinesModel;

  factory _CartLinesModel.fromJson(Map<String, dynamic> json) =
      _$_CartLinesModel.fromJson;

  @override
  double? get price;
  @override
  double? get vat;
  @override
  int? get quantity;
  @override
  String? get image;
  @override
  String? get barcode;
  @override
  @JsonKey(name: "variant_id")
  int? get variantId;
  @override
  @JsonKey(name: "variant_code")
  String? get variantCode;
  @override
  @JsonKey(name: "inventory_id")
  String? get inventoryId;
  @override
  @JsonKey(name: "offer_details")
  DiscountData? get offerDetails;
  @override
  @JsonKey(name: "variant_name")
  String? get variantName;
  @override
  @JsonKey(name: "total_price")
  double? get totalPrice;
  @override
  @JsonKey(name: "need_approval", defaultValue: false)
  bool? get needApproval;
  @override
  @JsonKey(name: "delivery_slot_id")
  int? get deliverySlotId;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive;
  @override
  @JsonKey(ignore: true)
  _$$_CartLinesModelCopyWith<_$_CartLinesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

CartListModel _$CartListModelFromJson(Map<String, dynamic> json) {
  return _CartListModel.fromJson(json);
}

/// @nodoc
mixin _$CartListModel {
  double? get price => throw _privateConstructorUsedError;
  double? get vat => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get barcode => throw _privateConstructorUsedError;
  @JsonKey(name: "variant_id")
  int? get variantId => throw _privateConstructorUsedError;
  @JsonKey(name: "cart_code")
  String? get cartCode => throw _privateConstructorUsedError;
  @JsonKey(name: "variant_code")
  String? get variantCode => throw _privateConstructorUsedError;
  @JsonKey(name: "inventory_id")
  String? get inventoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_details")
  DiscountData? get offerDetails => throw _privateConstructorUsedError;
  @JsonKey(name: "variant_name")
  String? get variantName => throw _privateConstructorUsedError;
  @JsonKey(name: "delivery_slot_id")
  int? get deliverySlotID => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartListModelCopyWith<CartListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartListModelCopyWith<$Res> {
  factory $CartListModelCopyWith(
          CartListModel value, $Res Function(CartListModel) then) =
      _$CartListModelCopyWithImpl<$Res, CartListModel>;
  @useResult
  $Res call(
      {double? price,
      double? vat,
      int? quantity,
      int? id,
      String? image,
      String? barcode,
      @JsonKey(name: "variant_id") int? variantId,
      @JsonKey(name: "cart_code") String? cartCode,
      @JsonKey(name: "variant_code") String? variantCode,
      @JsonKey(name: "inventory_id") String? inventoryId,
      @JsonKey(name: "offer_details") DiscountData? offerDetails,
      @JsonKey(name: "variant_name") String? variantName,
      @JsonKey(name: "delivery_slot_id") int? deliverySlotID,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive});

  $DiscountDataCopyWith<$Res>? get offerDetails;
}

/// @nodoc
class _$CartListModelCopyWithImpl<$Res, $Val extends CartListModel>
    implements $CartListModelCopyWith<$Res> {
  _$CartListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = freezed,
    Object? vat = freezed,
    Object? quantity = freezed,
    Object? id = freezed,
    Object? image = freezed,
    Object? barcode = freezed,
    Object? variantId = freezed,
    Object? cartCode = freezed,
    Object? variantCode = freezed,
    Object? inventoryId = freezed,
    Object? offerDetails = freezed,
    Object? variantName = freezed,
    Object? deliverySlotID = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_value.copyWith(
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      variantId: freezed == variantId
          ? _value.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
              as int?,
      cartCode: freezed == cartCode
          ? _value.cartCode
          : cartCode // ignore: cast_nullable_to_non_nullable
              as String?,
      variantCode: freezed == variantCode
          ? _value.variantCode
          : variantCode // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      offerDetails: freezed == offerDetails
          ? _value.offerDetails
          : offerDetails // ignore: cast_nullable_to_non_nullable
              as DiscountData?,
      variantName: freezed == variantName
          ? _value.variantName
          : variantName // ignore: cast_nullable_to_non_nullable
              as String?,
      deliverySlotID: freezed == deliverySlotID
          ? _value.deliverySlotID
          : deliverySlotID // ignore: cast_nullable_to_non_nullable
              as int?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DiscountDataCopyWith<$Res>? get offerDetails {
    if (_value.offerDetails == null) {
      return null;
    }

    return $DiscountDataCopyWith<$Res>(_value.offerDetails!, (value) {
      return _then(_value.copyWith(offerDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CartListModelCopyWith<$Res>
    implements $CartListModelCopyWith<$Res> {
  factory _$$_CartListModelCopyWith(
          _$_CartListModel value, $Res Function(_$_CartListModel) then) =
      __$$_CartListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? price,
      double? vat,
      int? quantity,
      int? id,
      String? image,
      String? barcode,
      @JsonKey(name: "variant_id") int? variantId,
      @JsonKey(name: "cart_code") String? cartCode,
      @JsonKey(name: "variant_code") String? variantCode,
      @JsonKey(name: "inventory_id") String? inventoryId,
      @JsonKey(name: "offer_details") DiscountData? offerDetails,
      @JsonKey(name: "variant_name") String? variantName,
      @JsonKey(name: "delivery_slot_id") int? deliverySlotID,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive});

  @override
  $DiscountDataCopyWith<$Res>? get offerDetails;
}

/// @nodoc
class __$$_CartListModelCopyWithImpl<$Res>
    extends _$CartListModelCopyWithImpl<$Res, _$_CartListModel>
    implements _$$_CartListModelCopyWith<$Res> {
  __$$_CartListModelCopyWithImpl(
      _$_CartListModel _value, $Res Function(_$_CartListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = freezed,
    Object? vat = freezed,
    Object? quantity = freezed,
    Object? id = freezed,
    Object? image = freezed,
    Object? barcode = freezed,
    Object? variantId = freezed,
    Object? cartCode = freezed,
    Object? variantCode = freezed,
    Object? inventoryId = freezed,
    Object? offerDetails = freezed,
    Object? variantName = freezed,
    Object? deliverySlotID = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_$_CartListModel(
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      variantId: freezed == variantId
          ? _value.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
              as int?,
      cartCode: freezed == cartCode
          ? _value.cartCode
          : cartCode // ignore: cast_nullable_to_non_nullable
              as String?,
      variantCode: freezed == variantCode
          ? _value.variantCode
          : variantCode // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      offerDetails: freezed == offerDetails
          ? _value.offerDetails
          : offerDetails // ignore: cast_nullable_to_non_nullable
              as DiscountData?,
      variantName: freezed == variantName
          ? _value.variantName
          : variantName // ignore: cast_nullable_to_non_nullable
              as String?,
      deliverySlotID: freezed == deliverySlotID
          ? _value.deliverySlotID
          : deliverySlotID // ignore: cast_nullable_to_non_nullable
              as int?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CartListModel implements _CartListModel {
  const _$_CartListModel(
      {this.price,
      this.vat,
      this.quantity,
      this.id,
      this.image,
      this.barcode,
      @JsonKey(name: "variant_id") this.variantId,
      @JsonKey(name: "cart_code") this.cartCode,
      @JsonKey(name: "variant_code") this.variantCode,
      @JsonKey(name: "inventory_id") this.inventoryId,
      @JsonKey(name: "offer_details") this.offerDetails,
      @JsonKey(name: "variant_name") this.variantName,
      @JsonKey(name: "delivery_slot_id") this.deliverySlotID,
      @JsonKey(name: "is_active", defaultValue: false) this.isActive});

  factory _$_CartListModel.fromJson(Map<String, dynamic> json) =>
      _$$_CartListModelFromJson(json);

  @override
  final double? price;
  @override
  final double? vat;
  @override
  final int? quantity;
  @override
  final int? id;
  @override
  final String? image;
  @override
  final String? barcode;
  @override
  @JsonKey(name: "variant_id")
  final int? variantId;
  @override
  @JsonKey(name: "cart_code")
  final String? cartCode;
  @override
  @JsonKey(name: "variant_code")
  final String? variantCode;
  @override
  @JsonKey(name: "inventory_id")
  final String? inventoryId;
  @override
  @JsonKey(name: "offer_details")
  final DiscountData? offerDetails;
  @override
  @JsonKey(name: "variant_name")
  final String? variantName;
  @override
  @JsonKey(name: "delivery_slot_id")
  final int? deliverySlotID;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  final bool? isActive;

  @override
  String toString() {
    return 'CartListModel(price: $price, vat: $vat, quantity: $quantity, id: $id, image: $image, barcode: $barcode, variantId: $variantId, cartCode: $cartCode, variantCode: $variantCode, inventoryId: $inventoryId, offerDetails: $offerDetails, variantName: $variantName, deliverySlotID: $deliverySlotID, isActive: $isActive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartListModel &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.vat, vat) || other.vat == vat) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(other.variantId, variantId) ||
                other.variantId == variantId) &&
            (identical(other.cartCode, cartCode) ||
                other.cartCode == cartCode) &&
            (identical(other.variantCode, variantCode) ||
                other.variantCode == variantCode) &&
            (identical(other.inventoryId, inventoryId) ||
                other.inventoryId == inventoryId) &&
            (identical(other.offerDetails, offerDetails) ||
                other.offerDetails == offerDetails) &&
            (identical(other.variantName, variantName) ||
                other.variantName == variantName) &&
            (identical(other.deliverySlotID, deliverySlotID) ||
                other.deliverySlotID == deliverySlotID) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      price,
      vat,
      quantity,
      id,
      image,
      barcode,
      variantId,
      cartCode,
      variantCode,
      inventoryId,
      offerDetails,
      variantName,
      deliverySlotID,
      isActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartListModelCopyWith<_$_CartListModel> get copyWith =>
      __$$_CartListModelCopyWithImpl<_$_CartListModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartListModelToJson(
      this,
    );
  }
}

abstract class _CartListModel implements CartListModel {
  const factory _CartListModel(
      {final double? price,
      final double? vat,
      final int? quantity,
      final int? id,
      final String? image,
      final String? barcode,
      @JsonKey(name: "variant_id") final int? variantId,
      @JsonKey(name: "cart_code") final String? cartCode,
      @JsonKey(name: "variant_code") final String? variantCode,
      @JsonKey(name: "inventory_id") final String? inventoryId,
      @JsonKey(name: "offer_details") final DiscountData? offerDetails,
      @JsonKey(name: "variant_name") final String? variantName,
      @JsonKey(name: "delivery_slot_id") final int? deliverySlotID,
      @JsonKey(name: "is_active", defaultValue: false)
      final bool? isActive}) = _$_CartListModel;

  factory _CartListModel.fromJson(Map<String, dynamic> json) =
      _$_CartListModel.fromJson;

  @override
  double? get price;
  @override
  double? get vat;
  @override
  int? get quantity;
  @override
  int? get id;
  @override
  String? get image;
  @override
  String? get barcode;
  @override
  @JsonKey(name: "variant_id")
  int? get variantId;
  @override
  @JsonKey(name: "cart_code")
  String? get cartCode;
  @override
  @JsonKey(name: "variant_code")
  String? get variantCode;
  @override
  @JsonKey(name: "inventory_id")
  String? get inventoryId;
  @override
  @JsonKey(name: "offer_details")
  DiscountData? get offerDetails;
  @override
  @JsonKey(name: "variant_name")
  String? get variantName;
  @override
  @JsonKey(name: "delivery_slot_id")
  int? get deliverySlotID;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive;
  @override
  @JsonKey(ignore: true)
  _$$_CartListModelCopyWith<_$_CartListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderTypes _$OrderTypesFromJson(Map<String, dynamic> json) {
  return _OrderTypes.fromJson(json);
}

/// @nodoc
mixin _$OrderTypes {
  @JsonKey(name: "order_types")
  List<String>? get orderType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderTypesCopyWith<OrderTypes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderTypesCopyWith<$Res> {
  factory $OrderTypesCopyWith(
          OrderTypes value, $Res Function(OrderTypes) then) =
      _$OrderTypesCopyWithImpl<$Res, OrderTypes>;
  @useResult
  $Res call({@JsonKey(name: "order_types") List<String>? orderType});
}

/// @nodoc
class _$OrderTypesCopyWithImpl<$Res, $Val extends OrderTypes>
    implements $OrderTypesCopyWith<$Res> {
  _$OrderTypesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderType = freezed,
  }) {
    return _then(_value.copyWith(
      orderType: freezed == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrderTypesCopyWith<$Res>
    implements $OrderTypesCopyWith<$Res> {
  factory _$$_OrderTypesCopyWith(
          _$_OrderTypes value, $Res Function(_$_OrderTypes) then) =
      __$$_OrderTypesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "order_types") List<String>? orderType});
}

/// @nodoc
class __$$_OrderTypesCopyWithImpl<$Res>
    extends _$OrderTypesCopyWithImpl<$Res, _$_OrderTypes>
    implements _$$_OrderTypesCopyWith<$Res> {
  __$$_OrderTypesCopyWithImpl(
      _$_OrderTypes _value, $Res Function(_$_OrderTypes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderType = freezed,
  }) {
    return _then(_$_OrderTypes(
      orderType: freezed == orderType
          ? _value._orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderTypes implements _OrderTypes {
  const _$_OrderTypes(
      {@JsonKey(name: "order_types") final List<String>? orderType})
      : _orderType = orderType;

  factory _$_OrderTypes.fromJson(Map<String, dynamic> json) =>
      _$$_OrderTypesFromJson(json);

  final List<String>? _orderType;
  @override
  @JsonKey(name: "order_types")
  List<String>? get orderType {
    final value = _orderType;
    if (value == null) return null;
    if (_orderType is EqualUnmodifiableListView) return _orderType;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'OrderTypes(orderType: $orderType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderTypes &&
            const DeepCollectionEquality()
                .equals(other._orderType, _orderType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_orderType));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderTypesCopyWith<_$_OrderTypes> get copyWith =>
      __$$_OrderTypesCopyWithImpl<_$_OrderTypes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderTypesToJson(
      this,
    );
  }
}

abstract class _OrderTypes implements OrderTypes {
  const factory _OrderTypes(
          {@JsonKey(name: "order_types") final List<String>? orderType}) =
      _$_OrderTypes;

  factory _OrderTypes.fromJson(Map<String, dynamic> json) =
      _$_OrderTypes.fromJson;

  @override
  @JsonKey(name: "order_types")
  List<String>? get orderType;
  @override
  @JsonKey(ignore: true)
  _$$_OrderTypesCopyWith<_$_OrderTypes> get copyWith =>
      throw _privateConstructorUsedError;
}

AddressCart _$AddressCartFromJson(Map<String, dynamic> json) {
  return _AddressCart.fromJson(json);
}

/// @nodoc
mixin _$AddressCart {
  String? get state => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get area => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  @JsonKey(name: "building_number")
  String? get buildingNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressCartCopyWith<AddressCart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressCartCopyWith<$Res> {
  factory $AddressCartCopyWith(
          AddressCart value, $Res Function(AddressCart) then) =
      _$AddressCartCopyWithImpl<$Res, AddressCart>;
  @useResult
  $Res call(
      {String? state,
      String? country,
      String? area,
      String? location,
      @JsonKey(name: "building_number") String? buildingNumber});
}

/// @nodoc
class _$AddressCartCopyWithImpl<$Res, $Val extends AddressCart>
    implements $AddressCartCopyWith<$Res> {
  _$AddressCartCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = freezed,
    Object? country = freezed,
    Object? area = freezed,
    Object? location = freezed,
    Object? buildingNumber = freezed,
  }) {
    return _then(_value.copyWith(
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      area: freezed == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      buildingNumber: freezed == buildingNumber
          ? _value.buildingNumber
          : buildingNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddressCartCopyWith<$Res>
    implements $AddressCartCopyWith<$Res> {
  factory _$$_AddressCartCopyWith(
          _$_AddressCart value, $Res Function(_$_AddressCart) then) =
      __$$_AddressCartCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? state,
      String? country,
      String? area,
      String? location,
      @JsonKey(name: "building_number") String? buildingNumber});
}

/// @nodoc
class __$$_AddressCartCopyWithImpl<$Res>
    extends _$AddressCartCopyWithImpl<$Res, _$_AddressCart>
    implements _$$_AddressCartCopyWith<$Res> {
  __$$_AddressCartCopyWithImpl(
      _$_AddressCart _value, $Res Function(_$_AddressCart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = freezed,
    Object? country = freezed,
    Object? area = freezed,
    Object? location = freezed,
    Object? buildingNumber = freezed,
  }) {
    return _then(_$_AddressCart(
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      area: freezed == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      buildingNumber: freezed == buildingNumber
          ? _value.buildingNumber
          : buildingNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddressCart implements _AddressCart {
  const _$_AddressCart(
      {this.state,
      this.country,
      this.area,
      this.location,
      @JsonKey(name: "building_number") this.buildingNumber});

  factory _$_AddressCart.fromJson(Map<String, dynamic> json) =>
      _$$_AddressCartFromJson(json);

  @override
  final String? state;
  @override
  final String? country;
  @override
  final String? area;
  @override
  final String? location;
  @override
  @JsonKey(name: "building_number")
  final String? buildingNumber;

  @override
  String toString() {
    return 'AddressCart(state: $state, country: $country, area: $area, location: $location, buildingNumber: $buildingNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddressCart &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.buildingNumber, buildingNumber) ||
                other.buildingNumber == buildingNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, state, country, area, location, buildingNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddressCartCopyWith<_$_AddressCart> get copyWith =>
      __$$_AddressCartCopyWithImpl<_$_AddressCart>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddressCartToJson(
      this,
    );
  }
}

abstract class _AddressCart implements AddressCart {
  const factory _AddressCart(
          {final String? state,
          final String? country,
          final String? area,
          final String? location,
          @JsonKey(name: "building_number") final String? buildingNumber}) =
      _$_AddressCart;

  factory _AddressCart.fromJson(Map<String, dynamic> json) =
      _$_AddressCart.fromJson;

  @override
  String? get state;
  @override
  String? get country;
  @override
  String? get area;
  @override
  String? get location;
  @override
  @JsonKey(name: "building_number")
  String? get buildingNumber;
  @override
  @JsonKey(ignore: true)
  _$$_AddressCartCopyWith<_$_AddressCart> get copyWith =>
      throw _privateConstructorUsedError;
}
