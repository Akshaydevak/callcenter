// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'Read_Orders.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReadOrderCallCenter _$ReadOrderCallCenterFromJson(Map<String, dynamic> json) {
  return _ReadOrderCallCenter.fromJson(json);
}

/// @nodoc
mixin _$ReadOrderCallCenter {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "ordered_date")
  String? get orderdDate => throw _privateConstructorUsedError;
  @JsonKey(name: "ordered_time")
  String? get orderTime => throw _privateConstructorUsedError;
  @JsonKey(name: "total_line_count")
  double? get totalLineCount => throw _privateConstructorUsedError;
  @JsonKey(name: "lines")
  List<LinesCallcenter>? get linesCallcenter =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "order_lines")
  List<LinesCallcenter>? get patchOrderLines =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "order_code")
  String? get orderCode => throw _privateConstructorUsedError;
  @JsonKey(name: "order_type")
  String? get orderType => throw _privateConstructorUsedError;
  @JsonKey(name: "delivery_charge")
  double? get deliveryCharge => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_code")
  String? get customerCode => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_name")
  String? get customerName => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_mail_id")
  String? get customerMailId => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_trn_number")
  String? get customerTrn => throw _privateConstructorUsedError;
  @JsonKey(name: "shipping_address_id")
  int? get shippingId => throw _privateConstructorUsedError;
  @JsonKey(name: "billing_address_id")
  int? get billingId => throw _privateConstructorUsedError;
  @JsonKey(name: "created_by")
  String? get createdBy => throw _privateConstructorUsedError;
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
  @JsonKey(name: "selling_price")
  double? get sellingPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "order_satus")
  String? get orderStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_status")
  String? get paymentStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "invoice_status")
  String? get invoiceStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "notes")
  String? get notes => throw _privateConstructorUsedError;
  @JsonKey(name: "remarks")
  String? get remarks => throw _privateConstructorUsedError;
  @JsonKey(name: "delivery_address")
  String? get deliveryAddress => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_phone_number")
  String? get customerPhoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "delivery_address_full_data")
  DeliveryAddressModel? get deliveryAddressFullData =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "customer_group_code")
  String? get customerGroupCode => throw _privateConstructorUsedError;
  @JsonKey(name: "last_edited_at")
  String? get lastEditedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "channel_details_id")
  int? get channelDetailsId => throw _privateConstructorUsedError;
  @JsonKey(name: "channel_data")
  ChannelData? get channelData => throw _privateConstructorUsedError;
  @JsonKey(name: "need_approval", defaultValue: false)
  bool? get needApproval => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReadOrderCallCenterCopyWith<ReadOrderCallCenter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadOrderCallCenterCopyWith<$Res> {
  factory $ReadOrderCallCenterCopyWith(
          ReadOrderCallCenter value, $Res Function(ReadOrderCallCenter) then) =
      _$ReadOrderCallCenterCopyWithImpl<$Res, ReadOrderCallCenter>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "ordered_date") String? orderdDate,
      @JsonKey(name: "ordered_time") String? orderTime,
      @JsonKey(name: "total_line_count") double? totalLineCount,
      @JsonKey(name: "lines") List<LinesCallcenter>? linesCallcenter,
      @JsonKey(name: "order_lines") List<LinesCallcenter>? patchOrderLines,
      @JsonKey(name: "order_code") String? orderCode,
      @JsonKey(name: "order_type") String? orderType,
      @JsonKey(name: "delivery_charge") double? deliveryCharge,
      @JsonKey(name: "customer_code") String? customerCode,
      @JsonKey(name: "customer_name") String? customerName,
      @JsonKey(name: "customer_mail_id") String? customerMailId,
      @JsonKey(name: "customer_trn_number") String? customerTrn,
      @JsonKey(name: "shipping_address_id") int? shippingId,
      @JsonKey(name: "billing_address_id") int? billingId,
      @JsonKey(name: "created_by") String? createdBy,
      @JsonKey(name: "discount") double? discount,
      @JsonKey(name: "vatable_amount") double? vatableAmount,
      @JsonKey(name: "vat") double? vat,
      @JsonKey(name: "total") double? total,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "is_holded") bool? isHolded,
      @JsonKey(name: "selling_price") double? sellingPrice,
      @JsonKey(name: "order_satus") String? orderStatus,
      @JsonKey(name: "payment_status") String? paymentStatus,
      @JsonKey(name: "invoice_status") String? invoiceStatus,
      @JsonKey(name: "notes") String? notes,
      @JsonKey(name: "remarks") String? remarks,
      @JsonKey(name: "delivery_address") String? deliveryAddress,
      @JsonKey(name: "customer_phone_number") String? customerPhoneNumber,
      @JsonKey(name: "delivery_address_full_data")
      DeliveryAddressModel? deliveryAddressFullData,
      @JsonKey(name: "customer_group_code") String? customerGroupCode,
      @JsonKey(name: "last_edited_at") String? lastEditedAt,
      @JsonKey(name: "channel_details_id") int? channelDetailsId,
      @JsonKey(name: "channel_data") ChannelData? channelData,
      @JsonKey(name: "need_approval", defaultValue: false) bool? needApproval});

  $DeliveryAddressModelCopyWith<$Res>? get deliveryAddressFullData;
  $ChannelDataCopyWith<$Res>? get channelData;
}

