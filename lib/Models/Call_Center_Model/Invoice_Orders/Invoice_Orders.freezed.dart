// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'Invoice_Orders.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InvoiceOrderCallCenter _$InvoiceOrderCallCenterFromJson(
    Map<String, dynamic> json) {
  return _InvoiceOrderCallCenter.fromJson(json);
}

/// @nodoc
mixin _$InvoiceOrderCallCenter {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "invoiced_date")
  String? get invoiceDate => throw _privateConstructorUsedError;
  @JsonKey(name: "invoice_time")
  String? get invoiceTime => throw _privateConstructorUsedError;
  @JsonKey(name: "invoice_code")
  String? get invoiceCode => throw _privateConstructorUsedError;
  @JsonKey(name: "invoice_data")
  InvoiceData? get invoiceData => throw _privateConstructorUsedError;
  @JsonKey(name: "lines")
  List<LinesInvoiceCallcenter>? get linesCallcenter =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "invoice_line")
  List<LinesInvoiceCallcenter>? get invoiceLinesCallcenter =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "order_id")
  int? get orderId => throw _privateConstructorUsedError;
  @JsonKey(name: "order_code")
  String? get orderCode => throw _privateConstructorUsedError;
  @JsonKey(name: "order_type")
  String? get orderType => throw _privateConstructorUsedError;
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
  @JsonKey(name: "customer_group_code")
  String? get customerGrouCode => throw _privateConstructorUsedError;
  @JsonKey(name: "discount")
  double? get discount => throw _privateConstructorUsedError;
  @JsonKey(name: "vatable_amount")
  double? get vatableAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "total_line_count")
  double? get totalLineCount => throw _privateConstructorUsedError;
  @JsonKey(name: "total_amount")
  double? get totalAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "vat")
  double? get vat => throw _privateConstructorUsedError;
  @JsonKey(name: "total")
  double? get total => throw _privateConstructorUsedError;
  @JsonKey(name: "unit_cost")
  double? get unitCost => throw _privateConstructorUsedError;
  @JsonKey(name: "selling_price_total")
  double? get sellingPriceTotal => throw _privateConstructorUsedError;
  @JsonKey(name: "is_holded")
  bool? get isHolded => throw _privateConstructorUsedError;
  @JsonKey(name: "selling_price")
  double? get sellingPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "delivery_charge")
  double? get deliveryCharge => throw _privateConstructorUsedError;
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
  @JsonKey(name: "last_edited_at")
  String? get lastEditedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "channel_details_id")
  int? get channelDetailsId => throw _privateConstructorUsedError;
  @JsonKey(name: "channel_data")
  ChannelData? get channelData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvoiceOrderCallCenterCopyWith<InvoiceOrderCallCenter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceOrderCallCenterCopyWith<$Res> {
  factory $InvoiceOrderCallCenterCopyWith(InvoiceOrderCallCenter value,
          $Res Function(InvoiceOrderCallCenter) then) =
      _$InvoiceOrderCallCenterCopyWithImpl<$Res, InvoiceOrderCallCenter>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "invoiced_date") String? invoiceDate,
      @JsonKey(name: "invoice_time") String? invoiceTime,
      @JsonKey(name: "invoice_code") String? invoiceCode,
      @JsonKey(name: "invoice_data") InvoiceData? invoiceData,
      @JsonKey(name: "lines") List<LinesInvoiceCallcenter>? linesCallcenter,
      @JsonKey(name: "invoice_line")
      List<LinesInvoiceCallcenter>? invoiceLinesCallcenter,
      @JsonKey(name: "order_id") int? orderId,
      @JsonKey(name: "order_code") String? orderCode,
      @JsonKey(name: "order_type") String? orderType,
      @JsonKey(name: "customer_code") String? customerCode,
      @JsonKey(name: "customer_name") String? customerName,
      @JsonKey(name: "customer_mail_id") String? customerMailId,
      @JsonKey(name: "customer_trn_number") String? customerTrn,
      @JsonKey(name: "shipping_address_id") int? shippingId,
      @JsonKey(name: "billing_address_id") int? billingId,
      @JsonKey(name: "created_by") String? createdBy,
      @JsonKey(name: "customer_group_code") String? customerGrouCode,
      @JsonKey(name: "discount") double? discount,
      @JsonKey(name: "vatable_amount") double? vatableAmount,
      @JsonKey(name: "total_line_count") double? totalLineCount,
      @JsonKey(name: "total_amount") double? totalAmount,
      @JsonKey(name: "vat") double? vat,
      @JsonKey(name: "total") double? total,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "selling_price_total") double? sellingPriceTotal,
      @JsonKey(name: "is_holded") bool? isHolded,
      @JsonKey(name: "selling_price") double? sellingPrice,
      @JsonKey(name: "delivery_charge") double? deliveryCharge,
      @JsonKey(name: "order_satus") String? orderStatus,
      @JsonKey(name: "payment_status") String? paymentStatus,
      @JsonKey(name: "invoice_status") String? invoiceStatus,
      @JsonKey(name: "notes") String? notes,
      @JsonKey(name: "remarks") String? remarks,
      @JsonKey(name: "last_edited_at") String? lastEditedAt,
      @JsonKey(name: "channel_details_id") int? channelDetailsId,
      @JsonKey(name: "channel_data") ChannelData? channelData});

  $InvoiceDataCopyWith<$Res>? get invoiceData;
  $ChannelDataCopyWith<$Res>? get channelData;
}

/// @nodoc
class _$InvoiceOrderCallCenterCopyWithImpl<$Res,
        $Val extends InvoiceOrderCallCenter>
    implements $InvoiceOrderCallCenterCopyWith<$Res> {
  _$InvoiceOrderCallCenterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? invoiceDate = freezed,
    Object? invoiceTime = freezed,
    Object? invoiceCode = freezed,
    Object? invoiceData = freezed,
    Object? linesCallcenter = freezed,
    Object? invoiceLinesCallcenter = freezed,
    Object? orderId = freezed,
    Object? orderCode = freezed,
    Object? orderType = freezed,
    Object? customerCode = freezed,
    Object? customerName = freezed,
    Object? customerMailId = freezed,
    Object? customerTrn = freezed,
    Object? shippingId = freezed,
    Object? billingId = freezed,
    Object? createdBy = freezed,
    Object? customerGrouCode = freezed,
    Object? discount = freezed,
    Object? vatableAmount = freezed,
    Object? totalLineCount = freezed,
    Object? totalAmount = freezed,
    Object? vat = freezed,
    Object? total = freezed,
    Object? unitCost = freezed,
    Object? sellingPriceTotal = freezed,
    Object? isHolded = freezed,
    Object? sellingPrice = freezed,
    Object? deliveryCharge = freezed,
    Object? orderStatus = freezed,
    Object? paymentStatus = freezed,
    Object? invoiceStatus = freezed,
    Object? notes = freezed,
    Object? remarks = freezed,
    Object? lastEditedAt = freezed,
    Object? channelDetailsId = freezed,
    Object? channelData = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      invoiceDate: freezed == invoiceDate
          ? _value.invoiceDate
          : invoiceDate // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceTime: freezed == invoiceTime
          ? _value.invoiceTime
          : invoiceTime // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceCode: freezed == invoiceCode
          ? _value.invoiceCode
          : invoiceCode // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceData: freezed == invoiceData
          ? _value.invoiceData
          : invoiceData // ignore: cast_nullable_to_non_nullable
              as InvoiceData?,
      linesCallcenter: freezed == linesCallcenter
          ? _value.linesCallcenter
          : linesCallcenter // ignore: cast_nullable_to_non_nullable
              as List<LinesInvoiceCallcenter>?,
      invoiceLinesCallcenter: freezed == invoiceLinesCallcenter
          ? _value.invoiceLinesCallcenter
          : invoiceLinesCallcenter // ignore: cast_nullable_to_non_nullable
              as List<LinesInvoiceCallcenter>?,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int?,
      orderCode: freezed == orderCode
          ? _value.orderCode
          : orderCode // ignore: cast_nullable_to_non_nullable
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
      customerGrouCode: freezed == customerGrouCode
          ? _value.customerGrouCode
          : customerGrouCode // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      vatableAmount: freezed == vatableAmount
          ? _value.vatableAmount
          : vatableAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      totalLineCount: freezed == totalLineCount
          ? _value.totalLineCount
          : totalLineCount // ignore: cast_nullable_to_non_nullable
              as double?,
      totalAmount: freezed == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
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
      sellingPriceTotal: freezed == sellingPriceTotal
          ? _value.sellingPriceTotal
          : sellingPriceTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      isHolded: freezed == isHolded
          ? _value.isHolded
          : isHolded // ignore: cast_nullable_to_non_nullable
              as bool?,
      sellingPrice: freezed == sellingPrice
          ? _value.sellingPrice
          : sellingPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      deliveryCharge: freezed == deliveryCharge
          ? _value.deliveryCharge
          : deliveryCharge // ignore: cast_nullable_to_non_nullable
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
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InvoiceDataCopyWith<$Res>? get invoiceData {
    if (_value.invoiceData == null) {
      return null;
    }

    return $InvoiceDataCopyWith<$Res>(_value.invoiceData!, (value) {
      return _then(_value.copyWith(invoiceData: value) as $Val);
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
abstract class _$$_InvoiceOrderCallCenterCopyWith<$Res>
    implements $InvoiceOrderCallCenterCopyWith<$Res> {
  factory _$$_InvoiceOrderCallCenterCopyWith(_$_InvoiceOrderCallCenter value,
          $Res Function(_$_InvoiceOrderCallCenter) then) =
      __$$_InvoiceOrderCallCenterCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "invoiced_date") String? invoiceDate,
      @JsonKey(name: "invoice_time") String? invoiceTime,
      @JsonKey(name: "invoice_code") String? invoiceCode,
      @JsonKey(name: "invoice_data") InvoiceData? invoiceData,
      @JsonKey(name: "lines") List<LinesInvoiceCallcenter>? linesCallcenter,
      @JsonKey(name: "invoice_line")
      List<LinesInvoiceCallcenter>? invoiceLinesCallcenter,
      @JsonKey(name: "order_id") int? orderId,
      @JsonKey(name: "order_code") String? orderCode,
      @JsonKey(name: "order_type") String? orderType,
      @JsonKey(name: "customer_code") String? customerCode,
      @JsonKey(name: "customer_name") String? customerName,
      @JsonKey(name: "customer_mail_id") String? customerMailId,
      @JsonKey(name: "customer_trn_number") String? customerTrn,
      @JsonKey(name: "shipping_address_id") int? shippingId,
      @JsonKey(name: "billing_address_id") int? billingId,
      @JsonKey(name: "created_by") String? createdBy,
      @JsonKey(name: "customer_group_code") String? customerGrouCode,
      @JsonKey(name: "discount") double? discount,
      @JsonKey(name: "vatable_amount") double? vatableAmount,
      @JsonKey(name: "total_line_count") double? totalLineCount,
      @JsonKey(name: "total_amount") double? totalAmount,
      @JsonKey(name: "vat") double? vat,
      @JsonKey(name: "total") double? total,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "selling_price_total") double? sellingPriceTotal,
      @JsonKey(name: "is_holded") bool? isHolded,
      @JsonKey(name: "selling_price") double? sellingPrice,
      @JsonKey(name: "delivery_charge") double? deliveryCharge,
      @JsonKey(name: "order_satus") String? orderStatus,
      @JsonKey(name: "payment_status") String? paymentStatus,
      @JsonKey(name: "invoice_status") String? invoiceStatus,
      @JsonKey(name: "notes") String? notes,
      @JsonKey(name: "remarks") String? remarks,
      @JsonKey(name: "last_edited_at") String? lastEditedAt,
      @JsonKey(name: "channel_details_id") int? channelDetailsId,
      @JsonKey(name: "channel_data") ChannelData? channelData});

  @override
  $InvoiceDataCopyWith<$Res>? get invoiceData;
  @override
  $ChannelDataCopyWith<$Res>? get channelData;
}

