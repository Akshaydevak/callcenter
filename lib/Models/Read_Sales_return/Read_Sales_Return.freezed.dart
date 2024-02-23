// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'Read_Sales_Return.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReadSalesReturn _$ReadSalesReturnFromJson(Map<String, dynamic> json) {
  return _ReadSalesReturn.fromJson(json);
}

/// @nodoc
mixin _$ReadSalesReturn {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "order_lines")
  List<OrderLinesReturn>? get orderLines => throw _privateConstructorUsedError;
  @JsonKey(name: "order_type")
  String? get orderType => throw _privateConstructorUsedError;
  @JsonKey(name: "order_mode")
  String? get orderMode => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_return_order_code")
  String? get salesReturnOrderCode => throw _privateConstructorUsedError;
  @JsonKey(name: "purchase_return_order_code")
  String? get purchaseReturnOrderCode => throw _privateConstructorUsedError;
  @JsonKey(name: "returned_date")
  String? get returnedDate => throw _privateConstructorUsedError;
  @JsonKey(name: "inventory_id")
  String? get inventoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "vendor_code")
  String? get vendorCode => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_id")
  String? get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: "trn_number")
  String? get trnNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_invoice_id")
  String? get salesInvoiceId => throw _privateConstructorUsedError;
  @JsonKey(name: "shipping_address_id")
  String? get shippingAddressId => throw _privateConstructorUsedError;
  @JsonKey(name: "billing_address_id")
  String? get billingAddressId => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_id")
  String? get paymentId => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_status")
  String? get paymentStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "reason")
  String? get reason => throw _privateConstructorUsedError;
  @JsonKey(name: "remarks")
  String? get remarks => throw _privateConstructorUsedError;
  @JsonKey(name: "order_satus")
  String? get orderStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "invoice_status")
  String? get invoiceStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "discount")
  double? get discount => throw _privateConstructorUsedError;
  @JsonKey(name: "unit_cost")
  double? get unitCost => throw _privateConstructorUsedError;
  @JsonKey(name: "excess_tax")
  double? get excessTax => throw _privateConstructorUsedError;
  @JsonKey(name: "taxable_amount")
  double? get taxableAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "vat")
  double? get vat => throw _privateConstructorUsedError;
  @JsonKey(name: "return_price_total")
  double? get returnPriceTotal => throw _privateConstructorUsedError;
  @JsonKey(name: "total_price")
  double? get totalPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "edited_by")
  String? get editedBy => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_invoice_code")
  String? get salesInvoiceCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReadSalesReturnCopyWith<ReadSalesReturn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadSalesReturnCopyWith<$Res> {
  factory $ReadSalesReturnCopyWith(
          ReadSalesReturn value, $Res Function(ReadSalesReturn) then) =
      _$ReadSalesReturnCopyWithImpl<$Res, ReadSalesReturn>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "order_lines") List<OrderLinesReturn>? orderLines,
      @JsonKey(name: "order_type") String? orderType,
      @JsonKey(name: "order_mode") String? orderMode,
      @JsonKey(name: "sales_return_order_code") String? salesReturnOrderCode,
      @JsonKey(name: "purchase_return_order_code")
      String? purchaseReturnOrderCode,
      @JsonKey(name: "returned_date") String? returnedDate,
      @JsonKey(name: "inventory_id") String? inventoryId,
      @JsonKey(name: "vendor_code") String? vendorCode,
      @JsonKey(name: "customer_id") String? customerId,
      @JsonKey(name: "trn_number") String? trnNumber,
      @JsonKey(name: "sales_invoice_id") String? salesInvoiceId,
      @JsonKey(name: "shipping_address_id") String? shippingAddressId,
      @JsonKey(name: "billing_address_id") String? billingAddressId,
      @JsonKey(name: "payment_id") String? paymentId,
      @JsonKey(name: "payment_status") String? paymentStatus,
      @JsonKey(name: "reason") String? reason,
      @JsonKey(name: "remarks") String? remarks,
      @JsonKey(name: "order_satus") String? orderStatus,
      @JsonKey(name: "invoice_status") String? invoiceStatus,
      @JsonKey(name: "discount") double? discount,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "taxable_amount") double? taxableAmount,
      @JsonKey(name: "vat") double? vat,
      @JsonKey(name: "return_price_total") double? returnPriceTotal,
      @JsonKey(name: "total_price") double? totalPrice,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "edited_by") String? editedBy,
      @JsonKey(name: "sales_invoice_code") String? salesInvoiceCode});
}