/// @nodoc
class _$ReadOrderCallCenterCopyWithImpl<$Res, $Val extends ReadOrderCallCenter>
    implements $ReadOrderCallCenterCopyWith<$Res> {
  _$ReadOrderCallCenterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? orderdDate = freezed,
    Object? orderTime = freezed,
    Object? totalLineCount = freezed,
    Object? linesCallcenter = freezed,
    Object? patchOrderLines = freezed,
    Object? orderCode = freezed,
    Object? orderType = freezed,
    Object? deliveryCharge = freezed,
    Object? customerCode = freezed,
    Object? customerName = freezed,
    Object? customerMailId = freezed,
    Object? customerTrn = freezed,
    Object? shippingId = freezed,
    Object? billingId = freezed,
    Object? createdBy = freezed,
    Object? discount = freezed,
    Object? vatableAmount = freezed,
    Object? vat = freezed,
    Object? total = freezed,
    Object? unitCost = freezed,
    Object? isHolded = freezed,
    Object? sellingPrice = freezed,
    Object? orderStatus = freezed,
    Object? paymentStatus = freezed,
    Object? invoiceStatus = freezed,
    Object? notes = freezed,
    Object? remarks = freezed,
    Object? deliveryAddress = freezed,
    Object? customerPhoneNumber = freezed,
    Object? deliveryAddressFullData = freezed,
    Object? customerGroupCode = freezed,
    Object? lastEditedAt = freezed,
    Object? channelDetailsId = freezed,
    Object? channelData = freezed,
    Object? needApproval = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      orderdDate: freezed == orderdDate
          ? _value.orderdDate
          : orderdDate // ignore: cast_nullable_to_non_nullable
              as String?,
      orderTime: freezed == orderTime
          ? _value.orderTime
          : orderTime // ignore: cast_nullable_to_non_nullable
              as String?,
      totalLineCount: freezed == totalLineCount
          ? _value.totalLineCount
          : totalLineCount // ignore: cast_nullable_to_non_nullable
              as double?,
      linesCallcenter: freezed == linesCallcenter
          ? _value.linesCallcenter
          : linesCallcenter // ignore: cast_nullable_to_non_nullable
              as List<LinesCallcenter>?,
      patchOrderLines: freezed == patchOrderLines
          ? _value.patchOrderLines
          : patchOrderLines // ignore: cast_nullable_to_non_nullable
              as List<LinesCallcenter>?,
      orderCode: freezed == orderCode
          ? _value.orderCode
          : orderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      orderType: freezed == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryCharge: freezed == deliveryCharge
          ? _value.deliveryCharge
          : deliveryCharge // ignore: cast_nullable_to_non_nullable
              as double?,
      customerCode: freezed == customerCode
          ? _value.customerCode
          : customerCode // ignore: cast_nullable_to_non_nullable
              as String?,
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      customerMailId: freezed == customerMailId
          ? _value.customerMailId
          : customerMailId // ignore: cast_nullable_to_non_nullable
              as String?,
      customerTrn: freezed == customerTrn
          ? _value.customerTrn
          : customerTrn // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingId: freezed == shippingId
          ? _value.shippingId
          : shippingId // ignore: cast_nullable_to_non_nullable
              as int?,
      billingId: freezed == billingId
          ? _value.billingId
          : billingId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
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
      sellingPrice: freezed == sellingPrice
          ? _value.sellingPrice
          : sellingPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      orderStatus: freezed == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceStatus: freezed == invoiceStatus
          ? _value.invoiceStatus
          : invoiceStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      remarks: freezed == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryAddress: freezed == deliveryAddress
          ? _value.deliveryAddress
          : deliveryAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      customerPhoneNumber: freezed == customerPhoneNumber
          ? _value.customerPhoneNumber
          : customerPhoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryAddressFullData: freezed == deliveryAddressFullData
          ? _value.deliveryAddressFullData
          : deliveryAddressFullData // ignore: cast_nullable_to_non_nullable
              as DeliveryAddressModel?,
      customerGroupCode: freezed == customerGroupCode
          ? _value.customerGroupCode
          : customerGroupCode // ignore: cast_nullable_to_non_nullable
              as String?,
      lastEditedAt: freezed == lastEditedAt
          ? _value.lastEditedAt
          : lastEditedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      channelDetailsId: freezed == channelDetailsId
          ? _value.channelDetailsId
          : channelDetailsId // ignore: cast_nullable_to_non_nullable
              as int?,
      channelData: freezed == channelData
          ? _value.channelData
          : channelData // ignore: cast_nullable_to_non_nullable
              as ChannelData?,
      needApproval: freezed == needApproval
          ? _value.needApproval
          : needApproval // ignore: cast_nullable_to_non_nullable
              as bool?,
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

  @override
  @pragma('vm:prefer-inline')
  $ChannelDataCopyWith<$Res>? get channelData {
    if (_value.channelData == null) {
      return null;
    }

    return $ChannelDataCopyWith<$Res>(_value.channelData!, (value) {
      return _then(_value.copyWith(channelData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ReadOrderCallCenterCopyWith<$Res>
    implements $ReadOrderCallCenterCopyWith<$Res> {
  factory _$$_ReadOrderCallCenterCopyWith(_$_ReadOrderCallCenter value,
          $Res Function(_$_ReadOrderCallCenter) then) =
      __$$_ReadOrderCallCenterCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "ordered_date") String? orderdDate,
      @JsonKey(name: "ordered_time") String? orderTime,
      @JsonKey(name: "total_line_count") double? totalLineCount,
      @JsonKey(name: "lines") List<LinesCallcenter>? linesCallcenter,
      @JsonKey(name: "order_lines") List<LinesCallcenter>? patchOrderLines,
      @JsonKey(name: "order_code") String? orderCode,
      @JsonKey(name: "order_type") String? orderType,
      @JsonKey(name: "delivery_charge") double? deliveryCharge,
      @JsonKey(name: "customer_code") String? customerCode,
      @JsonKey(name: "customer_name") String? customerName,
      @JsonKey(name: "customer_mail_id") String? customerMailId,
      @JsonKey(name: "customer_trn_number") String? customerTrn,
      @JsonKey(name: "shipping_address_id") int? shippingId,
      @JsonKey(name: "billing_address_id") int? billingId,
      @JsonKey(name: "created_by") String? createdBy,
      @JsonKey(name: "discount") double? discount,
      @JsonKey(name: "vatable_amount") double? vatableAmount,
      @JsonKey(name: "vat") double? vat,
      @JsonKey(name: "total") double? total,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "is_holded") bool? isHolded,
      @JsonKey(name: "selling_price") double? sellingPrice,
      @JsonKey(name: "order_satus") String? orderStatus,
      @JsonKey(name: "payment_status") String? paymentStatus,
      @JsonKey(name: "invoice_status") String? invoiceStatus,
      @JsonKey(name: "notes") String? notes,
      @JsonKey(name: "remarks") String? remarks,
      @JsonKey(name: "delivery_address") String? deliveryAddress,
      @JsonKey(name: "customer_phone_number") String? customerPhoneNumber,
      @JsonKey(name: "delivery_address_full_data")
      DeliveryAddressModel? deliveryAddressFullData,
      @JsonKey(name: "customer_group_code") String? customerGroupCode,
      @JsonKey(name: "last_edited_at") String? lastEditedAt,
      @JsonKey(name: "channel_details_id") int? channelDetailsId,
      @JsonKey(name: "channel_data") ChannelData? channelData,
      @JsonKey(name: "need_approval", defaultValue: false) bool? needApproval});

  @override
  $DeliveryAddressModelCopyWith<$Res>? get deliveryAddressFullData;
  @override
  $ChannelDataCopyWith<$Res>? get channelData;
}

/// @nodoc
class __$$_ReadOrderCallCenterCopyWithImpl<$Res>
    extends _$ReadOrderCallCenterCopyWithImpl<$Res, _$_ReadOrderCallCenter>
    implements _$$_ReadOrderCallCenterCopyWith<$Res> {
  __$$_ReadOrderCallCenterCopyWithImpl(_$_ReadOrderCallCenter _value,
      $Res Function(_$_ReadOrderCallCenter) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? orderdDate = freezed,
    Object? orderTime = freezed,
    Object? totalLineCount = freezed,
    Object? linesCallcenter = freezed,
    Object? patchOrderLines = freezed,
    Object? orderCode = freezed,
    Object? orderType = freezed,
    Object? deliveryCharge = freezed,
    Object? customerCode = freezed,
    Object? customerName = freezed,
    Object? customerMailId = freezed,
    Object? customerTrn = freezed,
    Object? shippingId = freezed,
    Object? billingId = freezed,
    Object? createdBy = freezed,
    Object? discount = freezed,
    Object? vatableAmount = freezed,
    Object? vat = freezed,
    Object? total = freezed,
    Object? unitCost = freezed,
    Object? isHolded = freezed,
    Object? sellingPrice = freezed,
    Object? orderStatus = freezed,
    Object? paymentStatus = freezed,
    Object? invoiceStatus = freezed,
    Object? notes = freezed,
    Object? remarks = freezed,
    Object? deliveryAddress = freezed,
    Object? customerPhoneNumber = freezed,
    Object? deliveryAddressFullData = freezed,
    Object? customerGroupCode = freezed,
    Object? lastEditedAt = freezed,
    Object? channelDetailsId = freezed,
    Object? channelData = freezed,
    Object? needApproval = freezed,
  }) {
    return _then(_$_ReadOrderCallCenter(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      orderdDate: freezed == orderdDate
          ? _value.orderdDate
          : orderdDate // ignore: cast_nullable_to_non_nullable
              as String?,
      orderTime: freezed == orderTime
          ? _value.orderTime
          : orderTime // ignore: cast_nullable_to_non_nullable
              as String?,
      totalLineCount: freezed == totalLineCount
          ? _value.totalLineCount
          : totalLineCount // ignore: cast_nullable_to_non_nullable
              as double?,
      linesCallcenter: freezed == linesCallcenter
          ? _value._linesCallcenter
          : linesCallcenter // ignore: cast_nullable_to_non_nullable
              as List<LinesCallcenter>?,
      patchOrderLines: freezed == patchOrderLines
          ? _value._patchOrderLines
          : patchOrderLines // ignore: cast_nullable_to_non_nullable
              as List<LinesCallcenter>?,
      orderCode: freezed == orderCode
          ? _value.orderCode
          : orderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      orderType: freezed == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryCharge: freezed == deliveryCharge
          ? _value.deliveryCharge
          : deliveryCharge // ignore: cast_nullable_to_non_nullable
              as double?,
      customerCode: freezed == customerCode
          ? _value.customerCode
          : customerCode // ignore: cast_nullable_to_non_nullable
              as String?,
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      customerMailId: freezed == customerMailId
          ? _value.customerMailId
          : customerMailId // ignore: cast_nullable_to_non_nullable
              as String?,
      customerTrn: freezed == customerTrn
          ? _value.customerTrn
          : customerTrn // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingId: freezed == shippingId
          ? _value.shippingId
          : shippingId // ignore: cast_nullable_to_non_nullable
              as int?,
      billingId: freezed == billingId
          ? _value.billingId
          : billingId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
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
      sellingPrice: freezed == sellingPrice
          ? _value.sellingPrice
          : sellingPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      orderStatus: freezed == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceStatus: freezed == invoiceStatus
          ? _value.invoiceStatus
          : invoiceStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      remarks: freezed == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryAddress: freezed == deliveryAddress
          ? _value.deliveryAddress
          : deliveryAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      customerPhoneNumber: freezed == customerPhoneNumber
          ? _value.customerPhoneNumber
          : customerPhoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryAddressFullData: freezed == deliveryAddressFullData
          ? _value.deliveryAddressFullData
          : deliveryAddressFullData // ignore: cast_nullable_to_non_nullable
              as DeliveryAddressModel?,
      customerGroupCode: freezed == customerGroupCode
          ? _value.customerGroupCode
          : customerGroupCode // ignore: cast_nullable_to_non_nullable
              as String?,
      lastEditedAt: freezed == lastEditedAt
          ? _value.lastEditedAt
          : lastEditedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      channelDetailsId: freezed == channelDetailsId
          ? _value.channelDetailsId
          : channelDetailsId // ignore: cast_nullable_to_non_nullable
              as int?,
      channelData: freezed == channelData
          ? _value.channelData
          : channelData // ignore: cast_nullable_to_non_nullable
              as ChannelData?,
      needApproval: freezed == needApproval
          ? _value.needApproval
          : needApproval // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReadOrderCallCenter implements _ReadOrderCallCenter {
  const _$_ReadOrderCallCenter(
      {this.id,
      @JsonKey(name: "ordered_date") this.orderdDate,
      @JsonKey(name: "ordered_time") this.orderTime,
      @JsonKey(name: "total_line_count") this.totalLineCount,
      @JsonKey(name: "lines") final List<LinesCallcenter>? linesCallcenter,
      @JsonKey(name: "order_lines")
      final List<LinesCallcenter>? patchOrderLines,
      @JsonKey(name: "order_code") this.orderCode,
      @JsonKey(name: "order_type") this.orderType,
      @JsonKey(name: "delivery_charge") this.deliveryCharge,
      @JsonKey(name: "customer_code") this.customerCode,
      @JsonKey(name: "customer_name") this.customerName,
      @JsonKey(name: "customer_mail_id") this.customerMailId,
      @JsonKey(name: "customer_trn_number") this.customerTrn,
      @JsonKey(name: "shipping_address_id") this.shippingId,
      @JsonKey(name: "billing_address_id") this.billingId,
      @JsonKey(name: "created_by") this.createdBy,
      @JsonKey(name: "discount") this.discount,
      @JsonKey(name: "vatable_amount") this.vatableAmount,
      @JsonKey(name: "vat") this.vat,
      @JsonKey(name: "total") this.total,
      @JsonKey(name: "unit_cost") this.unitCost,
      @JsonKey(name: "is_holded") this.isHolded,
      @JsonKey(name: "selling_price") this.sellingPrice,
      @JsonKey(name: "order_satus") this.orderStatus,
      @JsonKey(name: "payment_status") this.paymentStatus,
      @JsonKey(name: "invoice_status") this.invoiceStatus,
      @JsonKey(name: "notes") this.notes,
      @JsonKey(name: "remarks") this.remarks,
      @JsonKey(name: "delivery_address") this.deliveryAddress,
      @JsonKey(name: "customer_phone_number") this.customerPhoneNumber,
      @JsonKey(name: "delivery_address_full_data") this.deliveryAddressFullData,
      @JsonKey(name: "customer_group_code") this.customerGroupCode,
      @JsonKey(name: "last_edited_at") this.lastEditedAt,
      @JsonKey(name: "channel_details_id") this.channelDetailsId,
      @JsonKey(name: "channel_data") this.channelData,
      @JsonKey(name: "need_approval", defaultValue: false) this.needApproval})
      : _linesCallcenter = linesCallcenter,
        _patchOrderLines = patchOrderLines;

  factory _$_ReadOrderCallCenter.fromJson(Map<String, dynamic> json) =>
      _$$_ReadOrderCallCenterFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: "ordered_date")
  final String? orderdDate;
  @override
  @JsonKey(name: "ordered_time")
  final String? orderTime;
  @override
  @JsonKey(name: "total_line_count")
  final double? totalLineCount;
  final List<LinesCallcenter>? _linesCallcenter;
  @override
  @JsonKey(name: "lines")
  List<LinesCallcenter>? get linesCallcenter {
    final value = _linesCallcenter;
    if (value == null) return null;
    if (_linesCallcenter is EqualUnmodifiableListView) return _linesCallcenter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<LinesCallcenter>? _patchOrderLines;
  @override
  @JsonKey(name: "order_lines")
  List<LinesCallcenter>? get patchOrderLines {
    final value = _patchOrderLines;
    if (value == null) return null;
    if (_patchOrderLines is EqualUnmodifiableListView) return _patchOrderLines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "order_code")
  final String? orderCode;
  @override
  @JsonKey(name: "order_type")
  final String? orderType;
  @override
  @JsonKey(name: "delivery_charge")
  final double? deliveryCharge;
  @override
  @JsonKey(name: "customer_code")
  final String? customerCode;
  @override
  @JsonKey(name: "customer_name")
  final String? customerName;
  @override
  @JsonKey(name: "customer_mail_id")
  final String? customerMailId;
  @override
  @JsonKey(name: "customer_trn_number")
  final String? customerTrn;
  @override
  @JsonKey(name: "shipping_address_id")
  final int? shippingId;
  @override
  @JsonKey(name: "billing_address_id")
  final int? billingId;
  @override
  @JsonKey(name: "created_by")
  final String? createdBy;
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
  @JsonKey(name: "selling_price")
  final double? sellingPrice;
  @override
  @JsonKey(name: "order_satus")
  final String? orderStatus;
  @override
  @JsonKey(name: "payment_status")
  final String? paymentStatus;
  @override
  @JsonKey(name: "invoice_status")
  final String? invoiceStatus;
  @override
  @JsonKey(name: "notes")
  final String? notes;
  @override
  @JsonKey(name: "remarks")
  final String? remarks;
  @override
  @JsonKey(name: "delivery_address")
  final String? deliveryAddress;
  @override
  @JsonKey(name: "customer_phone_number")
  final String? customerPhoneNumber;
  @override
  @JsonKey(name: "delivery_address_full_data")
  final DeliveryAddressModel? deliveryAddressFullData;
  @override
  @JsonKey(name: "customer_group_code")
  final String? customerGroupCode;
  @override
  @JsonKey(name: "last_edited_at")
  final String? lastEditedAt;
  @override
  @JsonKey(name: "channel_details_id")
  final int? channelDetailsId;
  @override
  @JsonKey(name: "channel_data")
  final ChannelData? channelData;
  @override
  @JsonKey(name: "need_approval", defaultValue: false)
  final bool? needApproval;

  @override
  String toString() {
    return 'ReadOrderCallCenter(id: $id, orderdDate: $orderdDate, orderTime: $orderTime, totalLineCount: $totalLineCount, linesCallcenter: $linesCallcenter, patchOrderLines: $patchOrderLines, orderCode: $orderCode, orderType: $orderType, deliveryCharge: $deliveryCharge, customerCode: $customerCode, customerName: $customerName, customerMailId: $customerMailId, customerTrn: $customerTrn, shippingId: $shippingId, billingId: $billingId, createdBy: $createdBy, discount: $discount, vatableAmount: $vatableAmount, vat: $vat, total: $total, unitCost: $unitCost, isHolded: $isHolded, sellingPrice: $sellingPrice, orderStatus: $orderStatus, paymentStatus: $paymentStatus, invoiceStatus: $invoiceStatus, notes: $notes, remarks: $remarks, deliveryAddress: $deliveryAddress, customerPhoneNumber: $customerPhoneNumber, deliveryAddressFullData: $deliveryAddressFullData, customerGroupCode: $customerGroupCode, lastEditedAt: $lastEditedAt, channelDetailsId: $channelDetailsId, channelData: $channelData, needApproval: $needApproval)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReadOrderCallCenter &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.orderdDate, orderdDate) ||
                other.orderdDate == orderdDate) &&
            (identical(other.orderTime, orderTime) ||
                other.orderTime == orderTime) &&
            (identical(other.totalLineCount, totalLineCount) ||
                other.totalLineCount == totalLineCount) &&
            const DeepCollectionEquality()
                .equals(other._linesCallcenter, _linesCallcenter) &&
            const DeepCollectionEquality()
                .equals(other._patchOrderLines, _patchOrderLines) &&
            (identical(other.orderCode, orderCode) ||
                other.orderCode == orderCode) &&
            (identical(other.orderType, orderType) ||
                other.orderType == orderType) &&
            (identical(other.deliveryCharge, deliveryCharge) ||
                other.deliveryCharge == deliveryCharge) &&
            (identical(other.customerCode, customerCode) ||
                other.customerCode == customerCode) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.customerMailId, customerMailId) ||
                other.customerMailId == customerMailId) &&
            (identical(other.customerTrn, customerTrn) ||
                other.customerTrn == customerTrn) &&
            (identical(other.shippingId, shippingId) ||
                other.shippingId == shippingId) &&
            (identical(other.billingId, billingId) ||
                other.billingId == billingId) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
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
            (identical(other.sellingPrice, sellingPrice) ||
                other.sellingPrice == sellingPrice) &&
            (identical(other.orderStatus, orderStatus) ||
                other.orderStatus == orderStatus) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(other.invoiceStatus, invoiceStatus) ||
                other.invoiceStatus == invoiceStatus) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.remarks, remarks) || other.remarks == remarks) &&
            (identical(other.deliveryAddress, deliveryAddress) ||
                other.deliveryAddress == deliveryAddress) &&
            (identical(other.customerPhoneNumber, customerPhoneNumber) ||
                other.customerPhoneNumber == customerPhoneNumber) &&
            (identical(
                    other.deliveryAddressFullData, deliveryAddressFullData) ||
                other.deliveryAddressFullData == deliveryAddressFullData) &&
            (identical(other.customerGroupCode, customerGroupCode) ||
                other.customerGroupCode == customerGroupCode) &&
            (identical(other.lastEditedAt, lastEditedAt) ||
                other.lastEditedAt == lastEditedAt) &&
            (identical(other.channelDetailsId, channelDetailsId) ||
                other.channelDetailsId == channelDetailsId) &&
            (identical(other.channelData, channelData) ||
                other.channelData == channelData) &&
            (identical(other.needApproval, needApproval) ||
                other.needApproval == needApproval));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        orderdDate,
        orderTime,
        totalLineCount,
        const DeepCollectionEquality().hash(_linesCallcenter),
        const DeepCollectionEquality().hash(_patchOrderLines),
        orderCode,
        orderType,
        deliveryCharge,
        customerCode,
        customerName,
        customerMailId,
        customerTrn,
        shippingId,
        billingId,
        createdBy,
        discount,
        vatableAmount,
        vat,
        total,
        unitCost,
        isHolded,
        sellingPrice,
        orderStatus,
        paymentStatus,
        invoiceStatus,
        notes,
        remarks,
        deliveryAddress,
        customerPhoneNumber,
        deliveryAddressFullData,
        customerGroupCode,
        lastEditedAt,
        channelDetailsId,
        channelData,
        needApproval
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReadOrderCallCenterCopyWith<_$_ReadOrderCallCenter> get copyWith =>
      __$$_ReadOrderCallCenterCopyWithImpl<_$_ReadOrderCallCenter>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReadOrderCallCenterToJson(
      this,
    );
  }
}