/// @nodoc
class __$$_InvoiceOrderCallCenterCopyWithImpl<$Res>
    extends _$InvoiceOrderCallCenterCopyWithImpl<$Res,
        _$_InvoiceOrderCallCenter>
    implements _$$_InvoiceOrderCallCenterCopyWith<$Res> {
  __$$_InvoiceOrderCallCenterCopyWithImpl(_$_InvoiceOrderCallCenter _value,
      $Res Function(_$_InvoiceOrderCallCenter) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? invoiceDate = freezed,
    Object? invoiceTime = freezed,
    Object? invoiceCode = freezed,
    Object? invoiceData = freezed,
    Object? linesCallcenter = freezed,
    Object? invoiceLinesCallcenter = freezed,
    Object? orderId = freezed,
    Object? orderCode = freezed,
    Object? orderType = freezed,
    Object? customerCode = freezed,
    Object? customerName = freezed,
    Object? customerMailId = freezed,
    Object? customerTrn = freezed,
    Object? shippingId = freezed,
    Object? billingId = freezed,
    Object? createdBy = freezed,
    Object? customerGrouCode = freezed,
    Object? discount = freezed,
    Object? vatableAmount = freezed,
    Object? totalLineCount = freezed,
    Object? totalAmount = freezed,
    Object? vat = freezed,
    Object? total = freezed,
    Object? unitCost = freezed,
    Object? sellingPriceTotal = freezed,
    Object? isHolded = freezed,
    Object? sellingPrice = freezed,
    Object? deliveryCharge = freezed,
    Object? orderStatus = freezed,
    Object? paymentStatus = freezed,
    Object? invoiceStatus = freezed,
    Object? notes = freezed,
    Object? remarks = freezed,
    Object? lastEditedAt = freezed,
    Object? channelDetailsId = freezed,
    Object? channelData = freezed,
  }) {
    return _then(_$_InvoiceOrderCallCenter(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      invoiceDate: freezed == invoiceDate
          ? _value.invoiceDate
          : invoiceDate // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceTime: freezed == invoiceTime
          ? _value.invoiceTime
          : invoiceTime // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceCode: freezed == invoiceCode
          ? _value.invoiceCode
          : invoiceCode // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceData: freezed == invoiceData
          ? _value.invoiceData
          : invoiceData // ignore: cast_nullable_to_non_nullable
              as InvoiceData?,
      linesCallcenter: freezed == linesCallcenter
          ? _value._linesCallcenter
          : linesCallcenter // ignore: cast_nullable_to_non_nullable
              as List<LinesInvoiceCallcenter>?,
      invoiceLinesCallcenter: freezed == invoiceLinesCallcenter
          ? _value._invoiceLinesCallcenter
          : invoiceLinesCallcenter // ignore: cast_nullable_to_non_nullable
              as List<LinesInvoiceCallcenter>?,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int?,
      orderCode: freezed == orderCode
          ? _value.orderCode
          : orderCode // ignore: cast_nullable_to_non_nullable
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
      customerGrouCode: freezed == customerGrouCode
          ? _value.customerGrouCode
          : customerGrouCode // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      vatableAmount: freezed == vatableAmount
          ? _value.vatableAmount
          : vatableAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      totalLineCount: freezed == totalLineCount
          ? _value.totalLineCount
          : totalLineCount // ignore: cast_nullable_to_non_nullable
              as double?,
      totalAmount: freezed == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
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
      sellingPriceTotal: freezed == sellingPriceTotal
          ? _value.sellingPriceTotal
          : sellingPriceTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      isHolded: freezed == isHolded
          ? _value.isHolded
          : isHolded // ignore: cast_nullable_to_non_nullable
              as bool?,
      sellingPrice: freezed == sellingPrice
          ? _value.sellingPrice
          : sellingPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      deliveryCharge: freezed == deliveryCharge
          ? _value.deliveryCharge
          : deliveryCharge // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InvoiceOrderCallCenter implements _InvoiceOrderCallCenter {
  const _$_InvoiceOrderCallCenter(
      {this.id,
      @JsonKey(name: "invoiced_date") this.invoiceDate,
      @JsonKey(name: "invoice_time") this.invoiceTime,
      @JsonKey(name: "invoice_code") this.invoiceCode,
      @JsonKey(name: "invoice_data") this.invoiceData,
      @JsonKey(name: "lines")
      final List<LinesInvoiceCallcenter>? linesCallcenter,
      @JsonKey(name: "invoice_line")
      final List<LinesInvoiceCallcenter>? invoiceLinesCallcenter,
      @JsonKey(name: "order_id") this.orderId,
      @JsonKey(name: "order_code") this.orderCode,
      @JsonKey(name: "order_type") this.orderType,
      @JsonKey(name: "customer_code") this.customerCode,
      @JsonKey(name: "customer_name") this.customerName,
      @JsonKey(name: "customer_mail_id") this.customerMailId,
      @JsonKey(name: "customer_trn_number") this.customerTrn,
      @JsonKey(name: "shipping_address_id") this.shippingId,
      @JsonKey(name: "billing_address_id") this.billingId,
      @JsonKey(name: "created_by") this.createdBy,
      @JsonKey(name: "customer_group_code") this.customerGrouCode,
      @JsonKey(name: "discount") this.discount,
      @JsonKey(name: "vatable_amount") this.vatableAmount,
      @JsonKey(name: "total_line_count") this.totalLineCount,
      @JsonKey(name: "total_amount") this.totalAmount,
      @JsonKey(name: "vat") this.vat,
      @JsonKey(name: "total") this.total,
      @JsonKey(name: "unit_cost") this.unitCost,
      @JsonKey(name: "selling_price_total") this.sellingPriceTotal,
      @JsonKey(name: "is_holded") this.isHolded,
      @JsonKey(name: "selling_price") this.sellingPrice,
      @JsonKey(name: "delivery_charge") this.deliveryCharge,
      @JsonKey(name: "order_satus") this.orderStatus,
      @JsonKey(name: "payment_status") this.paymentStatus,
      @JsonKey(name: "invoice_status") this.invoiceStatus,
      @JsonKey(name: "notes") this.notes,
      @JsonKey(name: "remarks") this.remarks,
      @JsonKey(name: "last_edited_at") this.lastEditedAt,
      @JsonKey(name: "channel_details_id") this.channelDetailsId,
      @JsonKey(name: "channel_data") this.channelData})
      : _linesCallcenter = linesCallcenter,
        _invoiceLinesCallcenter = invoiceLinesCallcenter;

  factory _$_InvoiceOrderCallCenter.fromJson(Map<String, dynamic> json) =>
      _$$_InvoiceOrderCallCenterFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: "invoiced_date")
  final String? invoiceDate;
  @override
  @JsonKey(name: "invoice_time")
  final String? invoiceTime;
  @override
  @JsonKey(name: "invoice_code")
  final String? invoiceCode;
  @override
  @JsonKey(name: "invoice_data")
  final InvoiceData? invoiceData;
  final List<LinesInvoiceCallcenter>? _linesCallcenter;
  @override
  @JsonKey(name: "lines")
  List<LinesInvoiceCallcenter>? get linesCallcenter {
    final value = _linesCallcenter;
    if (value == null) return null;
    if (_linesCallcenter is EqualUnmodifiableListView) return _linesCallcenter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<LinesInvoiceCallcenter>? _invoiceLinesCallcenter;
  @override
  @JsonKey(name: "invoice_line")
  List<LinesInvoiceCallcenter>? get invoiceLinesCallcenter {
    final value = _invoiceLinesCallcenter;
    if (value == null) return null;
    if (_invoiceLinesCallcenter is EqualUnmodifiableListView)
      return _invoiceLinesCallcenter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "order_id")
  final int? orderId;
  @override
  @JsonKey(name: "order_code")
  final String? orderCode;
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
  @JsonKey(name: "customer_group_code")
  final String? customerGrouCode;
  @override
  @JsonKey(name: "discount")
  final double? discount;
  @override
  @JsonKey(name: "vatable_amount")
  final double? vatableAmount;
  @override
  @JsonKey(name: "total_line_count")
  final double? totalLineCount;
  @override
  @JsonKey(name: "total_amount")
  final double? totalAmount;
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
  @JsonKey(name: "selling_price_total")
  final double? sellingPriceTotal;
  @override
  @JsonKey(name: "is_holded")
  final bool? isHolded;
  @override
  @JsonKey(name: "selling_price")
  final double? sellingPrice;
  @override
  @JsonKey(name: "delivery_charge")
  final double? deliveryCharge;
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
  @JsonKey(name: "last_edited_at")
  final String? lastEditedAt;
  @override
  @JsonKey(name: "channel_details_id")
  final int? channelDetailsId;
  @override
  @JsonKey(name: "channel_data")
  final ChannelData? channelData;

  @override
  String toString() {
    return 'InvoiceOrderCallCenter(id: $id, invoiceDate: $invoiceDate, invoiceTime: $invoiceTime, invoiceCode: $invoiceCode, invoiceData: $invoiceData, linesCallcenter: $linesCallcenter, invoiceLinesCallcenter: $invoiceLinesCallcenter, orderId: $orderId, orderCode: $orderCode, orderType: $orderType, customerCode: $customerCode, customerName: $customerName, customerMailId: $customerMailId, customerTrn: $customerTrn, shippingId: $shippingId, billingId: $billingId, createdBy: $createdBy, customerGrouCode: $customerGrouCode, discount: $discount, vatableAmount: $vatableAmount, totalLineCount: $totalLineCount, totalAmount: $totalAmount, vat: $vat, total: $total, unitCost: $unitCost, sellingPriceTotal: $sellingPriceTotal, isHolded: $isHolded, sellingPrice: $sellingPrice, deliveryCharge: $deliveryCharge, orderStatus: $orderStatus, paymentStatus: $paymentStatus, invoiceStatus: $invoiceStatus, notes: $notes, remarks: $remarks, lastEditedAt: $lastEditedAt, channelDetailsId: $channelDetailsId, channelData: $channelData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvoiceOrderCallCenter &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.invoiceDate, invoiceDate) ||
                other.invoiceDate == invoiceDate) &&
            (identical(other.invoiceTime, invoiceTime) ||
                other.invoiceTime == invoiceTime) &&
            (identical(other.invoiceCode, invoiceCode) ||
                other.invoiceCode == invoiceCode) &&
            (identical(other.invoiceData, invoiceData) ||
                other.invoiceData == invoiceData) &&
            const DeepCollectionEquality()
                .equals(other._linesCallcenter, _linesCallcenter) &&
            const DeepCollectionEquality().equals(
                other._invoiceLinesCallcenter, _invoiceLinesCallcenter) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.orderCode, orderCode) ||
                other.orderCode == orderCode) &&
            (identical(other.orderType, orderType) ||
                other.orderType == orderType) &&
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
            (identical(other.customerGrouCode, customerGrouCode) ||
                other.customerGrouCode == customerGrouCode) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.vatableAmount, vatableAmount) ||
                other.vatableAmount == vatableAmount) &&
            (identical(other.totalLineCount, totalLineCount) ||
                other.totalLineCount == totalLineCount) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.vat, vat) || other.vat == vat) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.unitCost, unitCost) ||
                other.unitCost == unitCost) &&
            (identical(other.sellingPriceTotal, sellingPriceTotal) ||
                other.sellingPriceTotal == sellingPriceTotal) &&
            (identical(other.isHolded, isHolded) ||
                other.isHolded == isHolded) &&
            (identical(other.sellingPrice, sellingPrice) ||
                other.sellingPrice == sellingPrice) &&
            (identical(other.deliveryCharge, deliveryCharge) ||
                other.deliveryCharge == deliveryCharge) &&
            (identical(other.orderStatus, orderStatus) ||
                other.orderStatus == orderStatus) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(other.invoiceStatus, invoiceStatus) ||
                other.invoiceStatus == invoiceStatus) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.remarks, remarks) || other.remarks == remarks) &&
            (identical(other.lastEditedAt, lastEditedAt) ||
                other.lastEditedAt == lastEditedAt) &&
            (identical(other.channelDetailsId, channelDetailsId) ||
                other.channelDetailsId == channelDetailsId) &&
            (identical(other.channelData, channelData) ||
                other.channelData == channelData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        invoiceDate,
        invoiceTime,
        invoiceCode,
        invoiceData,
        const DeepCollectionEquality().hash(_linesCallcenter),
        const DeepCollectionEquality().hash(_invoiceLinesCallcenter),
        orderId,
        orderCode,
        orderType,
        customerCode,
        customerName,
        customerMailId,
        customerTrn,
        shippingId,
        billingId,
        createdBy,
        customerGrouCode,
        discount,
        vatableAmount,
        totalLineCount,
        totalAmount,
        vat,
        total,
        unitCost,
        sellingPriceTotal,
        isHolded,
        sellingPrice,
        deliveryCharge,
        orderStatus,
        paymentStatus,
        invoiceStatus,
        notes,
        remarks,
        lastEditedAt,
        channelDetailsId,
        channelData
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InvoiceOrderCallCenterCopyWith<_$_InvoiceOrderCallCenter> get copyWith =>
      __$$_InvoiceOrderCallCenterCopyWithImpl<_$_InvoiceOrderCallCenter>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InvoiceOrderCallCenterToJson(
      this,
    );
  }
}