/// @nodoc
class _$ReadSalesReturnCopyWithImpl<$Res, $Val extends ReadSalesReturn>
    implements $ReadSalesReturnCopyWith<$Res> {
  _$ReadSalesReturnCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? orderLines = freezed,
    Object? orderType = freezed,
    Object? orderMode = freezed,
    Object? salesReturnOrderCode = freezed,
    Object? purchaseReturnOrderCode = freezed,
    Object? returnedDate = freezed,
    Object? inventoryId = freezed,
    Object? vendorCode = freezed,
    Object? customerId = freezed,
    Object? trnNumber = freezed,
    Object? salesInvoiceId = freezed,
    Object? shippingAddressId = freezed,
    Object? billingAddressId = freezed,
    Object? paymentId = freezed,
    Object? paymentStatus = freezed,
    Object? reason = freezed,
    Object? remarks = freezed,
    Object? orderStatus = freezed,
    Object? invoiceStatus = freezed,
    Object? discount = freezed,
    Object? unitCost = freezed,
    Object? excessTax = freezed,
    Object? taxableAmount = freezed,
    Object? vat = freezed,
    Object? returnPriceTotal = freezed,
    Object? totalPrice = freezed,
    Object? status = freezed,
    Object? editedBy = freezed,
    Object? salesInvoiceCode = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      orderLines: freezed == orderLines
          ? _value.orderLines
          : orderLines // ignore: cast_nullable_to_non_nullable
              as List<OrderLinesReturn>?,
      orderType: freezed == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as String?,
      orderMode: freezed == orderMode
          ? _value.orderMode
          : orderMode // ignore: cast_nullable_to_non_nullable
              as String?,
      salesReturnOrderCode: freezed == salesReturnOrderCode
          ? _value.salesReturnOrderCode
          : salesReturnOrderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseReturnOrderCode: freezed == purchaseReturnOrderCode
          ? _value.purchaseReturnOrderCode
          : purchaseReturnOrderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      returnedDate: freezed == returnedDate
          ? _value.returnedDate
          : returnedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorCode: freezed == vendorCode
          ? _value.vendorCode
          : vendorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      trnNumber: freezed == trnNumber
          ? _value.trnNumber
          : trnNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      salesInvoiceId: freezed == salesInvoiceId
          ? _value.salesInvoiceId
          : salesInvoiceId // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingAddressId: freezed == shippingAddressId
          ? _value.shippingAddressId
          : shippingAddressId // ignore: cast_nullable_to_non_nullable
              as String?,
      billingAddressId: freezed == billingAddressId
          ? _value.billingAddressId
          : billingAddressId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      remarks: freezed == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      orderStatus: freezed == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceStatus: freezed == invoiceStatus
          ? _value.invoiceStatus
          : invoiceStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      unitCost: freezed == unitCost
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      excessTax: freezed == excessTax
          ? _value.excessTax
          : excessTax // ignore: cast_nullable_to_non_nullable
              as double?,
      taxableAmount: freezed == taxableAmount
          ? _value.taxableAmount
          : taxableAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      returnPriceTotal: freezed == returnPriceTotal
          ? _value.returnPriceTotal
          : returnPriceTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      editedBy: freezed == editedBy
          ? _value.editedBy
          : editedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      salesInvoiceCode: freezed == salesInvoiceCode
          ? _value.salesInvoiceCode
          : salesInvoiceCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReadSalesReturnCopyWith<$Res>
    implements $ReadSalesReturnCopyWith<$Res> {
  factory _$$_ReadSalesReturnCopyWith(
          _$_ReadSalesReturn value, $Res Function(_$_ReadSalesReturn) then) =
      __$$_ReadSalesReturnCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "order_lines") List<OrderLinesReturn>? orderLines,
      @JsonKey(name: "order_type") String? orderType,
      @JsonKey(name: "order_mode") String? orderMode,
      @JsonKey(name: "sales_return_order_code") String? salesReturnOrderCode,
      @JsonKey(name: "purchase_return_order_code")
      String? purchaseReturnOrderCode,
      @JsonKey(name: "returned_date") String? returnedDate,
      @JsonKey(name: "inventory_id") String? inventoryId,
      @JsonKey(name: "vendor_code") String? vendorCode,
      @JsonKey(name: "customer_id") String? customerId,
      @JsonKey(name: "trn_number") String? trnNumber,
      @JsonKey(name: "sales_invoice_id") String? salesInvoiceId,
      @JsonKey(name: "shipping_address_id") String? shippingAddressId,
      @JsonKey(name: "billing_address_id") String? billingAddressId,
      @JsonKey(name: "payment_id") String? paymentId,
      @JsonKey(name: "payment_status") String? paymentStatus,
      @JsonKey(name: "reason") String? reason,
      @JsonKey(name: "remarks") String? remarks,
      @JsonKey(name: "order_satus") String? orderStatus,
      @JsonKey(name: "invoice_status") String? invoiceStatus,
      @JsonKey(name: "discount") double? discount,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "taxable_amount") double? taxableAmount,
      @JsonKey(name: "vat") double? vat,
      @JsonKey(name: "return_price_total") double? returnPriceTotal,
      @JsonKey(name: "total_price") double? totalPrice,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "edited_by") String? editedBy,
      @JsonKey(name: "sales_invoice_code") String? salesInvoiceCode});
}