abstract class _ReadOrderCallCenter implements ReadOrderCallCenter {
  const factory _ReadOrderCallCenter(
      {final int? id,
      @JsonKey(name: "ordered_date") final String? orderdDate,
      @JsonKey(name: "ordered_time") final String? orderTime,
      @JsonKey(name: "total_line_count") final double? totalLineCount,
      @JsonKey(name: "lines") final List<LinesCallcenter>? linesCallcenter,
      @JsonKey(name: "order_lines")
      final List<LinesCallcenter>? patchOrderLines,
      @JsonKey(name: "order_code") final String? orderCode,
      @JsonKey(name: "order_type") final String? orderType,
      @JsonKey(name: "delivery_charge") final double? deliveryCharge,
      @JsonKey(name: "customer_code") final String? customerCode,
      @JsonKey(name: "customer_name") final String? customerName,
      @JsonKey(name: "customer_mail_id") final String? customerMailId,
      @JsonKey(name: "customer_trn_number") final String? customerTrn,
      @JsonKey(name: "shipping_address_id") final int? shippingId,
      @JsonKey(name: "billing_address_id") final int? billingId,
      @JsonKey(name: "created_by") final String? createdBy,
      @JsonKey(name: "discount") final double? discount,
      @JsonKey(name: "vatable_amount") final double? vatableAmount,
      @JsonKey(name: "vat") final double? vat,
      @JsonKey(name: "total") final double? total,
      @JsonKey(name: "unit_cost") final double? unitCost,
      @JsonKey(name: "is_holded") final bool? isHolded,
      @JsonKey(name: "selling_price") final double? sellingPrice,
      @JsonKey(name: "order_satus") final String? orderStatus,
      @JsonKey(name: "payment_status") final String? paymentStatus,
      @JsonKey(name: "invoice_status") final String? invoiceStatus,
      @JsonKey(name: "notes") final String? notes,
      @JsonKey(name: "remarks") final String? remarks,
      @JsonKey(name: "delivery_address") final String? deliveryAddress,
      @JsonKey(name: "customer_phone_number") final String? customerPhoneNumber,
      @JsonKey(name: "delivery_address_full_data")
      final DeliveryAddressModel? deliveryAddressFullData,
      @JsonKey(name: "customer_group_code") final String? customerGroupCode,
      @JsonKey(name: "last_edited_at") final String? lastEditedAt,
      @JsonKey(name: "channel_details_id") final int? channelDetailsId,
      @JsonKey(name: "channel_data") final ChannelData? channelData,
      @JsonKey(name: "need_approval", defaultValue: false)
      final bool? needApproval}) = _$_ReadOrderCallCenter;