abstract class _InvoiceOrderCallCenter implements InvoiceOrderCallCenter {
  const factory _InvoiceOrderCallCenter(
          {final int? id,
          @JsonKey(name: "invoiced_date") final String? invoiceDate,
          @JsonKey(name: "invoice_time") final String? invoiceTime,
          @JsonKey(name: "invoice_code") final String? invoiceCode,
          @JsonKey(name: "invoice_data") final InvoiceData? invoiceData,
          @JsonKey(name: "lines")
          final List<LinesInvoiceCallcenter>? linesCallcenter,
          @JsonKey(name: "invoice_line")
          final List<LinesInvoiceCallcenter>? invoiceLinesCallcenter,
          @JsonKey(name: "order_id") final int? orderId,
          @JsonKey(name: "order_code") final String? orderCode,
          @JsonKey(name: "order_type") final String? orderType,
          @JsonKey(name: "customer_code") final String? customerCode,
          @JsonKey(name: "customer_name") final String? customerName,
          @JsonKey(name: "customer_mail_id") final String? customerMailId,
          @JsonKey(name: "customer_trn_number") final String? customerTrn,
          @JsonKey(name: "shipping_address_id") final int? shippingId,
          @JsonKey(name: "billing_address_id") final int? billingId,
          @JsonKey(name: "created_by") final String? createdBy,
          @JsonKey(name: "customer_group_code") final String? customerGrouCode,
          @JsonKey(name: "discount") final double? discount,
          @JsonKey(name: "vatable_amount") final double? vatableAmount,
          @JsonKey(name: "total_line_count") final double? totalLineCount,
          @JsonKey(name: "total_amount") final double? totalAmount,
          @JsonKey(name: "vat") final double? vat,
          @JsonKey(name: "total") final double? total,
          @JsonKey(name: "unit_cost") final double? unitCost,
          @JsonKey(name: "selling_price_total") final double? sellingPriceTotal,
          @JsonKey(name: "is_holded") final bool? isHolded,
          @JsonKey(name: "selling_price") final double? sellingPrice,
          @JsonKey(name: "delivery_charge") final double? deliveryCharge,
          @JsonKey(name: "order_satus") final String? orderStatus,
          @JsonKey(name: "payment_status") final String? paymentStatus,
          @JsonKey(name: "invoice_status") final String? invoiceStatus,
          @JsonKey(name: "notes") final String? notes,
          @JsonKey(name: "remarks") final String? remarks,
          @JsonKey(name: "last_edited_at") final String? lastEditedAt,
          @JsonKey(name: "channel_details_id") final int? channelDetailsId,
          @JsonKey(name: "channel_data") final ChannelData? channelData}) =
      _$_InvoiceOrderCallCenter;

  factory _InvoiceOrderCallCenter.fromJson(Map<String, dynamic> json) =
      _$_InvoiceOrderCallCenter.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: "invoiced_date")
  String? get invoiceDate;
  @override
  @JsonKey(name: "invoice_time")
  String? get invoiceTime;
  @override
  @JsonKey(name: "invoice_code")
  String? get invoiceCode;
  @override
  @JsonKey(name: "invoice_data")
  InvoiceData? get invoiceData;
  @override
  @JsonKey(name: "lines")
  List<LinesInvoiceCallcenter>? get linesCallcenter;
  @override
  @JsonKey(name: "invoice_line")
  List<LinesInvoiceCallcenter>? get invoiceLinesCallcenter;
  @override
  @JsonKey(name: "order_id")
  int? get orderId;
  @override
  @JsonKey(name: "order_code")
  String? get orderCode;
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
  @JsonKey(name: "customer_group_code")
  String? get customerGrouCode;
  @override
  @JsonKey(name: "discount")
  double? get discount;
  @override
  @JsonKey(name: "vatable_amount")
  double? get vatableAmount;
  @override
  @JsonKey(name: "total_line_count")
  double? get totalLineCount;
  @override
  @JsonKey(name: "total_amount")
  double? get totalAmount;
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
  @JsonKey(name: "selling_price_total")
  double? get sellingPriceTotal;
  @override
  @JsonKey(name: "is_holded")
  bool? get isHolded;
  @override
  @JsonKey(name: "selling_price")
  double? get sellingPrice;
  @override
  @JsonKey(name: "delivery_charge")
  double? get deliveryCharge;
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
  @JsonKey(name: "last_edited_at")
  String? get lastEditedAt;
  @override
  @JsonKey(name: "channel_details_id")
  int? get channelDetailsId;
  @override
  @JsonKey(name: "channel_data")
  ChannelData? get channelData;
  @override
  @JsonKey(ignore: true)
  _$$_InvoiceOrderCallCenterCopyWith<_$_InvoiceOrderCallCenter> get copyWith =>
      throw _privateConstructorUsedError;
}