/// @nodoc
class __$$_ReadSalesReturnCopyWithImpl<$Res>
    extends _$ReadSalesReturnCopyWithImpl<$Res, _$_ReadSalesReturn>
    implements _$$_ReadSalesReturnCopyWith<$Res> {
  __$$_ReadSalesReturnCopyWithImpl(
      _$_ReadSalesReturn _value, $Res Function(_$_ReadSalesReturn) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? orderLines = freezed,
    Object? orderType = freezed,
    Object? orderMode = freezed,
    Object? salesReturnOrderCode = freezed,
    Object? purchaseReturnOrderCode = freezed,
    Object? returnedDate = freezed,
    Object? inventoryId = freezed,
    Object? vendorCode = freezed,
    Object? customerId = freezed,
    Object? trnNumber = freezed,
    Object? salesInvoiceId = freezed,
    Object? shippingAddressId = freezed,
    Object? billingAddressId = freezed,
    Object? paymentId = freezed,
    Object? paymentStatus = freezed,
    Object? reason = freezed,
    Object? remarks = freezed,
    Object? orderStatus = freezed,
    Object? invoiceStatus = freezed,
    Object? discount = freezed,
    Object? unitCost = freezed,
    Object? excessTax = freezed,
    Object? taxableAmount = freezed,
    Object? vat = freezed,
    Object? returnPriceTotal = freezed,
    Object? totalPrice = freezed,
    Object? status = freezed,
    Object? editedBy = freezed,
    Object? salesInvoiceCode = freezed,
  }) {
    return _then(_$_ReadSalesReturn(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      orderLines: freezed == orderLines
          ? _value._orderLines
          : orderLines // ignore: cast_nullable_to_non_nullable
              as List<OrderLinesReturn>?,
      orderType: freezed == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as String?,
      orderMode: freezed == orderMode
          ? _value.orderMode
          : orderMode // ignore: cast_nullable_to_non_nullable
              as String?,
      salesReturnOrderCode: freezed == salesReturnOrderCode
          ? _value.salesReturnOrderCode
          : salesReturnOrderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseReturnOrderCode: freezed == purchaseReturnOrderCode
          ? _value.purchaseReturnOrderCode
          : purchaseReturnOrderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      returnedDate: freezed == returnedDate
          ? _value.returnedDate
          : returnedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorCode: freezed == vendorCode
          ? _value.vendorCode
          : vendorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      trnNumber: freezed == trnNumber
          ? _value.trnNumber
          : trnNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      salesInvoiceId: freezed == salesInvoiceId
          ? _value.salesInvoiceId
          : salesInvoiceId // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingAddressId: freezed == shippingAddressId
          ? _value.shippingAddressId
          : shippingAddressId // ignore: cast_nullable_to_non_nullable
              as String?,
      billingAddressId: freezed == billingAddressId
          ? _value.billingAddressId
          : billingAddressId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      remarks: freezed == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      orderStatus: freezed == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceStatus: freezed == invoiceStatus
          ? _value.invoiceStatus
          : invoiceStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      unitCost: freezed == unitCost
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      excessTax: freezed == excessTax
          ? _value.excessTax
          : excessTax // ignore: cast_nullable_to_non_nullable
              as double?,
      taxableAmount: freezed == taxableAmount
          ? _value.taxableAmount
          : taxableAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      returnPriceTotal: freezed == returnPriceTotal
          ? _value.returnPriceTotal
          : returnPriceTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      editedBy: freezed == editedBy
          ? _value.editedBy
          : editedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      salesInvoiceCode: freezed == salesInvoiceCode
          ? _value.salesInvoiceCode
          : salesInvoiceCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReadSalesReturn implements _ReadSalesReturn {
  const _$_ReadSalesReturn(
      {this.id,
      @JsonKey(name: "order_lines") final List<OrderLinesReturn>? orderLines,
      @JsonKey(name: "order_type") this.orderType,
      @JsonKey(name: "order_mode") this.orderMode,
      @JsonKey(name: "sales_return_order_code") this.salesReturnOrderCode,
      @JsonKey(name: "purchase_return_order_code") this.purchaseReturnOrderCode,
      @JsonKey(name: "returned_date") this.returnedDate,
      @JsonKey(name: "inventory_id") this.inventoryId,
      @JsonKey(name: "vendor_code") this.vendorCode,
      @JsonKey(name: "customer_id") this.customerId,
      @JsonKey(name: "trn_number") this.trnNumber,
      @JsonKey(name: "sales_invoice_id") this.salesInvoiceId,
      @JsonKey(name: "shipping_address_id") this.shippingAddressId,
      @JsonKey(name: "billing_address_id") this.billingAddressId,
      @JsonKey(name: "payment_id") this.paymentId,
      @JsonKey(name: "payment_status") this.paymentStatus,
      @JsonKey(name: "reason") this.reason,
      @JsonKey(name: "remarks") this.remarks,
      @JsonKey(name: "order_satus") this.orderStatus,
      @JsonKey(name: "invoice_status") this.invoiceStatus,
      @JsonKey(name: "discount") this.discount,
      @JsonKey(name: "unit_cost") this.unitCost,
      @JsonKey(name: "excess_tax") this.excessTax,
      @JsonKey(name: "taxable_amount") this.taxableAmount,
      @JsonKey(name: "vat") this.vat,
      @JsonKey(name: "return_price_total") this.returnPriceTotal,
      @JsonKey(name: "total_price") this.totalPrice,
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "edited_by") this.editedBy,
      @JsonKey(name: "sales_invoice_code") this.salesInvoiceCode})
      : _orderLines = orderLines;

  factory _$_ReadSalesReturn.fromJson(Map<String, dynamic> json) =>
      _$$_ReadSalesReturnFromJson(json);

  @override
  final int? id;
  final List<OrderLinesReturn>? _orderLines;
  @override
  @JsonKey(name: "order_lines")
  List<OrderLinesReturn>? get orderLines {
    final value = _orderLines;
    if (value == null) return null;
    if (_orderLines is EqualUnmodifiableListView) return _orderLines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "order_type")
  final String? orderType;
  @override
  @JsonKey(name: "order_mode")
  final String? orderMode;
  @override
  @JsonKey(name: "sales_return_order_code")
  final String? salesReturnOrderCode;
  @override
  @JsonKey(name: "purchase_return_order_code")
  final String? purchaseReturnOrderCode;
  @override
  @JsonKey(name: "returned_date")
  final String? returnedDate;
  @override
  @JsonKey(name: "inventory_id")
  final String? inventoryId;
  @override
  @JsonKey(name: "vendor_code")
  final String? vendorCode;
  @override
  @JsonKey(name: "customer_id")
  final String? customerId;
  @override
  @JsonKey(name: "trn_number")
  final String? trnNumber;
  @override
  @JsonKey(name: "sales_invoice_id")
  final String? salesInvoiceId;
  @override
  @JsonKey(name: "shipping_address_id")
  final String? shippingAddressId;
  @override
  @JsonKey(name: "billing_address_id")
  final String? billingAddressId;
  @override
  @JsonKey(name: "payment_id")
  final String? paymentId;
  @override
  @JsonKey(name: "payment_status")
  final String? paymentStatus;
  @override
  @JsonKey(name: "reason")
  final String? reason;
  @override
  @JsonKey(name: "remarks")
  final String? remarks;
  @override
  @JsonKey(name: "order_satus")
  final String? orderStatus;
  @override
  @JsonKey(name: "invoice_status")
  final String? invoiceStatus;
  @override
  @JsonKey(name: "discount")
  final double? discount;
  @override
  @JsonKey(name: "unit_cost")
  final double? unitCost;
  @override
  @JsonKey(name: "excess_tax")
  final double? excessTax;
  @override
  @JsonKey(name: "taxable_amount")
  final double? taxableAmount;
  @override
  @JsonKey(name: "vat")
  final double? vat;
  @override
  @JsonKey(name: "return_price_total")
  final double? returnPriceTotal;
  @override
  @JsonKey(name: "total_price")
  final double? totalPrice;
  @override
  @JsonKey(name: "status")
  final String? status;
  @override
  @JsonKey(name: "edited_by")
  final String? editedBy;
  @override
  @JsonKey(name: "sales_invoice_code")
  final String? salesInvoiceCode;

  @override
  String toString() {
    return 'ReadSalesReturn(id: $id, orderLines: $orderLines, orderType: $orderType, orderMode: $orderMode, salesReturnOrderCode: $salesReturnOrderCode, purchaseReturnOrderCode: $purchaseReturnOrderCode, returnedDate: $returnedDate, inventoryId: $inventoryId, vendorCode: $vendorCode, customerId: $customerId, trnNumber: $trnNumber, salesInvoiceId: $salesInvoiceId, shippingAddressId: $shippingAddressId, billingAddressId: $billingAddressId, paymentId: $paymentId, paymentStatus: $paymentStatus, reason: $reason, remarks: $remarks, orderStatus: $orderStatus, invoiceStatus: $invoiceStatus, discount: $discount, unitCost: $unitCost, excessTax: $excessTax, taxableAmount: $taxableAmount, vat: $vat, returnPriceTotal: $returnPriceTotal, totalPrice: $totalPrice, status: $status, editedBy: $editedBy, salesInvoiceCode: $salesInvoiceCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReadSalesReturn &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._orderLines, _orderLines) &&
            (identical(other.orderType, orderType) ||
                other.orderType == orderType) &&
            (identical(other.orderMode, orderMode) ||
                other.orderMode == orderMode) &&
            (identical(other.salesReturnOrderCode, salesReturnOrderCode) ||
                other.salesReturnOrderCode == salesReturnOrderCode) &&
            (identical(
                    other.purchaseReturnOrderCode, purchaseReturnOrderCode) ||
                other.purchaseReturnOrderCode == purchaseReturnOrderCode) &&
            (identical(other.returnedDate, returnedDate) ||
                other.returnedDate == returnedDate) &&
            (identical(other.inventoryId, inventoryId) ||
                other.inventoryId == inventoryId) &&
            (identical(other.vendorCode, vendorCode) ||
                other.vendorCode == vendorCode) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.trnNumber, trnNumber) ||
                other.trnNumber == trnNumber) &&
            (identical(other.salesInvoiceId, salesInvoiceId) ||
                other.salesInvoiceId == salesInvoiceId) &&
            (identical(other.shippingAddressId, shippingAddressId) ||
                other.shippingAddressId == shippingAddressId) &&
            (identical(other.billingAddressId, billingAddressId) ||
                other.billingAddressId == billingAddressId) &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.remarks, remarks) || other.remarks == remarks) &&
            (identical(other.orderStatus, orderStatus) ||
                other.orderStatus == orderStatus) &&
            (identical(other.invoiceStatus, invoiceStatus) ||
                other.invoiceStatus == invoiceStatus) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.unitCost, unitCost) ||
                other.unitCost == unitCost) &&
            (identical(other.excessTax, excessTax) ||
                other.excessTax == excessTax) &&
            (identical(other.taxableAmount, taxableAmount) ||
                other.taxableAmount == taxableAmount) &&
            (identical(other.vat, vat) || other.vat == vat) &&
            (identical(other.returnPriceTotal, returnPriceTotal) ||
                other.returnPriceTotal == returnPriceTotal) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.editedBy, editedBy) ||
                other.editedBy == editedBy) &&
            (identical(other.salesInvoiceCode, salesInvoiceCode) ||
                other.salesInvoiceCode == salesInvoiceCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        const DeepCollectionEquality().hash(_orderLines),
        orderType,
        orderMode,
        salesReturnOrderCode,
        purchaseReturnOrderCode,
        returnedDate,
        inventoryId,
        vendorCode,
        customerId,
        trnNumber,
        salesInvoiceId,
        shippingAddressId,
        billingAddressId,
        paymentId,
        paymentStatus,
        reason,
        remarks,
        orderStatus,
        invoiceStatus,
        discount,
        unitCost,
        excessTax,
        taxableAmount,
        vat,
        returnPriceTotal,
        totalPrice,
        status,
        editedBy,
        salesInvoiceCode
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReadSalesReturnCopyWith<_$_ReadSalesReturn> get copyWith =>
      __$$_ReadSalesReturnCopyWithImpl<_$_ReadSalesReturn>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReadSalesReturnToJson(
      this,
    );
  }
}