  factory _ReadOrderCallCenter.fromJson(Map<String, dynamic> json) =
      _$_ReadOrderCallCenter.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: "ordered_date")
  String? get orderdDate;
  @override
  @JsonKey(name: "ordered_time")
  String? get orderTime;
  @override
  @JsonKey(name: "total_line_count")
  double? get totalLineCount;
  @override
  @JsonKey(name: "lines")
  List<LinesCallcenter>? get linesCallcenter;
  @override
  @JsonKey(name: "order_lines")
  List<LinesCallcenter>? get patchOrderLines;
  @override
  @JsonKey(name: "order_code")
  String? get orderCode;
  @override
  @JsonKey(name: "order_type")
  String? get orderType;
  @override
  @JsonKey(name: "delivery_charge")
  double? get deliveryCharge;
  @override
  @JsonKey(name: "customer_code")
  String? get customerCode;
  @override
  @JsonKey(name: "customer_name")
  String? get customerName;
  @override
  @JsonKey(name: "customer_mail_id")
  String? get customerMailId;
  @override
  @JsonKey(name: "customer_trn_number")
  String? get customerTrn;
  @override
  @JsonKey(name: "shipping_address_id")
  int? get shippingId;
  @override
  @JsonKey(name: "billing_address_id")
  int? get billingId;
  @override
  @JsonKey(name: "created_by")
  String? get createdBy;
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
  @JsonKey(name: "selling_price")
  double? get sellingPrice;
  @override
  @JsonKey(name: "order_satus")
  String? get orderStatus;
  @override
  @JsonKey(name: "payment_status")
  String? get paymentStatus;
  @override
  @JsonKey(name: "invoice_status")
  String? get invoiceStatus;
  @override
  @JsonKey(name: "notes")
  String? get notes;
  @override
  @JsonKey(name: "remarks")
  String? get remarks;
  @override
  @JsonKey(name: "delivery_address")
  String? get deliveryAddress;
  @override
  @JsonKey(name: "customer_phone_number")
  String? get customerPhoneNumber;
  @override
  @JsonKey(name: "delivery_address_full_data")
  DeliveryAddressModel? get deliveryAddressFullData;
  @override
  @JsonKey(name: "customer_group_code")
  String? get customerGroupCode;
  @override
  @JsonKey(name: "last_edited_at")
  String? get lastEditedAt;
  @override
  @JsonKey(name: "channel_details_id")
  int? get channelDetailsId;
  @override
  @JsonKey(name: "channel_data")
  ChannelData? get channelData;
  @override
  @JsonKey(name: "need_approval", defaultValue: false)
  bool? get needApproval;
  @override
  @JsonKey(ignore: true)
  _$$_ReadOrderCallCenterCopyWith<_$_ReadOrderCallCenter> get copyWith =>
      throw _privateConstructorUsedError;
}

ChannelData _$ChannelDataFromJson(Map<String, dynamic> json) {
  return _ChannelData.fromJson(json);
}

/// @nodoc
mixin _$ChannelData {
  @JsonKey(name: "channel_code")
  String? get channelCode => throw _privateConstructorUsedError;
  @JsonKey(name: "channel_id")
  int? get channelId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChannelDataCopyWith<ChannelData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelDataCopyWith<$Res> {
  factory $ChannelDataCopyWith(
          ChannelData value, $Res Function(ChannelData) then) =
      _$ChannelDataCopyWithImpl<$Res, ChannelData>;
  @useResult
  $Res call(
      {@JsonKey(name: "channel_code") String? channelCode,
      @JsonKey(name: "channel_id") int? channelId});
}

/// @nodoc
class _$ChannelDataCopyWithImpl<$Res, $Val extends ChannelData>
    implements $ChannelDataCopyWith<$Res> {
  _$ChannelDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channelCode = freezed,
    Object? channelId = freezed,
  }) {
    return _then(_value.copyWith(
      channelCode: freezed == channelCode
          ? _value.channelCode
          : channelCode // ignore: cast_nullable_to_non_nullable
              as String?,
      channelId: freezed == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChannelDataCopyWith<$Res>
    implements $ChannelDataCopyWith<$Res> {
  factory _$$_ChannelDataCopyWith(
          _$_ChannelData value, $Res Function(_$_ChannelData) then) =
      __$$_ChannelDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "channel_code") String? channelCode,
      @JsonKey(name: "channel_id") int? channelId});
}