InvoiceData _$InvoiceDataFromJson(Map<String, dynamic> json) {
  return _InvoiceData.fromJson(json);
}

/// @nodoc
mixin _$InvoiceData {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "invoiced_date")
  String? get invoiceDate => throw _privateConstructorUsedError;
  @JsonKey(name: "invoice_time")
  String? get invoiceTime => throw _privateConstructorUsedError;
  @JsonKey(name: "invoice_code")
  String? get invoiceCode => throw _privateConstructorUsedError;
  @JsonKey(name: "lines")
  List<LinesInvoiceCallcenter>? get linesCallcenter =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "invoice_line")
  List<LinesInvoiceCallcenter>? get invoiceLinesCallcenter =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "order_id")
  int? get orderId => throw _privateConstructorUsedError;
  @JsonKey(name: "order_code")
  String? get orderCode => throw _privateConstructorUsedError;
  @JsonKey(name: "order_type")
  String? get orderType => throw _privateConstructorUsedError;
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
  @JsonKey(name: "total_line_count")
  double? get totalLineCount => throw _privateConstructorUsedError;
  @JsonKey(name: "billing_address_id")
  int? get billingId => throw _privateConstructorUsedError;
  @JsonKey(name: "created_by")
  String? get createdBy => throw _privateConstructorUsedError;
  @JsonKey(name: "discount")
  double? get discount => throw _privateConstructorUsedError;
  @JsonKey(name: "vatable_amount")
  double? get vatableAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "total_amount")
  double? get totalAmount => throw _privateConstructorUsedError;
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
  @JsonKey(name: "customer_group_code")
  String? get customerGroupcode => throw _privateConstructorUsedError;
  @JsonKey(name: "notes")
  String? get notes => throw _privateConstructorUsedError;
  @JsonKey(name: "remarks")
  String? get remarks => throw _privateConstructorUsedError;
  @JsonKey(name: "last_edited_at")
  String? get lastEditedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "channel_details_id")
  int? get channelDetailsId => throw _privateConstructorUsedError;
  @JsonKey(name: "channel_data")
  ChannelData? get channelData => throw _privateConstructorUsedError;
  @JsonKey(name: "delivery_charge")
  double? get deliveryCharge => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvoiceDataCopyWith<InvoiceData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceDataCopyWith<$Res> {
  factory $InvoiceDataCopyWith(
          InvoiceData value, $Res Function(InvoiceData) then) =
      _$InvoiceDataCopyWithImpl<$Res, InvoiceData>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "invoiced_date") String? invoiceDate,
      @JsonKey(name: "invoice_time") String? invoiceTime,
      @JsonKey(name: "invoice_code") String? invoiceCode,
      @JsonKey(name: "lines") List<LinesInvoiceCallcenter>? linesCallcenter,
      @JsonKey(name: "invoice_line")
      List<LinesInvoiceCallcenter>? invoiceLinesCallcenter,
      @JsonKey(name: "order_id") int? orderId,
      @JsonKey(name: "order_code") String? orderCode,
      @JsonKey(name: "order_type") String? orderType,
      @JsonKey(name: "customer_code") String? customerCode,
      @JsonKey(name: "customer_name") String? customerName,
      @JsonKey(name: "customer_mail_id") String? customerMailId,
      @JsonKey(name: "customer_trn_number") String? customerTrn,
      @JsonKey(name: "shipping_address_id") int? shippingId,
      @JsonKey(name: "total_line_count") double? totalLineCount,
      @JsonKey(name: "billing_address_id") int? billingId,
      @JsonKey(name: "created_by") String? createdBy,
      @JsonKey(name: "discount") double? discount,
      @JsonKey(name: "vatable_amount") double? vatableAmount,
      @JsonKey(name: "total_amount") double? totalAmount,
      @JsonKey(name: "vat") double? vat,
      @JsonKey(name: "total") double? total,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "is_holded") bool? isHolded,
      @JsonKey(name: "selling_price") double? sellingPrice,
      @JsonKey(name: "order_satus") String? orderStatus,
      @JsonKey(name: "payment_status") String? paymentStatus,
      @JsonKey(name: "invoice_status") String? invoiceStatus,
      @JsonKey(name: "customer_group_code") String? customerGroupcode,
      @JsonKey(name: "notes") String? notes,
      @JsonKey(name: "remarks") String? remarks,
      @JsonKey(name: "last_edited_at") String? lastEditedAt,
      @JsonKey(name: "channel_details_id") int? channelDetailsId,
      @JsonKey(name: "channel_data") ChannelData? channelData,
      @JsonKey(name: "delivery_charge") double? deliveryCharge});

  $ChannelDataCopyWith<$Res>? get channelData;
}

/// @nodoc
class _$InvoiceDataCopyWithImpl<$Res, $Val extends InvoiceData>
    implements $InvoiceDataCopyWith<$Res> {
  _$InvoiceDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? invoiceDate = freezed,
    Object? invoiceTime = freezed,
    Object? invoiceCode = freezed,
    Object? linesCallcenter = freezed,
    Object? invoiceLinesCallcenter = freezed,
    Object? orderId = freezed,
    Object? orderCode = freezed,
    Object? orderType = freezed,
    Object? customerCode = freezed,
    Object? customerName = freezed,
    Object? customerMailId = freezed,
    Object? customerTrn = freezed,
    Object? shippingId = freezed,
    Object? totalLineCount = freezed,
    Object? billingId = freezed,
    Object? createdBy = freezed,
    Object? discount = freezed,
    Object? vatableAmount = freezed,
    Object? totalAmount = freezed,
    Object? vat = freezed,
    Object? total = freezed,
    Object? unitCost = freezed,
    Object? isHolded = freezed,
    Object? sellingPrice = freezed,
    Object? orderStatus = freezed,
    Object? paymentStatus = freezed,
    Object? invoiceStatus = freezed,
    Object? customerGroupcode = freezed,
    Object? notes = freezed,
    Object? remarks = freezed,
    Object? lastEditedAt = freezed,
    Object? channelDetailsId = freezed,
    Object? channelData = freezed,
    Object? deliveryCharge = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      invoiceDate: freezed == invoiceDate
          ? _value.invoiceDate
          : invoiceDate // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceTime: freezed == invoiceTime
          ? _value.invoiceTime
          : invoiceTime // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceCode: freezed == invoiceCode
          ? _value.invoiceCode
          : invoiceCode // ignore: cast_nullable_to_non_nullable
              as String?,
      linesCallcenter: freezed == linesCallcenter
          ? _value.linesCallcenter
          : linesCallcenter // ignore: cast_nullable_to_non_nullable
              as List<LinesInvoiceCallcenter>?,
      invoiceLinesCallcenter: freezed == invoiceLinesCallcenter
          ? _value.invoiceLinesCallcenter
          : invoiceLinesCallcenter // ignore: cast_nullable_to_non_nullable
              as List<LinesInvoiceCallcenter>?,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int?,
      orderCode: freezed == orderCode
          ? _value.orderCode
          : orderCode // ignore: cast_nullable_to_non_nullable
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
      totalLineCount: freezed == totalLineCount
          ? _value.totalLineCount
          : totalLineCount // ignore: cast_nullable_to_non_nullable
              as double?,
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
      totalAmount: freezed == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
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
      customerGroupcode: freezed == customerGroupcode
          ? _value.customerGroupcode
          : customerGroupcode // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      remarks: freezed == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
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
      deliveryCharge: freezed == deliveryCharge
          ? _value.deliveryCharge
          : deliveryCharge // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
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
abstract class _$$_InvoiceDataCopyWith<$Res>
    implements $InvoiceDataCopyWith<$Res> {
  factory _$$_InvoiceDataCopyWith(
          _$_InvoiceData value, $Res Function(_$_InvoiceData) then) =
      __$$_InvoiceDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "invoiced_date") String? invoiceDate,
      @JsonKey(name: "invoice_time") String? invoiceTime,
      @JsonKey(name: "invoice_code") String? invoiceCode,
      @JsonKey(name: "lines") List<LinesInvoiceCallcenter>? linesCallcenter,
      @JsonKey(name: "invoice_line")
      List<LinesInvoiceCallcenter>? invoiceLinesCallcenter,
      @JsonKey(name: "order_id") int? orderId,
      @JsonKey(name: "order_code") String? orderCode,
      @JsonKey(name: "order_type") String? orderType,
      @JsonKey(name: "customer_code") String? customerCode,
      @JsonKey(name: "customer_name") String? customerName,
      @JsonKey(name: "customer_mail_id") String? customerMailId,
      @JsonKey(name: "customer_trn_number") String? customerTrn,
      @JsonKey(name: "shipping_address_id") int? shippingId,
      @JsonKey(name: "total_line_count") double? totalLineCount,
      @JsonKey(name: "billing_address_id") int? billingId,
      @JsonKey(name: "created_by") String? createdBy,
      @JsonKey(name: "discount") double? discount,
      @JsonKey(name: "vatable_amount") double? vatableAmount,
      @JsonKey(name: "total_amount") double? totalAmount,
      @JsonKey(name: "vat") double? vat,
      @JsonKey(name: "total") double? total,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "is_holded") bool? isHolded,
      @JsonKey(name: "selling_price") double? sellingPrice,
      @JsonKey(name: "order_satus") String? orderStatus,
      @JsonKey(name: "payment_status") String? paymentStatus,
      @JsonKey(name: "invoice_status") String? invoiceStatus,
      @JsonKey(name: "customer_group_code") String? customerGroupcode,
      @JsonKey(name: "notes") String? notes,
      @JsonKey(name: "remarks") String? remarks,
      @JsonKey(name: "last_edited_at") String? lastEditedAt,
      @JsonKey(name: "channel_details_id") int? channelDetailsId,
      @JsonKey(name: "channel_data") ChannelData? channelData,
      @JsonKey(name: "delivery_charge") double? deliveryCharge});

  @override
  $ChannelDataCopyWith<$Res>? get channelData;
}