abstract class _ReadSalesReturn implements ReadSalesReturn {
  const factory _ReadSalesReturn(
      {final int? id,
      @JsonKey(name: "order_lines") final List<OrderLinesReturn>? orderLines,
      @JsonKey(name: "order_type") final String? orderType,
      @JsonKey(name: "order_mode") final String? orderMode,
      @JsonKey(name: "sales_return_order_code")
      final String? salesReturnOrderCode,
      @JsonKey(name: "purchase_return_order_code")
      final String? purchaseReturnOrderCode,
      @JsonKey(name: "returned_date") final String? returnedDate,
      @JsonKey(name: "inventory_id") final String? inventoryId,
      @JsonKey(name: "vendor_code") final String? vendorCode,
      @JsonKey(name: "customer_id") final String? customerId,
      @JsonKey(name: "trn_number") final String? trnNumber,
      @JsonKey(name: "sales_invoice_id") final String? salesInvoiceId,
      @JsonKey(name: "shipping_address_id") final String? shippingAddressId,
      @JsonKey(name: "billing_address_id") final String? billingAddressId,
      @JsonKey(name: "payment_id") final String? paymentId,
      @JsonKey(name: "payment_status") final String? paymentStatus,
      @JsonKey(name: "reason") final String? reason,
      @JsonKey(name: "remarks") final String? remarks,
      @JsonKey(name: "order_satus") final String? orderStatus,
      @JsonKey(name: "invoice_status") final String? invoiceStatus,
      @JsonKey(name: "discount") final double? discount,
      @JsonKey(name: "unit_cost") final double? unitCost,
      @JsonKey(name: "excess_tax") final double? excessTax,
      @JsonKey(name: "taxable_amount") final double? taxableAmount,
      @JsonKey(name: "vat") final double? vat,
      @JsonKey(name: "return_price_total") final double? returnPriceTotal,
      @JsonKey(name: "total_price") final double? totalPrice,
      @JsonKey(name: "status") final String? status,
      @JsonKey(name: "edited_by") final String? editedBy,
      @JsonKey(name: "sales_invoice_code")
      final String? salesInvoiceCode}) = _$_ReadSalesReturn;