/// @nodoc
class __$$_ChannelDataCopyWithImpl<$Res>
    extends _$ChannelDataCopyWithImpl<$Res, _$_ChannelData>
    implements _$$_ChannelDataCopyWith<$Res> {
  __$$_ChannelDataCopyWithImpl(
      _$_ChannelData _value, $Res Function(_$_ChannelData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channelCode = freezed,
    Object? channelId = freezed,
  }) {
    return _then(_$_ChannelData(
      channelCode: freezed == channelCode
          ? _value.channelCode
          : channelCode // ignore: cast_nullable_to_non_nullable
              as String?,
      channelId: freezed == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChannelData implements _ChannelData {
  const _$_ChannelData(
      {@JsonKey(name: "channel_code") this.channelCode,
      @JsonKey(name: "channel_id") this.channelId});

  factory _$_ChannelData.fromJson(Map<String, dynamic> json) =>
      _$$_ChannelDataFromJson(json);

  @override
  @JsonKey(name: "channel_code")
  final String? channelCode;
  @override
  @JsonKey(name: "channel_id")
  final int? channelId;

  @override
  String toString() {
    return 'ChannelData(channelCode: $channelCode, channelId: $channelId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChannelData &&
            (identical(other.channelCode, channelCode) ||
                other.channelCode == channelCode) &&
            (identical(other.channelId, channelId) ||
                other.channelId == channelId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, channelCode, channelId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChannelDataCopyWith<_$_ChannelData> get copyWith =>
      __$$_ChannelDataCopyWithImpl<_$_ChannelData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChannelDataToJson(
      this,
    );
  }
}

abstract class _ChannelData implements ChannelData {
  const factory _ChannelData(
      {@JsonKey(name: "channel_code") final String? channelCode,
      @JsonKey(name: "channel_id") final int? channelId}) = _$_ChannelData;

  factory _ChannelData.fromJson(Map<String, dynamic> json) =
      _$_ChannelData.fromJson;

  @override
  @JsonKey(name: "channel_code")
  String? get channelCode;
  @override
  @JsonKey(name: "channel_id")
  int? get channelId;
  @override
  @JsonKey(ignore: true)
  _$$_ChannelDataCopyWith<_$_ChannelData> get copyWith =>
      throw _privateConstructorUsedError;
}

LinesCallcenter _$LinesCallcenterFromJson(Map<String, dynamic> json) {
  return _LinesCallcenter.fromJson(json);
}

/// @nodoc
mixin _$LinesCallcenter {
  int? get id => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: "line_code")
  String? get lineCode => throw _privateConstructorUsedError;
  @JsonKey(name: "variant_id")
  int? get variantId => throw _privateConstructorUsedError;
  @JsonKey(name: "variant_code")
  String? get variantCode => throw _privateConstructorUsedError;
  @JsonKey(name: "variant_name")
  String? get variantName => throw _privateConstructorUsedError;
  @JsonKey(name: "image1")
  String? get image1 => throw _privateConstructorUsedError;
  @JsonKey(name: "barcode")
  String? get barcode => throw _privateConstructorUsedError;
  @JsonKey(name: "uom_id")
  int? get uomId => throw _privateConstructorUsedError;
  @JsonKey(name: "uom_name")
  String? get uomName => throw _privateConstructorUsedError;
  @JsonKey(name: "actual_cost")
  double? get actualCost => throw _privateConstructorUsedError;
  @JsonKey(name: "selling_price")
  double? get sellingPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "quantity")
  int? get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: "old_quantity")
  int? get oldQty => throw _privateConstructorUsedError;
  @JsonKey(name: "unit_cost")
  double? get unitcost => throw _privateConstructorUsedError;
  @JsonKey(name: "reason_of_approval_reject")
  String? get reasonOfApprovalReject => throw _privateConstructorUsedError;
  @JsonKey(name: "discount_based_on")
  String? get discountBasedOn => throw _privateConstructorUsedError;
  @JsonKey(name: "discount")
  double? get discount => throw _privateConstructorUsedError;
  @JsonKey(name: "amount")
  double? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: "vat")
  double? get vat => throw _privateConstructorUsedError;
  @JsonKey(name: "vatable_amount")
  double? get vatableAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "total_amount")
  double? get totalAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "warranty_price")
  double? get warrantyPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "warranty_id")
  int? get warrantyId => throw _privateConstructorUsedError;
  @JsonKey(name: "shipping_address_id")
  int? get shippingId => throw _privateConstructorUsedError;
  @JsonKey(name: "return_type")
  String? get returnType => throw _privateConstructorUsedError;
  @JsonKey(name: "hub_code")
  String? get hubCode => throw _privateConstructorUsedError;
  @JsonKey(name: "hub_Name")
  String? get hubName => throw _privateConstructorUsedError;
  @JsonKey(name: "return_time")
  double? get returnTime => throw _privateConstructorUsedError;
  @JsonKey(name: "is_invoiced")
  bool? get isInvoiced => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "last_edited_at")
  String? get lastEditedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "approval_status")
  String? get approvalStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "order_id")
  int? get orderId => throw _privateConstructorUsedError;
  @JsonKey(name: "delivery_slot_id")
  int? get deliverySlotId => throw _privateConstructorUsedError;
  @JsonKey(name: "delivery_charge")
  double? get deliveryCharge => throw _privateConstructorUsedError;
  @JsonKey(name: "need_approval", defaultValue: false)
  bool? get needApproval => throw _privateConstructorUsedError;
  @JsonKey(name: "is_approved", defaultValue: false)
  bool? get isApproved => throw _privateConstructorUsedError;
  @JsonKey(name: "is_Check", defaultValue: false)
  bool? get isCheck => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LinesCallcenterCopyWith<LinesCallcenter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinesCallcenterCopyWith<$Res> {
  factory $LinesCallcenterCopyWith(
          LinesCallcenter value, $Res Function(LinesCallcenter) then) =
      _$LinesCallcenterCopyWithImpl<$Res, LinesCallcenter>;
  @useResult
  $Res call(
      {int? id,
      String? image,
      @JsonKey(name: "line_code") String? lineCode,
      @JsonKey(name: "variant_id") int? variantId,
      @JsonKey(name: "variant_code") String? variantCode,
      @JsonKey(name: "variant_name") String? variantName,
      @JsonKey(name: "image1") String? image1,
      @JsonKey(name: "barcode") String? barcode,
      @JsonKey(name: "uom_id") int? uomId,
      @JsonKey(name: "uom_name") String? uomName,
      @JsonKey(name: "actual_cost") double? actualCost,
      @JsonKey(name: "selling_price") double? sellingPrice,
      @JsonKey(name: "quantity") int? quantity,
      @JsonKey(name: "old_quantity") int? oldQty,
      @JsonKey(name: "unit_cost") double? unitcost,
      @JsonKey(name: "reason_of_approval_reject")
      String? reasonOfApprovalReject,
      @JsonKey(name: "discount_based_on") String? discountBasedOn,
      @JsonKey(name: "discount") double? discount,
      @JsonKey(name: "amount") double? amount,
      @JsonKey(name: "vat") double? vat,
      @JsonKey(name: "vatable_amount") double? vatableAmount,
      @JsonKey(name: "total_amount") double? totalAmount,
      @JsonKey(name: "warranty_price") double? warrantyPrice,
      @JsonKey(name: "warranty_id") int? warrantyId,
      @JsonKey(name: "shipping_address_id") int? shippingId,
      @JsonKey(name: "return_type") String? returnType,
      @JsonKey(name: "hub_code") String? hubCode,
      @JsonKey(name: "hub_Name") String? hubName,
      @JsonKey(name: "return_time") double? returnTime,
      @JsonKey(name: "is_invoiced") bool? isInvoiced,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive,
      @JsonKey(name: "last_edited_at") String? lastEditedAt,
      @JsonKey(name: "approval_status") String? approvalStatus,
      @JsonKey(name: "order_id") int? orderId,
      @JsonKey(name: "delivery_slot_id") int? deliverySlotId,
      @JsonKey(name: "delivery_charge") double? deliveryCharge,
      @JsonKey(name: "need_approval", defaultValue: false) bool? needApproval,
      @JsonKey(name: "is_approved", defaultValue: false) bool? isApproved,
      @JsonKey(name: "is_Check", defaultValue: false) bool? isCheck});
}