/// @nodoc
class __$$_InvoiceDataCopyWithImpl<$Res>
    extends _$InvoiceDataCopyWithImpl<$Res, _$_InvoiceData>
    implements _$$_InvoiceDataCopyWith<$Res> {
  __$$_InvoiceDataCopyWithImpl(
      _$_InvoiceData _value, $Res Function(_$_InvoiceData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? invoiceDate = freezed,
    Object? invoiceTime = freezed,
    Object? invoiceCode = freezed,
    Object? linesCallcenter = freezed,
    Object? invoiceLinesCallcenter = freezed,
    Object? orderId = freezed,
    Object? orderCode = freezed,
    Object? orderType = freezed,
    Object? customerCode = freezed,
    Object? customerName = freezed,
    Object? customerMailId = freezed,
    Object? customerTrn = freezed,
    Object? shippingId = freezed,
    Object? totalLineCount = freezed,
    Object? billingId = freezed,
    Object? createdBy = freezed,
    Object? discount = freezed,
    Object? vatableAmount = freezed,
    Object? totalAmount = freezed,
    Object? vat = freezed,
    Object? total = freezed,
    Object? unitCost = freezed,
    Object? isHolded = freezed,
    Object? sellingPrice = freezed,
    Object? orderStatus = freezed,
    Object? paymentStatus = freezed,
    Object? invoiceStatus = freezed,
    Object? customerGroupcode = freezed,
    Object? notes = freezed,
    Object? remarks = freezed,
    Object? lastEditedAt = freezed,
    Object? channelDetailsId = freezed,
    Object? channelData = freezed,
    Object? deliveryCharge = freezed,
  }) {
    return _then(_$_InvoiceData(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      invoiceDate: freezed == invoiceDate
          ? _value.invoiceDate
          : invoiceDate // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceTime: freezed == invoiceTime
          ? _value.invoiceTime
          : invoiceTime // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceCode: freezed == invoiceCode
          ? _value.invoiceCode
          : invoiceCode // ignore: cast_nullable_to_non_nullable
              as String?,
      linesCallcenter: freezed == linesCallcenter
          ? _value._linesCallcenter
          : linesCallcenter // ignore: cast_nullable_to_non_nullable
              as List<LinesInvoiceCallcenter>?,
      invoiceLinesCallcenter: freezed == invoiceLinesCallcenter
          ? _value._invoiceLinesCallcenter
          : invoiceLinesCallcenter // ignore: cast_nullable_to_non_nullable
              as List<LinesInvoiceCallcenter>?,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int?,
      orderCode: freezed == orderCode
          ? _value.orderCode
          : orderCode // ignore: cast_nullable_to_non_nullable
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
      totalLineCount: freezed == totalLineCount
          ? _value.totalLineCount
          : totalLineCount // ignore: cast_nullable_to_non_nullable
              as double?,
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
      totalAmount: freezed == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
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
      customerGroupcode: freezed == customerGroupcode
          ? _value.customerGroupcode
          : customerGroupcode // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      remarks: freezed == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
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
      deliveryCharge: freezed == deliveryCharge
          ? _value.deliveryCharge
          : deliveryCharge // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InvoiceData implements _InvoiceData {
  const _$_InvoiceData(
      {this.id,
      @JsonKey(name: "invoiced_date") this.invoiceDate,
      @JsonKey(name: "invoice_time") this.invoiceTime,
      @JsonKey(name: "invoice_code") this.invoiceCode,
      @JsonKey(name: "lines")
      final List<LinesInvoiceCallcenter>? linesCallcenter,
      @JsonKey(name: "invoice_line")
      final List<LinesInvoiceCallcenter>? invoiceLinesCallcenter,
      @JsonKey(name: "order_id") this.orderId,
      @JsonKey(name: "order_code") this.orderCode,
      @JsonKey(name: "order_type") this.orderType,
      @JsonKey(name: "customer_code") this.customerCode,
      @JsonKey(name: "customer_name") this.customerName,
      @JsonKey(name: "customer_mail_id") this.customerMailId,
      @JsonKey(name: "customer_trn_number") this.customerTrn,
      @JsonKey(name: "shipping_address_id") this.shippingId,
      @JsonKey(name: "total_line_count") this.totalLineCount,
      @JsonKey(name: "billing_address_id") this.billingId,
      @JsonKey(name: "created_by") this.createdBy,
      @JsonKey(name: "discount") this.discount,
      @JsonKey(name: "vatable_amount") this.vatableAmount,
      @JsonKey(name: "total_amount") this.totalAmount,
      @JsonKey(name: "vat") this.vat,
      @JsonKey(name: "total") this.total,
      @JsonKey(name: "unit_cost") this.unitCost,
      @JsonKey(name: "is_holded") this.isHolded,
      @JsonKey(name: "selling_price") this.sellingPrice,
      @JsonKey(name: "order_satus") this.orderStatus,
      @JsonKey(name: "payment_status") this.paymentStatus,
      @JsonKey(name: "invoice_status") this.invoiceStatus,
      @JsonKey(name: "customer_group_code") this.customerGroupcode,
      @JsonKey(name: "notes") this.notes,
      @JsonKey(name: "remarks") this.remarks,
      @JsonKey(name: "last_edited_at") this.lastEditedAt,
      @JsonKey(name: "channel_details_id") this.channelDetailsId,
      @JsonKey(name: "channel_data") this.channelData,
      @JsonKey(name: "delivery_charge") this.deliveryCharge})
      : _linesCallcenter = linesCallcenter,
        _invoiceLinesCallcenter = invoiceLinesCallcenter;

  factory _$_InvoiceData.fromJson(Map<String, dynamic> json) =>
      _$$_InvoiceDataFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: "invoiced_date")
  final String? invoiceDate;
  @override
  @JsonKey(name: "invoice_time")
  final String? invoiceTime;
  @override
  @JsonKey(name: "invoice_code")
  final String? invoiceCode;
  final List<LinesInvoiceCallcenter>? _linesCallcenter;
  @override
  @JsonKey(name: "lines")
  List<LinesInvoiceCallcenter>? get linesCallcenter {
    final value = _linesCallcenter;
    if (value == null) return null;
    if (_linesCallcenter is EqualUnmodifiableListView) return _linesCallcenter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<LinesInvoiceCallcenter>? _invoiceLinesCallcenter;
  @override
  @JsonKey(name: "invoice_line")
  List<LinesInvoiceCallcenter>? get invoiceLinesCallcenter {
    final value = _invoiceLinesCallcenter;
    if (value == null) return null;
    if (_invoiceLinesCallcenter is EqualUnmodifiableListView)
      return _invoiceLinesCallcenter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "order_id")
  final int? orderId;
  @override
  @JsonKey(name: "order_code")
  final String? orderCode;
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
  @JsonKey(name: "customer_mail_id")
  final String? customerMailId;
  @override
  @JsonKey(name: "customer_trn_number")
  final String? customerTrn;
  @override
  @JsonKey(name: "shipping_address_id")
  final int? shippingId;
  @override
  @JsonKey(name: "total_line_count")
  final double? totalLineCount;
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
  @JsonKey(name: "total_amount")
  final double? totalAmount;
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
  @JsonKey(name: "customer_group_code")
  final String? customerGroupcode;
  @override
  @JsonKey(name: "notes")
  final String? notes;
  @override
  @JsonKey(name: "remarks")
  final String? remarks;
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
  @JsonKey(name: "delivery_charge")
  final double? deliveryCharge;

  @override
  String toString() {
    return 'InvoiceData(id: $id, invoiceDate: $invoiceDate, invoiceTime: $invoiceTime, invoiceCode: $invoiceCode, linesCallcenter: $linesCallcenter, invoiceLinesCallcenter: $invoiceLinesCallcenter, orderId: $orderId, orderCode: $orderCode, orderType: $orderType, customerCode: $customerCode, customerName: $customerName, customerMailId: $customerMailId, customerTrn: $customerTrn, shippingId: $shippingId, totalLineCount: $totalLineCount, billingId: $billingId, createdBy: $createdBy, discount: $discount, vatableAmount: $vatableAmount, totalAmount: $totalAmount, vat: $vat, total: $total, unitCost: $unitCost, isHolded: $isHolded, sellingPrice: $sellingPrice, orderStatus: $orderStatus, paymentStatus: $paymentStatus, invoiceStatus: $invoiceStatus, customerGroupcode: $customerGroupcode, notes: $notes, remarks: $remarks, lastEditedAt: $lastEditedAt, channelDetailsId: $channelDetailsId, channelData: $channelData, deliveryCharge: $deliveryCharge)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvoiceData &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.invoiceDate, invoiceDate) ||
                other.invoiceDate == invoiceDate) &&
            (identical(other.invoiceTime, invoiceTime) ||
                other.invoiceTime == invoiceTime) &&
            (identical(other.invoiceCode, invoiceCode) ||
                other.invoiceCode == invoiceCode) &&
            const DeepCollectionEquality()
                .equals(other._linesCallcenter, _linesCallcenter) &&
            const DeepCollectionEquality().equals(
                other._invoiceLinesCallcenter, _invoiceLinesCallcenter) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.orderCode, orderCode) ||
                other.orderCode == orderCode) &&
            (identical(other.orderType, orderType) ||
                other.orderType == orderType) &&
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
            (identical(other.totalLineCount, totalLineCount) ||
                other.totalLineCount == totalLineCount) &&
            (identical(other.billingId, billingId) ||
                other.billingId == billingId) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.vatableAmount, vatableAmount) ||
                other.vatableAmount == vatableAmount) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
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
            (identical(other.customerGroupcode, customerGroupcode) ||
                other.customerGroupcode == customerGroupcode) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.remarks, remarks) || other.remarks == remarks) &&
            (identical(other.lastEditedAt, lastEditedAt) ||
                other.lastEditedAt == lastEditedAt) &&
            (identical(other.channelDetailsId, channelDetailsId) ||
                other.channelDetailsId == channelDetailsId) &&
            (identical(other.channelData, channelData) ||
                other.channelData == channelData) &&
            (identical(other.deliveryCharge, deliveryCharge) ||
                other.deliveryCharge == deliveryCharge));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        invoiceDate,
        invoiceTime,
        invoiceCode,
        const DeepCollectionEquality().hash(_linesCallcenter),
        const DeepCollectionEquality().hash(_invoiceLinesCallcenter),
        orderId,
        orderCode,
        orderType,
        customerCode,
        customerName,
        customerMailId,
        customerTrn,
        shippingId,
        totalLineCount,
        billingId,
        createdBy,
        discount,
        vatableAmount,
        totalAmount,
        vat,
        total,
        unitCost,
        isHolded,
        sellingPrice,
        orderStatus,
        paymentStatus,
        invoiceStatus,
        customerGroupcode,
        notes,
        remarks,
        lastEditedAt,
        channelDetailsId,
        channelData,
        deliveryCharge
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InvoiceDataCopyWith<_$_InvoiceData> get copyWith =>
      __$$_InvoiceDataCopyWithImpl<_$_InvoiceData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InvoiceDataToJson(
      this,
    );
  }
}