  factory _ReadSalesReturn.fromJson(Map<String, dynamic> json) =
      _$_ReadSalesReturn.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: "order_lines")
  List<OrderLinesReturn>? get orderLines;
  @override
  @JsonKey(name: "order_type")
  String? get orderType;
  @override
  @JsonKey(name: "order_mode")
  String? get orderMode;
  @override
  @JsonKey(name: "sales_return_order_code")
  String? get salesReturnOrderCode;
  @override
  @JsonKey(name: "purchase_return_order_code")
  String? get purchaseReturnOrderCode;
  @override
  @JsonKey(name: "returned_date")
  String? get returnedDate;
  @override
  @JsonKey(name: "inventory_id")
  String? get inventoryId;
  @override
  @JsonKey(name: "vendor_code")
  String? get vendorCode;
  @override
  @JsonKey(name: "customer_id")
  String? get customerId;
  @override
  @JsonKey(name: "trn_number")
  String? get trnNumber;
  @override
  @JsonKey(name: "sales_invoice_id")
  String? get salesInvoiceId;
  @override
  @JsonKey(name: "shipping_address_id")
  String? get shippingAddressId;
  @override
  @JsonKey(name: "billing_address_id")
  String? get billingAddressId;
  @override
  @JsonKey(name: "payment_id")
  String? get paymentId;
  @override
  @JsonKey(name: "payment_status")
  String? get paymentStatus;
  @override
  @JsonKey(name: "reason")
  String? get reason;
  @override
  @JsonKey(name: "remarks")
  String? get remarks;
  @override
  @JsonKey(name: "order_satus")
  String? get orderStatus;
  @override
  @JsonKey(name: "invoice_status")
  String? get invoiceStatus;
  @override
  @JsonKey(name: "discount")
  double? get discount;
  @override
  @JsonKey(name: "unit_cost")
  double? get unitCost;
  @override
  @JsonKey(name: "excess_tax")
  double? get excessTax;
  @override
  @JsonKey(name: "taxable_amount")
  double? get taxableAmount;
  @override
  @JsonKey(name: "vat")
  double? get vat;
  @override
  @JsonKey(name: "return_price_total")
  double? get returnPriceTotal;
  @override
  @JsonKey(name: "total_price")
  double? get totalPrice;
  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(name: "edited_by")
  String? get editedBy;
  @override
  @JsonKey(name: "sales_invoice_code")
  String? get salesInvoiceCode;
  @override
  @JsonKey(ignore: true)
  _$$_ReadSalesReturnCopyWith<_$_ReadSalesReturn> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderLinesReturn _$OrderLinesReturnFromJson(Map<String, dynamic> json) {
  return _OrderLinesReturn.fromJson(json);
}

/// @nodoc
mixin _$OrderLinesReturn {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "inventory_id")
  String? get inventoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "invoice_line_id")
  String? get invoiceLineId => throw _privateConstructorUsedError;
  @JsonKey(name: "variant_id")
  String? get variantId => throw _privateConstructorUsedError;
  @JsonKey(name: "barcode")
  String? get barcode => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_return_order_line_code")
  String? get salesReturnOrderLineCode => throw _privateConstructorUsedError;
  @JsonKey(name: "stock_id")
  String? get stockId => throw _privateConstructorUsedError;
  @JsonKey(name: "warranty_id")
  String? get warrantyId => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_uom")
  String? get salesUom => throw _privateConstructorUsedError;
  @JsonKey(name: "discount_type")
  String? get discountType => throw _privateConstructorUsedError;
  @JsonKey(name: "discount")
  double? get discount => throw _privateConstructorUsedError;
  @JsonKey(name: "unit_cost")
  double? get unitCost => throw _privateConstructorUsedError;
  @JsonKey(name: "excess_tax")
  double? get excessTax => throw _privateConstructorUsedError;
  @JsonKey(name: "taxable_amount")
  double? get taxableAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "vat")
  double? get vat => throw _privateConstructorUsedError;
  @JsonKey(name: "warranty_price")
  double? get warrantyPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "sold_price")
  double? get soldPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "quantity")
  int? get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: "return_type")
  String? get returnType => throw _privateConstructorUsedError;
  @JsonKey(name: "return_time")
  int? get returnTime => throw _privateConstructorUsedError;
  @JsonKey(name: "invoiced_date")
  String? get invoiceDate => throw _privateConstructorUsedError;
  @JsonKey(name: "invoiced_time")
  String? get invoiceTime => throw _privateConstructorUsedError;
  @JsonKey(name: "total_price")
  double? get totalPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "is_invoiced")
  bool? get isInvoiced => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active")
  bool? get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderLinesReturnCopyWith<OrderLinesReturn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderLinesReturnCopyWith<$Res> {
  factory $OrderLinesReturnCopyWith(
          OrderLinesReturn value, $Res Function(OrderLinesReturn) then) =
      _$OrderLinesReturnCopyWithImpl<$Res, OrderLinesReturn>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "inventory_id") String? inventoryId,
      @JsonKey(name: "invoice_line_id") String? invoiceLineId,
      @JsonKey(name: "variant_id") String? variantId,
      @JsonKey(name: "barcode") String? barcode,
      @JsonKey(name: "sales_return_order_line_code")
      String? salesReturnOrderLineCode,
      @JsonKey(name: "stock_id") String? stockId,
      @JsonKey(name: "warranty_id") String? warrantyId,
      @JsonKey(name: "sales_uom") String? salesUom,
      @JsonKey(name: "discount_type") String? discountType,
      @JsonKey(name: "discount") double? discount,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "taxable_amount") double? taxableAmount,
      @JsonKey(name: "vat") double? vat,
      @JsonKey(name: "warranty_price") double? warrantyPrice,
      @JsonKey(name: "sold_price") double? soldPrice,
      @JsonKey(name: "quantity") int? quantity,
      @JsonKey(name: "return_type") String? returnType,
      @JsonKey(name: "return_time") int? returnTime,
      @JsonKey(name: "invoiced_date") String? invoiceDate,
      @JsonKey(name: "invoiced_time") String? invoiceTime,
      @JsonKey(name: "total_price") double? totalPrice,
      @JsonKey(name: "is_invoiced") bool? isInvoiced,
      @JsonKey(name: "is_active") bool? isActive});
}