/// @nodoc
class _$LinesCallcenterCopyWithImpl<$Res, $Val extends LinesCallcenter>
    implements $LinesCallcenterCopyWith<$Res> {
  _$LinesCallcenterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? lineCode = freezed,
    Object? variantId = freezed,
    Object? variantCode = freezed,
    Object? variantName = freezed,
    Object? image1 = freezed,
    Object? barcode = freezed,
    Object? uomId = freezed,
    Object? uomName = freezed,
    Object? actualCost = freezed,
    Object? sellingPrice = freezed,
    Object? quantity = freezed,
    Object? oldQty = freezed,
    Object? unitcost = freezed,
    Object? reasonOfApprovalReject = freezed,
    Object? discountBasedOn = freezed,
    Object? discount = freezed,
    Object? amount = freezed,
    Object? vat = freezed,
    Object? vatableAmount = freezed,
    Object? totalAmount = freezed,
    Object? warrantyPrice = freezed,
    Object? warrantyId = freezed,
    Object? shippingId = freezed,
    Object? returnType = freezed,
    Object? hubCode = freezed,
    Object? hubName = freezed,
    Object? returnTime = freezed,
    Object? isInvoiced = freezed,
    Object? isActive = freezed,
    Object? lastEditedAt = freezed,
    Object? approvalStatus = freezed,
    Object? orderId = freezed,
    Object? deliverySlotId = freezed,
    Object? deliveryCharge = freezed,
    Object? needApproval = freezed,
    Object? isApproved = freezed,
    Object? isCheck = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      lineCode: freezed == lineCode
          ? _value.lineCode
          : lineCode // ignore: cast_nullable_to_non_nullable
              as String?,
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
      image1: freezed == image1
          ? _value.image1
          : image1 // ignore: cast_nullable_to_non_nullable
              as String?,
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
      actualCost: freezed == actualCost
          ? _value.actualCost
          : actualCost // ignore: cast_nullable_to_non_nullable
              as double?,
      sellingPrice: freezed == sellingPrice
          ? _value.sellingPrice
          : sellingPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      oldQty: freezed == oldQty
          ? _value.oldQty
          : oldQty // ignore: cast_nullable_to_non_nullable
              as int?,
      unitcost: freezed == unitcost
          ? _value.unitcost
          : unitcost // ignore: cast_nullable_to_non_nullable
              as double?,
      reasonOfApprovalReject: freezed == reasonOfApprovalReject
          ? _value.reasonOfApprovalReject
          : reasonOfApprovalReject // ignore: cast_nullable_to_non_nullable
              as String?,
      discountBasedOn: freezed == discountBasedOn
          ? _value.discountBasedOn
          : discountBasedOn // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      vatableAmount: freezed == vatableAmount
          ? _value.vatableAmount
          : vatableAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      totalAmount: freezed == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      warrantyPrice: freezed == warrantyPrice
          ? _value.warrantyPrice
          : warrantyPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      warrantyId: freezed == warrantyId
          ? _value.warrantyId
          : warrantyId // ignore: cast_nullable_to_non_nullable
              as int?,
      shippingId: freezed == shippingId
          ? _value.shippingId
          : shippingId // ignore: cast_nullable_to_non_nullable
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
              as double?,
      isInvoiced: freezed == isInvoiced
          ? _value.isInvoiced
          : isInvoiced // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      lastEditedAt: freezed == lastEditedAt
          ? _value.lastEditedAt
          : lastEditedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      approvalStatus: freezed == approvalStatus
          ? _value.approvalStatus
          : approvalStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int?,
      deliverySlotId: freezed == deliverySlotId
          ? _value.deliverySlotId
          : deliverySlotId // ignore: cast_nullable_to_non_nullable
              as int?,
      deliveryCharge: freezed == deliveryCharge
          ? _value.deliveryCharge
          : deliveryCharge // ignore: cast_nullable_to_non_nullable
              as double?,
      needApproval: freezed == needApproval
          ? _value.needApproval
          : needApproval // ignore: cast_nullable_to_non_nullable
              as bool?,
      isApproved: freezed == isApproved
          ? _value.isApproved
          : isApproved // ignore: cast_nullable_to_non_nullable
              as bool?,
      isCheck: freezed == isCheck
          ? _value.isCheck
          : isCheck // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LinesCallcenterCopyWith<$Res>
    implements $LinesCallcenterCopyWith<$Res> {
  factory _$$_LinesCallcenterCopyWith(
          _$_LinesCallcenter value, $Res Function(_$_LinesCallcenter) then) =
      __$$_LinesCallcenterCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? image,
      @JsonKey(name: "line_code") String? lineCode,
      @JsonKey(name: "variant_id") int? variantId,
      @JsonKey(name: "variant_code") String? variantCode,
      @JsonKey(name: "variant_name") String? variantName,
      @JsonKey(name: "image1") String? image1,
      @JsonKey(name: "barcode") String? barcode,
      @JsonKey(name: "uom_id") int? uomId,
      @JsonKey(name: "uom_name") String? uomName,
      @JsonKey(name: "actual_cost") double? actualCost,
      @JsonKey(name: "selling_price") double? sellingPrice,
      @JsonKey(name: "quantity") int? quantity,
      @JsonKey(name: "old_quantity") int? oldQty,
      @JsonKey(name: "unit_cost") double? unitcost,
      @JsonKey(name: "reason_of_approval_reject")
      String? reasonOfApprovalReject,
      @JsonKey(name: "discount_based_on") String? discountBasedOn,
      @JsonKey(name: "discount") double? discount,
      @JsonKey(name: "amount") double? amount,
      @JsonKey(name: "vat") double? vat,
      @JsonKey(name: "vatable_amount") double? vatableAmount,
      @JsonKey(name: "total_amount") double? totalAmount,
      @JsonKey(name: "warranty_price") double? warrantyPrice,
      @JsonKey(name: "warranty_id") int? warrantyId,
      @JsonKey(name: "shipping_address_id") int? shippingId,
      @JsonKey(name: "return_type") String? returnType,
      @JsonKey(name: "hub_code") String? hubCode,
      @JsonKey(name: "hub_Name") String? hubName,
      @JsonKey(name: "return_time") double? returnTime,
      @JsonKey(name: "is_invoiced") bool? isInvoiced,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive,
      @JsonKey(name: "last_edited_at") String? lastEditedAt,
      @JsonKey(name: "approval_status") String? approvalStatus,
      @JsonKey(name: "order_id") int? orderId,
      @JsonKey(name: "delivery_slot_id") int? deliverySlotId,
      @JsonKey(name: "delivery_charge") double? deliveryCharge,
      @JsonKey(name: "need_approval", defaultValue: false) bool? needApproval,
      @JsonKey(name: "is_approved", defaultValue: false) bool? isApproved,
      @JsonKey(name: "is_Check", defaultValue: false) bool? isCheck});
}