abstract class _InvoiceData implements InvoiceData {
  const factory _InvoiceData(
          {final int? id,
          @JsonKey(name: "invoiced_date") final String? invoiceDate,
          @JsonKey(name: "invoice_time") final String? invoiceTime,
          @JsonKey(name: "invoice_code") final String? invoiceCode,
          @JsonKey(name: "lines")
          final List<LinesInvoiceCallcenter>? linesCallcenter,
          @JsonKey(name: "invoice_line")
          final List<LinesInvoiceCallcenter>? invoiceLinesCallcenter,
          @JsonKey(name: "order_id") final int? orderId,
          @JsonKey(name: "order_code") final String? orderCode,
          @JsonKey(name: "order_type") final String? orderType,
          @JsonKey(name: "customer_code") final String? customerCode,
          @JsonKey(name: "customer_name") final String? customerName,
          @JsonKey(name: "customer_mail_id") final String? customerMailId,
          @JsonKey(name: "customer_trn_number") final String? customerTrn,
          @JsonKey(name: "shipping_address_id") final int? shippingId,
          @JsonKey(name: "total_line_count") final double? totalLineCount,
          @JsonKey(name: "billing_address_id") final int? billingId,
          @JsonKey(name: "created_by") final String? createdBy,
          @JsonKey(name: "discount") final double? discount,
          @JsonKey(name: "vatable_amount") final double? vatableAmount,
          @JsonKey(name: "total_amount") final double? totalAmount,
          @JsonKey(name: "vat") final double? vat,
          @JsonKey(name: "total") final double? total,
          @JsonKey(name: "unit_cost") final double? unitCost,
          @JsonKey(name: "is_holded") final bool? isHolded,
          @JsonKey(name: "selling_price") final double? sellingPrice,
          @JsonKey(name: "order_satus") final String? orderStatus,
          @JsonKey(name: "payment_status") final String? paymentStatus,
          @JsonKey(name: "invoice_status") final String? invoiceStatus,
          @JsonKey(name: "customer_group_code") final String? customerGroupcode,
          @JsonKey(name: "notes") final String? notes,
          @JsonKey(name: "remarks") final String? remarks,
          @JsonKey(name: "last_edited_at") final String? lastEditedAt,
          @JsonKey(name: "channel_details_id") final int? channelDetailsId,
          @JsonKey(name: "channel_data") final ChannelData? channelData,
          @JsonKey(name: "delivery_charge") final double? deliveryCharge}) =
      _$_InvoiceData;

  factory _InvoiceData.fromJson(Map<String, dynamic> json) =
      _$_InvoiceData.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: "invoiced_date")
  String? get invoiceDate;
  @override
  @JsonKey(name: "invoice_time")
  String? get invoiceTime;
  @override
  @JsonKey(name: "invoice_code")
  String? get invoiceCode;
  @override
  @JsonKey(name: "lines")
  List<LinesInvoiceCallcenter>? get linesCallcenter;
  @override
  @JsonKey(name: "invoice_line")
  List<LinesInvoiceCallcenter>? get invoiceLinesCallcenter;
  @override
  @JsonKey(name: "order_id")
  int? get orderId;
  @override
  @JsonKey(name: "order_code")
  String? get orderCode;
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
  @JsonKey(name: "customer_mail_id")
  String? get customerMailId;
  @override
  @JsonKey(name: "customer_trn_number")
  String? get customerTrn;
  @override
  @JsonKey(name: "shipping_address_id")
  int? get shippingId;
  @override
  @JsonKey(name: "total_line_count")
  double? get totalLineCount;
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
  @JsonKey(name: "total_amount")
  double? get totalAmount;
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
  @JsonKey(name: "customer_group_code")
  String? get customerGroupcode;
  @override
  @JsonKey(name: "notes")
  String? get notes;
  @override
  @JsonKey(name: "remarks")
  String? get remarks;
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
  @JsonKey(name: "delivery_charge")
  double? get deliveryCharge;
  @override
  @JsonKey(ignore: true)
  _$$_InvoiceDataCopyWith<_$_InvoiceData> get copyWith =>
      throw _privateConstructorUsedError;
}

LinesInvoiceCallcenter _$LinesInvoiceCallcenterFromJson(
    Map<String, dynamic> json) {
  return _LinesInvoiceCallcenter.fromJson(json);
}

/// @nodoc
mixin _$LinesInvoiceCallcenter {
  int? get id => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: "line_code")
  String? get lineCode => throw _privateConstructorUsedError;
  @JsonKey(name: "invoice_line_code")
  String? get invoiceLineCode => throw _privateConstructorUsedError;
  @JsonKey(name: "variant_id")
  int? get variantId => throw _privateConstructorUsedError;
  @JsonKey(name: "variant_code")
  String? get variantCode => throw _privateConstructorUsedError;
  @JsonKey(name: "variant_name")
  String? get variantName => throw _privateConstructorUsedError;
  @JsonKey(name: "barcode")
  String? get barcode => throw _privateConstructorUsedError;
  @JsonKey(name: "uom_id")
  int? get uomId => throw _privateConstructorUsedError;
  @JsonKey(name: "uom_name")
  String? get uomName => throw _privateConstructorUsedError;
  @JsonKey(name: "selling_price")
  double? get sellingPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "quantity")
  int? get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: "unit_cost")
  double? get unitcost => throw _privateConstructorUsedError;
  @JsonKey(name: "delivery_charge")
  double? get deliveryCharge => throw _privateConstructorUsedError;
  @JsonKey(name: "delivery_slot_id")
  int? get deliverySlotID => throw _privateConstructorUsedError;
  @JsonKey(name: "discount")
  double? get discount => throw _privateConstructorUsedError;
  @JsonKey(name: "amount")
  double? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: "vatable_amount")
  double? get vatableAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "vat")
  double? get vat => throw _privateConstructorUsedError;
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
  @JsonKey(name: "return_time")
  double? get returnTime => throw _privateConstructorUsedError;
  @JsonKey(name: "is_invoiced")
  bool? get isInvoiced => throw _privateConstructorUsedError;
  @JsonKey(name: "discount_based_on")
  String? get dicountBasedOn => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active")
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "last_edited_at")
  String? get lastEditedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "order_id")
  int? get orderId => throw _privateConstructorUsedError;
  @JsonKey(name: "invoice_id")
  int? get invoiceId => throw _privateConstructorUsedError;
  @JsonKey(name: "order_line_id")
  int? get orderlineId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LinesInvoiceCallcenterCopyWith<LinesInvoiceCallcenter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinesInvoiceCallcenterCopyWith<$Res> {
  factory $LinesInvoiceCallcenterCopyWith(LinesInvoiceCallcenter value,
          $Res Function(LinesInvoiceCallcenter) then) =
      _$LinesInvoiceCallcenterCopyWithImpl<$Res, LinesInvoiceCallcenter>;
  @useResult
  $Res call(
      {int? id,
      String? image,
      @JsonKey(name: "line_code") String? lineCode,
      @JsonKey(name: "invoice_line_code") String? invoiceLineCode,
      @JsonKey(name: "variant_id") int? variantId,
      @JsonKey(name: "variant_code") String? variantCode,
      @JsonKey(name: "variant_name") String? variantName,
      @JsonKey(name: "barcode") String? barcode,
      @JsonKey(name: "uom_id") int? uomId,
      @JsonKey(name: "uom_name") String? uomName,
      @JsonKey(name: "selling_price") double? sellingPrice,
      @JsonKey(name: "quantity") int? quantity,
      @JsonKey(name: "unit_cost") double? unitcost,
      @JsonKey(name: "delivery_charge") double? deliveryCharge,
      @JsonKey(name: "delivery_slot_id") int? deliverySlotID,
      @JsonKey(name: "discount") double? discount,
      @JsonKey(name: "amount") double? amount,
      @JsonKey(name: "vatable_amount") double? vatableAmount,
      @JsonKey(name: "vat") double? vat,
      @JsonKey(name: "total_amount") double? totalAmount,
      @JsonKey(name: "warranty_price") double? warrantyPrice,
      @JsonKey(name: "warranty_id") int? warrantyId,
      @JsonKey(name: "shipping_address_id") int? shippingId,
      @JsonKey(name: "return_type") String? returnType,
      @JsonKey(name: "return_time") double? returnTime,
      @JsonKey(name: "is_invoiced") bool? isInvoiced,
      @JsonKey(name: "discount_based_on") String? dicountBasedOn,
      @JsonKey(name: "is_active") bool? isActive,
      @JsonKey(name: "last_edited_at") String? lastEditedAt,
      @JsonKey(name: "order_id") int? orderId,
      @JsonKey(name: "invoice_id") int? invoiceId,
      @JsonKey(name: "order_line_id") int? orderlineId});
}