/// @nodoc
class _$OrderLinesReturnCopyWithImpl<$Res, $Val extends OrderLinesReturn>
    implements $OrderLinesReturnCopyWith<$Res> {
  _$OrderLinesReturnCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? inventoryId = freezed,
    Object? invoiceLineId = freezed,
    Object? variantId = freezed,
    Object? barcode = freezed,
    Object? salesReturnOrderLineCode = freezed,
    Object? stockId = freezed,
    Object? warrantyId = freezed,
    Object? salesUom = freezed,
    Object? discountType = freezed,
    Object? discount = freezed,
    Object? unitCost = freezed,
    Object? excessTax = freezed,
    Object? taxableAmount = freezed,
    Object? vat = freezed,
    Object? warrantyPrice = freezed,
    Object? soldPrice = freezed,
    Object? quantity = freezed,
    Object? returnType = freezed,
    Object? returnTime = freezed,
    Object? invoiceDate = freezed,
    Object? invoiceTime = freezed,
    Object? totalPrice = freezed,
    Object? isInvoiced = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceLineId: freezed == invoiceLineId
          ? _value.invoiceLineId
          : invoiceLineId // ignore: cast_nullable_to_non_nullable
              as String?,
      variantId: freezed == variantId
          ? _value.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
              as String?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      salesReturnOrderLineCode: freezed == salesReturnOrderLineCode
          ? _value.salesReturnOrderLineCode
          : salesReturnOrderLineCode // ignore: cast_nullable_to_non_nullable
              as String?,
      stockId: freezed == stockId
          ? _value.stockId
          : stockId // ignore: cast_nullable_to_non_nullable
              as String?,
      warrantyId: freezed == warrantyId
          ? _value.warrantyId
          : warrantyId // ignore: cast_nullable_to_non_nullable
              as String?,
      salesUom: freezed == salesUom
          ? _value.salesUom
          : salesUom // ignore: cast_nullable_to_non_nullable
              as String?,
      discountType: freezed == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      unitCost: freezed == unitCost
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      excessTax: freezed == excessTax
          ? _value.excessTax
          : excessTax // ignore: cast_nullable_to_non_nullable
              as double?,
      taxableAmount: freezed == taxableAmount
          ? _value.taxableAmount
          : taxableAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      warrantyPrice: freezed == warrantyPrice
          ? _value.warrantyPrice
          : warrantyPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      soldPrice: freezed == soldPrice
          ? _value.soldPrice
          : soldPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      returnType: freezed == returnType
          ? _value.returnType
          : returnType // ignore: cast_nullable_to_non_nullable
              as String?,
      returnTime: freezed == returnTime
          ? _value.returnTime
          : returnTime // ignore: cast_nullable_to_non_nullable
              as int?,
      invoiceDate: freezed == invoiceDate
          ? _value.invoiceDate
          : invoiceDate // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceTime: freezed == invoiceTime
          ? _value.invoiceTime
          : invoiceTime // ignore: cast_nullable_to_non_nullable
              as String?,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      isInvoiced: freezed == isInvoiced
          ? _value.isInvoiced
          : isInvoiced // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrderLinesReturnCopyWith<$Res>
    implements $OrderLinesReturnCopyWith<$Res> {
  factory _$$_OrderLinesReturnCopyWith(
          _$_OrderLinesReturn value, $Res Function(_$_OrderLinesReturn) then) =
      __$$_OrderLinesReturnCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "inventory_id") String? inventoryId,
      @JsonKey(name: "invoice_line_id") String? invoiceLineId,
      @JsonKey(name: "variant_id") String? variantId,
      @JsonKey(name: "barcode") String? barcode,
      @JsonKey(name: "sales_return_order_line_code")
      String? salesReturnOrderLineCode,
      @JsonKey(name: "stock_id") String? stockId,
      @JsonKey(name: "warranty_id") String? warrantyId,
      @JsonKey(name: "sales_uom") String? salesUom,
      @JsonKey(name: "discount_type") String? discountType,
      @JsonKey(name: "discount") double? discount,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "taxable_amount") double? taxableAmount,
      @JsonKey(name: "vat") double? vat,
      @JsonKey(name: "warranty_price") double? warrantyPrice,
      @JsonKey(name: "sold_price") double? soldPrice,
      @JsonKey(name: "quantity") int? quantity,
      @JsonKey(name: "return_type") String? returnType,
      @JsonKey(name: "return_time") int? returnTime,
      @JsonKey(name: "invoiced_date") String? invoiceDate,
      @JsonKey(name: "invoiced_time") String? invoiceTime,
      @JsonKey(name: "total_price") double? totalPrice,
      @JsonKey(name: "is_invoiced") bool? isInvoiced,
      @JsonKey(name: "is_active") bool? isActive});
}