/// @nodoc
class __$$_LinesCallcenterCopyWithImpl<$Res>
    extends _$LinesCallcenterCopyWithImpl<$Res, _$_LinesCallcenter>
    implements _$$_LinesCallcenterCopyWith<$Res> {
  __$$_LinesCallcenterCopyWithImpl(
      _$_LinesCallcenter _value, $Res Function(_$_LinesCallcenter) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? lineCode = freezed,
    Object? variantId = freezed,
    Object? variantCode = freezed,
    Object? variantName = freezed,
    Object? image1 = freezed,
    Object? barcode = freezed,
    Object? uomId = freezed,
    Object? uomName = freezed,
    Object? actualCost = freezed,
    Object? sellingPrice = freezed,
    Object? quantity = freezed,
    Object? oldQty = freezed,
    Object? unitcost = freezed,
    Object? reasonOfApprovalReject = freezed,
    Object? discountBasedOn = freezed,
    Object? discount = freezed,
    Object? amount = freezed,
    Object? vat = freezed,
    Object? vatableAmount = freezed,
    Object? totalAmount = freezed,
    Object? warrantyPrice = freezed,
    Object? warrantyId = freezed,
    Object? shippingId = freezed,
    Object? returnType = freezed,
    Object? hubCode = freezed,
    Object? hubName = freezed,
    Object? returnTime = freezed,
    Object? isInvoiced = freezed,
    Object? isActive = freezed,
    Object? lastEditedAt = freezed,
    Object? approvalStatus = freezed,
    Object? orderId = freezed,
    Object? deliverySlotId = freezed,
    Object? deliveryCharge = freezed,
    Object? needApproval = freezed,
    Object? isApproved = freezed,
    Object? isCheck = freezed,
  }) {
    return _then(_$_LinesCallcenter(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      lineCode: freezed == lineCode
          ? _value.lineCode
          : lineCode // ignore: cast_nullable_to_non_nullable
              as String?,
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
      image1: freezed == image1
          ? _value.image1
          : image1 // ignore: cast_nullable_to_non_nullable
              as String?,
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
      actualCost: freezed == actualCost
          ? _value.actualCost
          : actualCost // ignore: cast_nullable_to_non_nullable
              as double?,
      sellingPrice: freezed == sellingPrice
          ? _value.sellingPrice
          : sellingPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      oldQty: freezed == oldQty
          ? _value.oldQty
          : oldQty // ignore: cast_nullable_to_non_nullable
              as int?,
      unitcost: freezed == unitcost
          ? _value.unitcost
          : unitcost // ignore: cast_nullable_to_non_nullable
              as double?,
      reasonOfApprovalReject: freezed == reasonOfApprovalReject
          ? _value.reasonOfApprovalReject
          : reasonOfApprovalReject // ignore: cast_nullable_to_non_nullable
              as String?,
      discountBasedOn: freezed == discountBasedOn
          ? _value.discountBasedOn
          : discountBasedOn // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      vatableAmount: freezed == vatableAmount
          ? _value.vatableAmount
          : vatableAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      totalAmount: freezed == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      warrantyPrice: freezed == warrantyPrice
          ? _value.warrantyPrice
          : warrantyPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      warrantyId: freezed == warrantyId
          ? _value.warrantyId
          : warrantyId // ignore: cast_nullable_to_non_nullable
              as int?,
      shippingId: freezed == shippingId
          ? _value.shippingId
          : shippingId // ignore: cast_nullable_to_non_nullable
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
              as double?,
      isInvoiced: freezed == isInvoiced
          ? _value.isInvoiced
          : isInvoiced // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      lastEditedAt: freezed == lastEditedAt
          ? _value.lastEditedAt
          : lastEditedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      approvalStatus: freezed == approvalStatus
          ? _value.approvalStatus
          : approvalStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int?,
      deliverySlotId: freezed == deliverySlotId
          ? _value.deliverySlotId
          : deliverySlotId // ignore: cast_nullable_to_non_nullable
              as int?,
      deliveryCharge: freezed == deliveryCharge
          ? _value.deliveryCharge
          : deliveryCharge // ignore: cast_nullable_to_non_nullable
              as double?,
      needApproval: freezed == needApproval
          ? _value.needApproval
          : needApproval // ignore: cast_nullable_to_non_nullable
              as bool?,
      isApproved: freezed == isApproved
          ? _value.isApproved
          : isApproved // ignore: cast_nullable_to_non_nullable
              as bool?,
      isCheck: freezed == isCheck
          ? _value.isCheck
          : isCheck // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LinesCallcenter implements _LinesCallcenter {
  const _$_LinesCallcenter(
      {this.id,
      this.image,
      @JsonKey(name: "line_code") this.lineCode,
      @JsonKey(name: "variant_id") this.variantId,
      @JsonKey(name: "variant_code") this.variantCode,
      @JsonKey(name: "variant_name") this.variantName,
      @JsonKey(name: "image1") this.image1,
      @JsonKey(name: "barcode") this.barcode,
      @JsonKey(name: "uom_id") this.uomId,
      @JsonKey(name: "uom_name") this.uomName,
      @JsonKey(name: "actual_cost") this.actualCost,
      @JsonKey(name: "selling_price") this.sellingPrice,
      @JsonKey(name: "quantity") this.quantity,
      @JsonKey(name: "old_quantity") this.oldQty,
      @JsonKey(name: "unit_cost") this.unitcost,
      @JsonKey(name: "reason_of_approval_reject") this.reasonOfApprovalReject,
      @JsonKey(name: "discount_based_on") this.discountBasedOn,
      @JsonKey(name: "discount") this.discount,
      @JsonKey(name: "amount") this.amount,
      @JsonKey(name: "vat") this.vat,
      @JsonKey(name: "vatable_amount") this.vatableAmount,
      @JsonKey(name: "total_amount") this.totalAmount,
      @JsonKey(name: "warranty_price") this.warrantyPrice,
      @JsonKey(name: "warranty_id") this.warrantyId,
      @JsonKey(name: "shipping_address_id") this.shippingId,
      @JsonKey(name: "return_type") this.returnType,
      @JsonKey(name: "hub_code") this.hubCode,
      @JsonKey(name: "hub_Name") this.hubName,
      @JsonKey(name: "return_time") this.returnTime,
      @JsonKey(name: "is_invoiced") this.isInvoiced,
      @JsonKey(name: "is_active", defaultValue: false) this.isActive,
      @JsonKey(name: "last_edited_at") this.lastEditedAt,
      @JsonKey(name: "approval_status") this.approvalStatus,
      @JsonKey(name: "order_id") this.orderId,
      @JsonKey(name: "delivery_slot_id") this.deliverySlotId,
      @JsonKey(name: "delivery_charge") this.deliveryCharge,
      @JsonKey(name: "need_approval", defaultValue: false) this.needApproval,
      @JsonKey(name: "is_approved", defaultValue: false) this.isApproved,
      @JsonKey(name: "is_Check", defaultValue: false) this.isCheck});

  factory _$_LinesCallcenter.fromJson(Map<String, dynamic> json) =>
      _$$_LinesCallcenterFromJson(json);

  @override
  final int? id;
  @override
  final String? image;
  @override
  @JsonKey(name: "line_code")
  final String? lineCode;
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
  @JsonKey(name: "image1")
  final String? image1;
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
  @JsonKey(name: "actual_cost")
  final double? actualCost;
  @override
  @JsonKey(name: "selling_price")
  final double? sellingPrice;
  @override
  @JsonKey(name: "quantity")
  final int? quantity;
  @override
  @JsonKey(name: "old_quantity")
  final int? oldQty;
  @override
  @JsonKey(name: "unit_cost")
  final double? unitcost;
  @override
  @JsonKey(name: "reason_of_approval_reject")
  final String? reasonOfApprovalReject;
  @override
  @JsonKey(name: "discount_based_on")
  final String? discountBasedOn;
  @override
  @JsonKey(name: "discount")
  final double? discount;
  @override
  @JsonKey(name: "amount")
  final double? amount;
  @override
  @JsonKey(name: "vat")
  final double? vat;
  @override
  @JsonKey(name: "vatable_amount")
  final double? vatableAmount;
  @override
  @JsonKey(name: "total_amount")
  final double? totalAmount;
  @override
  @JsonKey(name: "warranty_price")
  final double? warrantyPrice;
  @override
  @JsonKey(name: "warranty_id")
  final int? warrantyId;
  @override
  @JsonKey(name: "shipping_address_id")
  final int? shippingId;
  @override
  @JsonKey(name: "return_type")
  final String? returnType;
  @override
  @JsonKey(name: "hub_code")
  final String? hubCode;
  @override
  @JsonKey(name: "hub_Name")
  final String? hubName;
  @override
  @JsonKey(name: "return_time")
  final double? returnTime;
  @override
  @JsonKey(name: "is_invoiced")
  final bool? isInvoiced;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  final bool? isActive;
  @override
  @JsonKey(name: "last_edited_at")
  final String? lastEditedAt;
  @override
  @JsonKey(name: "approval_status")
  final String? approvalStatus;
  @override
  @JsonKey(name: "order_id")
  final int? orderId;
  @override
  @JsonKey(name: "delivery_slot_id")
  final int? deliverySlotId;
  @override
  @JsonKey(name: "delivery_charge")
  final double? deliveryCharge;
  @override
  @JsonKey(name: "need_approval", defaultValue: false)
  final bool? needApproval;
  @override
  @JsonKey(name: "is_approved", defaultValue: false)
  final bool? isApproved;
  @override
  @JsonKey(name: "is_Check", defaultValue: false)
  final bool? isCheck;

  @override
  String toString() {
    return 'LinesCallcenter(id: $id, image: $image, lineCode: $lineCode, variantId: $variantId, variantCode: $variantCode, variantName: $variantName, image1: $image1, barcode: $barcode, uomId: $uomId, uomName: $uomName, actualCost: $actualCost, sellingPrice: $sellingPrice, quantity: $quantity, oldQty: $oldQty, unitcost: $unitcost, reasonOfApprovalReject: $reasonOfApprovalReject, discountBasedOn: $discountBasedOn, discount: $discount, amount: $amount, vat: $vat, vatableAmount: $vatableAmount, totalAmount: $totalAmount, warrantyPrice: $warrantyPrice, warrantyId: $warrantyId, shippingId: $shippingId, returnType: $returnType, hubCode: $hubCode, hubName: $hubName, returnTime: $returnTime, isInvoiced: $isInvoiced, isActive: $isActive, lastEditedAt: $lastEditedAt, approvalStatus: $approvalStatus, orderId: $orderId, deliverySlotId: $deliverySlotId, deliveryCharge: $deliveryCharge, needApproval: $needApproval, isApproved: $isApproved, isCheck: $isCheck)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LinesCallcenter &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.lineCode, lineCode) ||
                other.lineCode == lineCode) &&
            (identical(other.variantId, variantId) ||
                other.variantId == variantId) &&
            (identical(other.variantCode, variantCode) ||
                other.variantCode == variantCode) &&
            (identical(other.variantName, variantName) ||
                other.variantName == variantName) &&
            (identical(other.image1, image1) || other.image1 == image1) &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(other.uomId, uomId) || other.uomId == uomId) &&
            (identical(other.uomName, uomName) || other.uomName == uomName) &&
            (identical(other.actualCost, actualCost) ||
                other.actualCost == actualCost) &&
            (identical(other.sellingPrice, sellingPrice) ||
                other.sellingPrice == sellingPrice) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.oldQty, oldQty) || other.oldQty == oldQty) &&
            (identical(other.unitcost, unitcost) ||
                other.unitcost == unitcost) &&
            (identical(other.reasonOfApprovalReject, reasonOfApprovalReject) ||
                other.reasonOfApprovalReject == reasonOfApprovalReject) &&
            (identical(other.discountBasedOn, discountBasedOn) ||
                other.discountBasedOn == discountBasedOn) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.vat, vat) || other.vat == vat) &&
            (identical(other.vatableAmount, vatableAmount) ||
                other.vatableAmount == vatableAmount) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.warrantyPrice, warrantyPrice) ||
                other.warrantyPrice == warrantyPrice) &&
            (identical(other.warrantyId, warrantyId) ||
                other.warrantyId == warrantyId) &&
            (identical(other.shippingId, shippingId) ||
                other.shippingId == shippingId) &&
            (identical(other.returnType, returnType) ||
                other.returnType == returnType) &&
            (identical(other.hubCode, hubCode) || other.hubCode == hubCode) &&
            (identical(other.hubName, hubName) || other.hubName == hubName) &&
            (identical(other.returnTime, returnTime) ||
                other.returnTime == returnTime) &&
            (identical(other.isInvoiced, isInvoiced) ||
                other.isInvoiced == isInvoiced) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.lastEditedAt, lastEditedAt) ||
                other.lastEditedAt == lastEditedAt) &&
            (identical(other.approvalStatus, approvalStatus) ||
                other.approvalStatus == approvalStatus) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.deliverySlotId, deliverySlotId) ||
                other.deliverySlotId == deliverySlotId) &&
            (identical(other.deliveryCharge, deliveryCharge) ||
                other.deliveryCharge == deliveryCharge) &&
            (identical(other.needApproval, needApproval) ||
                other.needApproval == needApproval) &&
            (identical(other.isApproved, isApproved) ||
                other.isApproved == isApproved) &&
            (identical(other.isCheck, isCheck) || other.isCheck == isCheck));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        image,
        lineCode,
        variantId,
        variantCode,
        variantName,
        image1,
        barcode,
        uomId,
        uomName,
        actualCost,
        sellingPrice,
        quantity,
        oldQty,
        unitcost,
        reasonOfApprovalReject,
        discountBasedOn,
        discount,
        amount,
        vat,
        vatableAmount,
        totalAmount,
        warrantyPrice,
        warrantyId,
        shippingId,
        returnType,
        hubCode,
        hubName,
        returnTime,
        isInvoiced,
        isActive,
        lastEditedAt,
        approvalStatus,
        orderId,
        deliverySlotId,
        deliveryCharge,
        needApproval,
        isApproved,
        isCheck
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LinesCallcenterCopyWith<_$_LinesCallcenter> get copyWith =>
      __$$_LinesCallcenterCopyWithImpl<_$_LinesCallcenter>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LinesCallcenterToJson(
      this,
    );
  }
}