/// @nodoc
class _$LinesInvoiceCallcenterCopyWithImpl<$Res,
        $Val extends LinesInvoiceCallcenter>
    implements $LinesInvoiceCallcenterCopyWith<$Res> {
  _$LinesInvoiceCallcenterCopyWithImpl(this._value, this._then);

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
    Object? invoiceLineCode = freezed,
    Object? variantId = freezed,
    Object? variantCode = freezed,
    Object? variantName = freezed,
    Object? barcode = freezed,
    Object? uomId = freezed,
    Object? uomName = freezed,
    Object? sellingPrice = freezed,
    Object? quantity = freezed,
    Object? unitcost = freezed,
    Object? deliveryCharge = freezed,
    Object? deliverySlotID = freezed,
    Object? discount = freezed,
    Object? amount = freezed,
    Object? vatableAmount = freezed,
    Object? vat = freezed,
    Object? totalAmount = freezed,
    Object? warrantyPrice = freezed,
    Object? warrantyId = freezed,
    Object? shippingId = freezed,
    Object? returnType = freezed,
    Object? returnTime = freezed,
    Object? isInvoiced = freezed,
    Object? dicountBasedOn = freezed,
    Object? isActive = freezed,
    Object? lastEditedAt = freezed,
    Object? orderId = freezed,
    Object? invoiceId = freezed,
    Object? orderlineId = freezed,
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
      invoiceLineCode: freezed == invoiceLineCode
          ? _value.invoiceLineCode
          : invoiceLineCode // ignore: cast_nullable_to_non_nullable
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
      sellingPrice: freezed == sellingPrice
          ? _value.sellingPrice
          : sellingPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      unitcost: freezed == unitcost
          ? _value.unitcost
          : unitcost // ignore: cast_nullable_to_non_nullable
              as double?,
      deliveryCharge: freezed == deliveryCharge
          ? _value.deliveryCharge
          : deliveryCharge // ignore: cast_nullable_to_non_nullable
              as double?,
      deliverySlotID: freezed == deliverySlotID
          ? _value.deliverySlotID
          : deliverySlotID // ignore: cast_nullable_to_non_nullable
              as int?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      vatableAmount: freezed == vatableAmount
          ? _value.vatableAmount
          : vatableAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
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
      returnTime: freezed == returnTime
          ? _value.returnTime
          : returnTime // ignore: cast_nullable_to_non_nullable
              as double?,
      isInvoiced: freezed == isInvoiced
          ? _value.isInvoiced
          : isInvoiced // ignore: cast_nullable_to_non_nullable
              as bool?,
      dicountBasedOn: freezed == dicountBasedOn
          ? _value.dicountBasedOn
          : dicountBasedOn // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      lastEditedAt: freezed == lastEditedAt
          ? _value.lastEditedAt
          : lastEditedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int?,
      invoiceId: freezed == invoiceId
          ? _value.invoiceId
          : invoiceId // ignore: cast_nullable_to_non_nullable
              as int?,
      orderlineId: freezed == orderlineId
          ? _value.orderlineId
          : orderlineId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LinesInvoiceCallcenterCopyWith<$Res>
    implements $LinesInvoiceCallcenterCopyWith<$Res> {
  factory _$$_LinesInvoiceCallcenterCopyWith(_$_LinesInvoiceCallcenter value,
          $Res Function(_$_LinesInvoiceCallcenter) then) =
      __$$_LinesInvoiceCallcenterCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? image,
      @JsonKey(name: "line_code") String? lineCode,
      @JsonKey(name: "invoice_line_code") String? invoiceLineCode,
      @JsonKey(name: "variant_id") int? variantId,
      @JsonKey(name: "variant_code") String? variantCode,
      @JsonKey(name: "variant_name") String? variantName,
      @JsonKey(name: "barcode") String? barcode,
      @JsonKey(name: "uom_id") int? uomId,
      @JsonKey(name: "uom_name") String? uomName,
      @JsonKey(name: "selling_price") double? sellingPrice,
      @JsonKey(name: "quantity") int? quantity,
      @JsonKey(name: "unit_cost") double? unitcost,
      @JsonKey(name: "delivery_charge") double? deliveryCharge,
      @JsonKey(name: "delivery_slot_id") int? deliverySlotID,
      @JsonKey(name: "discount") double? discount,
      @JsonKey(name: "amount") double? amount,
      @JsonKey(name: "vatable_amount") double? vatableAmount,
      @JsonKey(name: "vat") double? vat,
      @JsonKey(name: "total_amount") double? totalAmount,
      @JsonKey(name: "warranty_price") double? warrantyPrice,
      @JsonKey(name: "warranty_id") int? warrantyId,
      @JsonKey(name: "shipping_address_id") int? shippingId,
      @JsonKey(name: "return_type") String? returnType,
      @JsonKey(name: "return_time") double? returnTime,
      @JsonKey(name: "is_invoiced") bool? isInvoiced,
      @JsonKey(name: "discount_based_on") String? dicountBasedOn,
      @JsonKey(name: "is_active") bool? isActive,
      @JsonKey(name: "last_edited_at") String? lastEditedAt,
      @JsonKey(name: "order_id") int? orderId,
      @JsonKey(name: "invoice_id") int? invoiceId,
      @JsonKey(name: "order_line_id") int? orderlineId});
}