/// @nodoc
class __$$_OrderLinesReturnCopyWithImpl<$Res>
    extends _$OrderLinesReturnCopyWithImpl<$Res, _$_OrderLinesReturn>
    implements _$$_OrderLinesReturnCopyWith<$Res> {
  __$$_OrderLinesReturnCopyWithImpl(
      _$_OrderLinesReturn _value, $Res Function(_$_OrderLinesReturn) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? inventoryId = freezed,
    Object? invoiceLineId = freezed,
    Object? variantId = freezed,
    Object? barcode = freezed,
    Object? salesReturnOrderLineCode = freezed,
    Object? stockId = freezed,
    Object? warrantyId = freezed,
    Object? salesUom = freezed,
    Object? discountType = freezed,
    Object? discount = freezed,
    Object? unitCost = freezed,
    Object? excessTax = freezed,
    Object? taxableAmount = freezed,
    Object? vat = freezed,
    Object? warrantyPrice = freezed,
    Object? soldPrice = freezed,
    Object? quantity = freezed,
    Object? returnType = freezed,
    Object? returnTime = freezed,
    Object? invoiceDate = freezed,
    Object? invoiceTime = freezed,
    Object? totalPrice = freezed,
    Object? isInvoiced = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_$_OrderLinesReturn(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceLineId: freezed == invoiceLineId
          ? _value.invoiceLineId
          : invoiceLineId // ignore: cast_nullable_to_non_nullable
              as String?,
      variantId: freezed == variantId
          ? _value.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
              as String?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      salesReturnOrderLineCode: freezed == salesReturnOrderLineCode
          ? _value.salesReturnOrderLineCode
          : salesReturnOrderLineCode // ignore: cast_nullable_to_non_nullable
              as String?,
      stockId: freezed == stockId
          ? _value.stockId
          : stockId // ignore: cast_nullable_to_non_nullable
              as String?,
      warrantyId: freezed == warrantyId
          ? _value.warrantyId
          : warrantyId // ignore: cast_nullable_to_non_nullable
              as String?,
      salesUom: freezed == salesUom
          ? _value.salesUom
          : salesUom // ignore: cast_nullable_to_non_nullable
              as String?,
      discountType: freezed == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      unitCost: freezed == unitCost
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      excessTax: freezed == excessTax
          ? _value.excessTax
          : excessTax // ignore: cast_nullable_to_non_nullable
              as double?,
      taxableAmount: freezed == taxableAmount
          ? _value.taxableAmount
          : taxableAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      warrantyPrice: freezed == warrantyPrice
          ? _value.warrantyPrice
          : warrantyPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      soldPrice: freezed == soldPrice
          ? _value.soldPrice
          : soldPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      returnType: freezed == returnType
          ? _value.returnType
          : returnType // ignore: cast_nullable_to_non_nullable
              as String?,
      returnTime: freezed == returnTime
          ? _value.returnTime
          : returnTime // ignore: cast_nullable_to_non_nullable
              as int?,
      invoiceDate: freezed == invoiceDate
          ? _value.invoiceDate
          : invoiceDate // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceTime: freezed == invoiceTime
          ? _value.invoiceTime
          : invoiceTime // ignore: cast_nullable_to_non_nullable
              as String?,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      isInvoiced: freezed == isInvoiced
          ? _value.isInvoiced
          : isInvoiced // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderLinesReturn implements _OrderLinesReturn {
  const _$_OrderLinesReturn(
      {this.id,
      @JsonKey(name: "inventory_id") this.inventoryId,
      @JsonKey(name: "invoice_line_id") this.invoiceLineId,
      @JsonKey(name: "variant_id") this.variantId,
      @JsonKey(name: "barcode") this.barcode,
      @JsonKey(name: "sales_return_order_line_code")
      this.salesReturnOrderLineCode,
      @JsonKey(name: "stock_id") this.stockId,
      @JsonKey(name: "warranty_id") this.warrantyId,
      @JsonKey(name: "sales_uom") this.salesUom,
      @JsonKey(name: "discount_type") this.discountType,
      @JsonKey(name: "discount") this.discount,
      @JsonKey(name: "unit_cost") this.unitCost,
      @JsonKey(name: "excess_tax") this.excessTax,
      @JsonKey(name: "taxable_amount") this.taxableAmount,
      @JsonKey(name: "vat") this.vat,
      @JsonKey(name: "warranty_price") this.warrantyPrice,
      @JsonKey(name: "sold_price") this.soldPrice,
      @JsonKey(name: "quantity") this.quantity,
      @JsonKey(name: "return_type") this.returnType,
      @JsonKey(name: "return_time") this.returnTime,
      @JsonKey(name: "invoiced_date") this.invoiceDate,
      @JsonKey(name: "invoiced_time") this.invoiceTime,
      @JsonKey(name: "total_price") this.totalPrice,
      @JsonKey(name: "is_invoiced") this.isInvoiced,
      @JsonKey(name: "is_active") this.isActive});

  factory _$_OrderLinesReturn.fromJson(Map<String, dynamic> json) =>
      _$$_OrderLinesReturnFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: "inventory_id")
  final String? inventoryId;
  @override
  @JsonKey(name: "invoice_line_id")
  final String? invoiceLineId;
  @override
  @JsonKey(name: "variant_id")
  final String? variantId;
  @override
  @JsonKey(name: "barcode")
  final String? barcode;
  @override
  @JsonKey(name: "sales_return_order_line_code")
  final String? salesReturnOrderLineCode;
  @override
  @JsonKey(name: "stock_id")
  final String? stockId;
  @override
  @JsonKey(name: "warranty_id")
  final String? warrantyId;
  @override
  @JsonKey(name: "sales_uom")
  final String? salesUom;
  @override
  @JsonKey(name: "discount_type")
  final String? discountType;
  @override
  @JsonKey(name: "discount")
  final double? discount;
  @override
  @JsonKey(name: "unit_cost")
  final double? unitCost;
  @override
  @JsonKey(name: "excess_tax")
  final double? excessTax;
  @override
  @JsonKey(name: "taxable_amount")
  final double? taxableAmount;
  @override
  @JsonKey(name: "vat")
  final double? vat;
  @override
  @JsonKey(name: "warranty_price")
  final double? warrantyPrice;
  @override
  @JsonKey(name: "sold_price")
  final double? soldPrice;
  @override
  @JsonKey(name: "quantity")
  final int? quantity;
  @override
  @JsonKey(name: "return_type")
  final String? returnType;
  @override
  @JsonKey(name: "return_time")
  final int? returnTime;
  @override
  @JsonKey(name: "invoiced_date")
  final String? invoiceDate;
  @override
  @JsonKey(name: "invoiced_time")
  final String? invoiceTime;
  @override
  @JsonKey(name: "total_price")
  final double? totalPrice;
  @override
  @JsonKey(name: "is_invoiced")
  final bool? isInvoiced;
  @override
  @JsonKey(name: "is_active")
  final bool? isActive;

  @override
  String toString() {
    return 'OrderLinesReturn(id: $id, inventoryId: $inventoryId, invoiceLineId: $invoiceLineId, variantId: $variantId, barcode: $barcode, salesReturnOrderLineCode: $salesReturnOrderLineCode, stockId: $stockId, warrantyId: $warrantyId, salesUom: $salesUom, discountType: $discountType, discount: $discount, unitCost: $unitCost, excessTax: $excessTax, taxableAmount: $taxableAmount, vat: $vat, warrantyPrice: $warrantyPrice, soldPrice: $soldPrice, quantity: $quantity, returnType: $returnType, returnTime: $returnTime, invoiceDate: $invoiceDate, invoiceTime: $invoiceTime, totalPrice: $totalPrice, isInvoiced: $isInvoiced, isActive: $isActive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderLinesReturn &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.inventoryId, inventoryId) ||
                other.inventoryId == inventoryId) &&
            (identical(other.invoiceLineId, invoiceLineId) ||
                other.invoiceLineId == invoiceLineId) &&
            (identical(other.variantId, variantId) ||
                other.variantId == variantId) &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(
                    other.salesReturnOrderLineCode, salesReturnOrderLineCode) ||
                other.salesReturnOrderLineCode == salesReturnOrderLineCode) &&
            (identical(other.stockId, stockId) || other.stockId == stockId) &&
            (identical(other.warrantyId, warrantyId) ||
                other.warrantyId == warrantyId) &&
            (identical(other.salesUom, salesUom) ||
                other.salesUom == salesUom) &&
            (identical(other.discountType, discountType) ||
                other.discountType == discountType) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.unitCost, unitCost) ||
                other.unitCost == unitCost) &&
            (identical(other.excessTax, excessTax) ||
                other.excessTax == excessTax) &&
            (identical(other.taxableAmount, taxableAmount) ||
                other.taxableAmount == taxableAmount) &&
            (identical(other.vat, vat) || other.vat == vat) &&
            (identical(other.warrantyPrice, warrantyPrice) ||
                other.warrantyPrice == warrantyPrice) &&
            (identical(other.soldPrice, soldPrice) ||
                other.soldPrice == soldPrice) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.returnType, returnType) ||
                other.returnType == returnType) &&
            (identical(other.returnTime, returnTime) ||
                other.returnTime == returnTime) &&
            (identical(other.invoiceDate, invoiceDate) ||
                other.invoiceDate == invoiceDate) &&
            (identical(other.invoiceTime, invoiceTime) ||
                other.invoiceTime == invoiceTime) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.isInvoiced, isInvoiced) ||
                other.isInvoiced == isInvoiced) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        inventoryId,
        invoiceLineId,
        variantId,
        barcode,
        salesReturnOrderLineCode,
        stockId,
        warrantyId,
        salesUom,
        discountType,
        discount,
        unitCost,
        excessTax,
        taxableAmount,
        vat,
        warrantyPrice,
        soldPrice,
        quantity,
        returnType,
        returnTime,
        invoiceDate,
        invoiceTime,
        totalPrice,
        isInvoiced,
        isActive
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderLinesReturnCopyWith<_$_OrderLinesReturn> get copyWith =>
      __$$_OrderLinesReturnCopyWithImpl<_$_OrderLinesReturn>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderLinesReturnToJson(
      this,
    );
  }
}