abstract class _LinesCallcenter implements LinesCallcenter {
  const factory _LinesCallcenter(
      {final int? id,
      final String? image,
      @JsonKey(name: "line_code") final String? lineCode,
      @JsonKey(name: "variant_id") final int? variantId,
      @JsonKey(name: "variant_code") final String? variantCode,
      @JsonKey(name: "variant_name") final String? variantName,
      @JsonKey(name: "image1") final String? image1,
      @JsonKey(name: "barcode") final String? barcode,
      @JsonKey(name: "uom_id") final int? uomId,
      @JsonKey(name: "uom_name") final String? uomName,
      @JsonKey(name: "actual_cost") final double? actualCost,
      @JsonKey(name: "selling_price") final double? sellingPrice,
      @JsonKey(name: "quantity") final int? quantity,
      @JsonKey(name: "old_quantity") final int? oldQty,
      @JsonKey(name: "unit_cost") final double? unitcost,
      @JsonKey(name: "reason_of_approval_reject")
      final String? reasonOfApprovalReject,
      @JsonKey(name: "discount_based_on") final String? discountBasedOn,
      @JsonKey(name: "discount") final double? discount,
      @JsonKey(name: "amount") final double? amount,
      @JsonKey(name: "vat") final double? vat,
      @JsonKey(name: "vatable_amount") final double? vatableAmount,
      @JsonKey(name: "total_amount") final double? totalAmount,
      @JsonKey(name: "warranty_price") final double? warrantyPrice,
      @JsonKey(name: "warranty_id") final int? warrantyId,
      @JsonKey(name: "shipping_address_id") final int? shippingId,
      @JsonKey(name: "return_type") final String? returnType,
      @JsonKey(name: "hub_code") final String? hubCode,
      @JsonKey(name: "hub_Name") final String? hubName,
      @JsonKey(name: "return_time") final double? returnTime,
      @JsonKey(name: "is_invoiced") final bool? isInvoiced,
      @JsonKey(name: "is_active", defaultValue: false) final bool? isActive,
      @JsonKey(name: "last_edited_at") final String? lastEditedAt,
      @JsonKey(name: "approval_status") final String? approvalStatus,
      @JsonKey(name: "order_id") final int? orderId,
      @JsonKey(name: "delivery_slot_id") final int? deliverySlotId,
      @JsonKey(name: "delivery_charge") final double? deliveryCharge,
      @JsonKey(name: "need_approval", defaultValue: false)
      final bool? needApproval,
      @JsonKey(name: "is_approved", defaultValue: false) final bool? isApproved,
      @JsonKey(name: "is_Check", defaultValue: false)
      final bool? isCheck}) = _$_LinesCallcenter;

  factory _LinesCallcenter.fromJson(Map<String, dynamic> json) =
      _$_LinesCallcenter.fromJson;

  @override
  int? get id;
  @override
  String? get image;
  @override
  @JsonKey(name: "line_code")
  String? get lineCode;
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
  @JsonKey(name: "image1")
  String? get image1;
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
  @JsonKey(name: "actual_cost")
  double? get actualCost;
  @override
  @JsonKey(name: "selling_price")
  double? get sellingPrice;
  @override
  @JsonKey(name: "quantity")
  int? get quantity;
  @override
  @JsonKey(name: "old_quantity")
  int? get oldQty;
  @override
  @JsonKey(name: "unit_cost")
  double? get unitcost;
  @override
  @JsonKey(name: "reason_of_approval_reject")
  String? get reasonOfApprovalReject;
  @override
  @JsonKey(name: "discount_based_on")
  String? get discountBasedOn;
  @override
  @JsonKey(name: "discount")
  double? get discount;
  @override
  @JsonKey(name: "amount")
  double? get amount;
  @override
  @JsonKey(name: "vat")
  double? get vat;
  @override
  @JsonKey(name: "vatable_amount")
  double? get vatableAmount;
  @override
  @JsonKey(name: "total_amount")
  double? get totalAmount;
  @override
  @JsonKey(name: "warranty_price")
  double? get warrantyPrice;
  @override
  @JsonKey(name: "warranty_id")
  int? get warrantyId;
  @override
  @JsonKey(name: "shipping_address_id")
  int? get shippingId;
  @override
  @JsonKey(name: "return_type")
  String? get returnType;
  @override
  @JsonKey(name: "hub_code")
  String? get hubCode;
  @override
  @JsonKey(name: "hub_Name")
  String? get hubName;
  @override
  @JsonKey(name: "return_time")
  double? get returnTime;
  @override
  @JsonKey(name: "is_invoiced")
  bool? get isInvoiced;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive;
  @override
  @JsonKey(name: "last_edited_at")
  String? get lastEditedAt;
  @override
  @JsonKey(name: "approval_status")
  String? get approvalStatus;
  @override
  @JsonKey(name: "order_id")
  int? get orderId;
  @override
  @JsonKey(name: "delivery_slot_id")
  int? get deliverySlotId;
  @override
  @JsonKey(name: "delivery_charge")
  double? get deliveryCharge;
  @override
  @JsonKey(name: "need_approval", defaultValue: false)
  bool? get needApproval;
  @override
  @JsonKey(name: "is_approved", defaultValue: false)
  bool? get isApproved;
  @override
  @JsonKey(name: "is_Check", defaultValue: false)
  bool? get isCheck;
  @override
  @JsonKey(ignore: true)
  _$$_LinesCallcenterCopyWith<_$_LinesCallcenter> get copyWith =>
      throw _privateConstructorUsedError;
}