/// @nodoc
class __$$_LinesInvoiceCallcenterCopyWithImpl<$Res>
    extends _$LinesInvoiceCallcenterCopyWithImpl<$Res,
        _$_LinesInvoiceCallcenter>
    implements _$$_LinesInvoiceCallcenterCopyWith<$Res> {
  __$$_LinesInvoiceCallcenterCopyWithImpl(_$_LinesInvoiceCallcenter _value,
      $Res Function(_$_LinesInvoiceCallcenter) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? lineCode = freezed,
    Object? invoiceLineCode = freezed,
    Object? variantId = freezed,
    Object? variantCode = freezed,
    Object? variantName = freezed,
    Object? barcode = freezed,
    Object? uomId = freezed,
    Object? uomName = freezed,
    Object? sellingPrice = freezed,
    Object? quantity = freezed,
    Object? unitcost = freezed,
    Object? deliveryCharge = freezed,
    Object? deliverySlotID = freezed,
    Object? discount = freezed,
    Object? amount = freezed,
    Object? vatableAmount = freezed,
    Object? vat = freezed,
    Object? totalAmount = freezed,
    Object? warrantyPrice = freezed,
    Object? warrantyId = freezed,
    Object? shippingId = freezed,
    Object? returnType = freezed,
    Object? returnTime = freezed,
    Object? isInvoiced = freezed,
    Object? dicountBasedOn = freezed,
    Object? isActive = freezed,
    Object? lastEditedAt = freezed,
    Object? orderId = freezed,
    Object? invoiceId = freezed,
    Object? orderlineId = freezed,
  }) {
    return _then(_$_LinesInvoiceCallcenter(
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
      invoiceLineCode: freezed == invoiceLineCode
          ? _value.invoiceLineCode
          : invoiceLineCode // ignore: cast_nullable_to_non_nullable
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
      sellingPrice: freezed == sellingPrice
          ? _value.sellingPrice
          : sellingPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      unitcost: freezed == unitcost
          ? _value.unitcost
          : unitcost // ignore: cast_nullable_to_non_nullable
              as double?,
      deliveryCharge: freezed == deliveryCharge
          ? _value.deliveryCharge
          : deliveryCharge // ignore: cast_nullable_to_non_nullable
              as double?,
      deliverySlotID: freezed == deliverySlotID
          ? _value.deliverySlotID
          : deliverySlotID // ignore: cast_nullable_to_non_nullable
              as int?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      vatableAmount: freezed == vatableAmount
          ? _value.vatableAmount
          : vatableAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
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
      returnTime: freezed == returnTime
          ? _value.returnTime
          : returnTime // ignore: cast_nullable_to_non_nullable
              as double?,
      isInvoiced: freezed == isInvoiced
          ? _value.isInvoiced
          : isInvoiced // ignore: cast_nullable_to_non_nullable
              as bool?,
      dicountBasedOn: freezed == dicountBasedOn
          ? _value.dicountBasedOn
          : dicountBasedOn // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      lastEditedAt: freezed == lastEditedAt
          ? _value.lastEditedAt
          : lastEditedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int?,
      invoiceId: freezed == invoiceId
          ? _value.invoiceId
          : invoiceId // ignore: cast_nullable_to_non_nullable
              as int?,
      orderlineId: freezed == orderlineId
          ? _value.orderlineId
          : orderlineId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LinesInvoiceCallcenter implements _LinesInvoiceCallcenter {
  const _$_LinesInvoiceCallcenter(
      {this.id,
      this.image,
      @JsonKey(name: "line_code") this.lineCode,
      @JsonKey(name: "invoice_line_code") this.invoiceLineCode,
      @JsonKey(name: "variant_id") this.variantId,
      @JsonKey(name: "variant_code") this.variantCode,
      @JsonKey(name: "variant_name") this.variantName,
      @JsonKey(name: "barcode") this.barcode,
      @JsonKey(name: "uom_id") this.uomId,
      @JsonKey(name: "uom_name") this.uomName,
      @JsonKey(name: "selling_price") this.sellingPrice,
      @JsonKey(name: "quantity") this.quantity,
      @JsonKey(name: "unit_cost") this.unitcost,
      @JsonKey(name: "delivery_charge") this.deliveryCharge,
      @JsonKey(name: "delivery_slot_id") this.deliverySlotID,
      @JsonKey(name: "discount") this.discount,
      @JsonKey(name: "amount") this.amount,
      @JsonKey(name: "vatable_amount") this.vatableAmount,
      @JsonKey(name: "vat") this.vat,
      @JsonKey(name: "total_amount") this.totalAmount,
      @JsonKey(name: "warranty_price") this.warrantyPrice,
      @JsonKey(name: "warranty_id") this.warrantyId,
      @JsonKey(name: "shipping_address_id") this.shippingId,
      @JsonKey(name: "return_type") this.returnType,
      @JsonKey(name: "return_time") this.returnTime,
      @JsonKey(name: "is_invoiced") this.isInvoiced,
      @JsonKey(name: "discount_based_on") this.dicountBasedOn,
      @JsonKey(name: "is_active") this.isActive,
      @JsonKey(name: "last_edited_at") this.lastEditedAt,
      @JsonKey(name: "order_id") this.orderId,
      @JsonKey(name: "invoice_id") this.invoiceId,
      @JsonKey(name: "order_line_id") this.orderlineId});

  factory _$_LinesInvoiceCallcenter.fromJson(Map<String, dynamic> json) =>
      _$$_LinesInvoiceCallcenterFromJson(json);

  @override
  final int? id;
  @override
  final String? image;
  @override
  @JsonKey(name: "line_code")
  final String? lineCode;
  @override
  @JsonKey(name: "invoice_line_code")
  final String? invoiceLineCode;
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
  @JsonKey(name: "barcode")
  final String? barcode;
  @override
  @JsonKey(name: "uom_id")
  final int? uomId;
  @override
  @JsonKey(name: "uom_name")
  final String? uomName;
  @override
  @JsonKey(name: "selling_price")
  final double? sellingPrice;
  @override
  @JsonKey(name: "quantity")
  final int? quantity;
  @override
  @JsonKey(name: "unit_cost")
  final double? unitcost;
  @override
  @JsonKey(name: "delivery_charge")
  final double? deliveryCharge;
  @override
  @JsonKey(name: "delivery_slot_id")
  final int? deliverySlotID;
  @override
  @JsonKey(name: "discount")
  final double? discount;
  @override
  @JsonKey(name: "amount")
  final double? amount;
  @override
  @JsonKey(name: "vatable_amount")
  final double? vatableAmount;
  @override
  @JsonKey(name: "vat")
  final double? vat;
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
  @JsonKey(name: "return_time")
  final double? returnTime;
  @override
  @JsonKey(name: "is_invoiced")
  final bool? isInvoiced;
  @override
  @JsonKey(name: "discount_based_on")
  final String? dicountBasedOn;
  @override
  @JsonKey(name: "is_active")
  final bool? isActive;
  @override
  @JsonKey(name: "last_edited_at")
  final String? lastEditedAt;
  @override
  @JsonKey(name: "order_id")
  final int? orderId;
  @override
  @JsonKey(name: "invoice_id")
  final int? invoiceId;
  @override
  @JsonKey(name: "order_line_id")
  final int? orderlineId;

  @override
  String toString() {
    return 'LinesInvoiceCallcenter(id: $id, image: $image, lineCode: $lineCode, invoiceLineCode: $invoiceLineCode, variantId: $variantId, variantCode: $variantCode, variantName: $variantName, barcode: $barcode, uomId: $uomId, uomName: $uomName, sellingPrice: $sellingPrice, quantity: $quantity, unitcost: $unitcost, deliveryCharge: $deliveryCharge, deliverySlotID: $deliverySlotID, discount: $discount, amount: $amount, vatableAmount: $vatableAmount, vat: $vat, totalAmount: $totalAmount, warrantyPrice: $warrantyPrice, warrantyId: $warrantyId, shippingId: $shippingId, returnType: $returnType, returnTime: $returnTime, isInvoiced: $isInvoiced, dicountBasedOn: $dicountBasedOn, isActive: $isActive, lastEditedAt: $lastEditedAt, orderId: $orderId, invoiceId: $invoiceId, orderlineId: $orderlineId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LinesInvoiceCallcenter &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.lineCode, lineCode) ||
                other.lineCode == lineCode) &&
            (identical(other.invoiceLineCode, invoiceLineCode) ||
                other.invoiceLineCode == invoiceLineCode) &&
            (identical(other.variantId, variantId) ||
                other.variantId == variantId) &&
            (identical(other.variantCode, variantCode) ||
                other.variantCode == variantCode) &&
            (identical(other.variantName, variantName) ||
                other.variantName == variantName) &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(other.uomId, uomId) || other.uomId == uomId) &&
            (identical(other.uomName, uomName) || other.uomName == uomName) &&
            (identical(other.sellingPrice, sellingPrice) ||
                other.sellingPrice == sellingPrice) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unitcost, unitcost) ||
                other.unitcost == unitcost) &&
            (identical(other.deliveryCharge, deliveryCharge) ||
                other.deliveryCharge == deliveryCharge) &&
            (identical(other.deliverySlotID, deliverySlotID) ||
                other.deliverySlotID == deliverySlotID) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.vatableAmount, vatableAmount) ||
                other.vatableAmount == vatableAmount) &&
            (identical(other.vat, vat) || other.vat == vat) &&
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
            (identical(other.returnTime, returnTime) ||
                other.returnTime == returnTime) &&
            (identical(other.isInvoiced, isInvoiced) ||
                other.isInvoiced == isInvoiced) &&
            (identical(other.dicountBasedOn, dicountBasedOn) ||
                other.dicountBasedOn == dicountBasedOn) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.lastEditedAt, lastEditedAt) ||
                other.lastEditedAt == lastEditedAt) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.invoiceId, invoiceId) ||
                other.invoiceId == invoiceId) &&
            (identical(other.orderlineId, orderlineId) ||
                other.orderlineId == orderlineId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        image,
        lineCode,
        invoiceLineCode,
        variantId,
        variantCode,
        variantName,
        barcode,
        uomId,
        uomName,
        sellingPrice,
        quantity,
        unitcost,
        deliveryCharge,
        deliverySlotID,
        discount,
        amount,
        vatableAmount,
        vat,
        totalAmount,
        warrantyPrice,
        warrantyId,
        shippingId,
        returnType,
        returnTime,
        isInvoiced,
        dicountBasedOn,
        isActive,
        lastEditedAt,
        orderId,
        invoiceId,
        orderlineId
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LinesInvoiceCallcenterCopyWith<_$_LinesInvoiceCallcenter> get copyWith =>
      __$$_LinesInvoiceCallcenterCopyWithImpl<_$_LinesInvoiceCallcenter>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LinesInvoiceCallcenterToJson(
      this,
    );
  }
}

abstract class _LinesInvoiceCallcenter implements LinesInvoiceCallcenter {
  const factory _LinesInvoiceCallcenter(
          {final int? id,
          final String? image,
          @JsonKey(name: "line_code") final String? lineCode,
          @JsonKey(name: "invoice_line_code") final String? invoiceLineCode,
          @JsonKey(name: "variant_id") final int? variantId,
          @JsonKey(name: "variant_code") final String? variantCode,
          @JsonKey(name: "variant_name") final String? variantName,
          @JsonKey(name: "barcode") final String? barcode,
          @JsonKey(name: "uom_id") final int? uomId,
          @JsonKey(name: "uom_name") final String? uomName,
          @JsonKey(name: "selling_price") final double? sellingPrice,
          @JsonKey(name: "quantity") final int? quantity,
          @JsonKey(name: "unit_cost") final double? unitcost,
          @JsonKey(name: "delivery_charge") final double? deliveryCharge,
          @JsonKey(name: "delivery_slot_id") final int? deliverySlotID,
          @JsonKey(name: "discount") final double? discount,
          @JsonKey(name: "amount") final double? amount,
          @JsonKey(name: "vatable_amount") final double? vatableAmount,
          @JsonKey(name: "vat") final double? vat,
          @JsonKey(name: "total_amount") final double? totalAmount,
          @JsonKey(name: "warranty_price") final double? warrantyPrice,
          @JsonKey(name: "warranty_id") final int? warrantyId,
          @JsonKey(name: "shipping_address_id") final int? shippingId,
          @JsonKey(name: "return_type") final String? returnType,
          @JsonKey(name: "return_time") final double? returnTime,
          @JsonKey(name: "is_invoiced") final bool? isInvoiced,
          @JsonKey(name: "discount_based_on") final String? dicountBasedOn,
          @JsonKey(name: "is_active") final bool? isActive,
          @JsonKey(name: "last_edited_at") final String? lastEditedAt,
          @JsonKey(name: "order_id") final int? orderId,
          @JsonKey(name: "invoice_id") final int? invoiceId,
          @JsonKey(name: "order_line_id") final int? orderlineId}) =
      _$_LinesInvoiceCallcenter;

  factory _LinesInvoiceCallcenter.fromJson(Map<String, dynamic> json) =
      _$_LinesInvoiceCallcenter.fromJson;

  @override
  int? get id;
  @override
  String? get image;
  @override
  @JsonKey(name: "line_code")
  String? get lineCode;
  @override
  @JsonKey(name: "invoice_line_code")
  String? get invoiceLineCode;
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
  @JsonKey(name: "barcode")
  String? get barcode;
  @override
  @JsonKey(name: "uom_id")
  int? get uomId;
  @override
  @JsonKey(name: "uom_name")
  String? get uomName;
  @override
  @JsonKey(name: "selling_price")
  double? get sellingPrice;
  @override
  @JsonKey(name: "quantity")
  int? get quantity;
  @override
  @JsonKey(name: "unit_cost")
  double? get unitcost;
  @override
  @JsonKey(name: "delivery_charge")
  double? get deliveryCharge;
  @override
  @JsonKey(name: "delivery_slot_id")
  int? get deliverySlotID;
  @override
  @JsonKey(name: "discount")
  double? get discount;
  @override
  @JsonKey(name: "amount")
  double? get amount;
  @override
  @JsonKey(name: "vatable_amount")
  double? get vatableAmount;
  @override
  @JsonKey(name: "vat")
  double? get vat;
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
  @JsonKey(name: "return_time")
  double? get returnTime;
  @override
  @JsonKey(name: "is_invoiced")
  bool? get isInvoiced;
  @override
  @JsonKey(name: "discount_based_on")
  String? get dicountBasedOn;
  @override
  @JsonKey(name: "is_active")
  bool? get isActive;
  @override
  @JsonKey(name: "last_edited_at")
  String? get lastEditedAt;
  @override
  @JsonKey(name: "order_id")
  int? get orderId;
  @override
  @JsonKey(name: "invoice_id")
  int? get invoiceId;
  @override
  @JsonKey(name: "order_line_id")
  int? get orderlineId;
  @override
  @JsonKey(ignore: true)
  _$$_LinesInvoiceCallcenterCopyWith<_$_LinesInvoiceCallcenter> get copyWith =>
      throw _privateConstructorUsedError;
}