abstract class _OrderLinesReturn implements OrderLinesReturn {
  const factory _OrderLinesReturn(
      {final int? id,
      @JsonKey(name: "inventory_id") final String? inventoryId,
      @JsonKey(name: "invoice_line_id") final String? invoiceLineId,
      @JsonKey(name: "variant_id") final String? variantId,
      @JsonKey(name: "barcode") final String? barcode,
      @JsonKey(name: "sales_return_order_line_code")
      final String? salesReturnOrderLineCode,
      @JsonKey(name: "stock_id") final String? stockId,
      @JsonKey(name: "warranty_id") final String? warrantyId,
      @JsonKey(name: "sales_uom") final String? salesUom,
      @JsonKey(name: "discount_type") final String? discountType,
      @JsonKey(name: "discount") final double? discount,
      @JsonKey(name: "unit_cost") final double? unitCost,
      @JsonKey(name: "excess_tax") final double? excessTax,
      @JsonKey(name: "taxable_amount") final double? taxableAmount,
      @JsonKey(name: "vat") final double? vat,
      @JsonKey(name: "warranty_price") final double? warrantyPrice,
      @JsonKey(name: "sold_price") final double? soldPrice,
      @JsonKey(name: "quantity") final int? quantity,
      @JsonKey(name: "return_type") final String? returnType,
      @JsonKey(name: "return_time") final int? returnTime,
      @JsonKey(name: "invoiced_date") final String? invoiceDate,
      @JsonKey(name: "invoiced_time") final String? invoiceTime,
      @JsonKey(name: "total_price") final double? totalPrice,
      @JsonKey(name: "is_invoiced") final bool? isInvoiced,
      @JsonKey(name: "is_active") final bool? isActive}) = _$_OrderLinesReturn;

  factory _OrderLinesReturn.fromJson(Map<String, dynamic> json) =
      _$_OrderLinesReturn.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: "inventory_id")
  String? get inventoryId;
  @override
  @JsonKey(name: "invoice_line_id")
  String? get invoiceLineId;
  @override
  @JsonKey(name: "variant_id")
  String? get variantId;
  @override
  @JsonKey(name: "barcode")
  String? get barcode;
  @override
  @JsonKey(name: "sales_return_order_line_code")
  String? get salesReturnOrderLineCode;
  @override
  @JsonKey(name: "stock_id")
  String? get stockId;
  @override
  @JsonKey(name: "warranty_id")
  String? get warrantyId;
  @override
  @JsonKey(name: "sales_uom")
  String? get salesUom;
  @override
  @JsonKey(name: "discount_type")
  String? get discountType;
  @override
  @JsonKey(name: "discount")
  double? get discount;
  @override
  @JsonKey(name: "unit_cost")
  double? get unitCost;
  @override
  @JsonKey(name: "excess_tax")
  double? get excessTax;
  @override
  @JsonKey(name: "taxable_amount")
  double? get taxableAmount;
  @override
  @JsonKey(name: "vat")
  double? get vat;
  @override
  @JsonKey(name: "warranty_price")
  double? get warrantyPrice;
  @override
  @JsonKey(name: "sold_price")
  double? get soldPrice;
  @override
  @JsonKey(name: "quantity")
  int? get quantity;
  @override
  @JsonKey(name: "return_type")
  String? get returnType;
  @override
  @JsonKey(name: "return_time")
  int? get returnTime;
  @override
  @JsonKey(name: "invoiced_date")
  String? get invoiceDate;
  @override
  @JsonKey(name: "invoiced_time")
  String? get invoiceTime;
  @override
  @JsonKey(name: "total_price")
  double? get totalPrice;
  @override
  @JsonKey(name: "is_invoiced")
  bool? get isInvoiced;
  @override
  @JsonKey(name: "is_active")
  bool? get isActive;
  @override
  @JsonKey(ignore: true)
  _$$_OrderLinesReturnCopyWith<_$_OrderLinesReturn> get copyWith =>
      throw _privateConstructorUsedError;
}
