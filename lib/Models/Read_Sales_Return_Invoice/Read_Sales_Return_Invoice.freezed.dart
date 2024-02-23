// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'Read_Sales_Return_Invoice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReadSalesReturnInvoice _$ReadSalesReturnInvoiceFromJson(
    Map<String, dynamic> json) {
  return _ReadSalesReturnInvoice.fromJson(json);
}

/// @nodoc
mixin _$ReadSalesReturnInvoice {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "order_lines")
  List<SalesRetunnInvoiceOrderLines>? get salesReturnInvoiceOrderLines =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "invoice_lines")
  List<SalesRetunnInvoiceOrderLines>? get salesReturnInvoiceLines =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "invoice_data")
  InvoiceDataSalesReturn? get invoiceDataSalesReturn =>
      throw _privateConstructorUsedError;
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
  @JsonKey(name: "notes")
  String? get notes => throw _privateConstructorUsedError;
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
  @JsonKey(name: "assigned_to")
  String? get assignTo => throw _privateConstructorUsedError;
  @JsonKey(name: "invoiced_by")
  String? get invoicedBy => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_trn_number")
  String? get customerTrnNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_return_order_id")
  String? get salesreturnOrderId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReadSalesReturnInvoiceCopyWith<ReadSalesReturnInvoice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadSalesReturnInvoiceCopyWith<$Res> {
  factory $ReadSalesReturnInvoiceCopyWith(ReadSalesReturnInvoice value,
          $Res Function(ReadSalesReturnInvoice) then) =
      _$ReadSalesReturnInvoiceCopyWithImpl<$Res, ReadSalesReturnInvoice>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "order_lines")
      List<SalesRetunnInvoiceOrderLines>? salesReturnInvoiceOrderLines,
      @JsonKey(name: "invoice_lines")
      List<SalesRetunnInvoiceOrderLines>? salesReturnInvoiceLines,
      @JsonKey(name: "invoice_data")
      InvoiceDataSalesReturn? invoiceDataSalesReturn,
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
      @JsonKey(name: "notes") String? notes,
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
      @JsonKey(name: "assigned_to") String? assignTo,
      @JsonKey(name: "invoiced_by") String? invoicedBy,
      @JsonKey(name: "customer_trn_number") String? customerTrnNumber,
      @JsonKey(name: "sales_return_order_id") String? salesreturnOrderId});

  $InvoiceDataSalesReturnCopyWith<$Res>? get invoiceDataSalesReturn;
}

/// @nodoc
class _$ReadSalesReturnInvoiceCopyWithImpl<$Res,
        $Val extends ReadSalesReturnInvoice>
    implements $ReadSalesReturnInvoiceCopyWith<$Res> {
  _$ReadSalesReturnInvoiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? salesReturnInvoiceOrderLines = freezed,
    Object? salesReturnInvoiceLines = freezed,
    Object? invoiceDataSalesReturn = freezed,
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
    Object? notes = freezed,
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
    Object? assignTo = freezed,
    Object? invoicedBy = freezed,
    Object? customerTrnNumber = freezed,
    Object? salesreturnOrderId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      salesReturnInvoiceOrderLines: freezed == salesReturnInvoiceOrderLines
          ? _value.salesReturnInvoiceOrderLines
          : salesReturnInvoiceOrderLines // ignore: cast_nullable_to_non_nullable
              as List<SalesRetunnInvoiceOrderLines>?,
      salesReturnInvoiceLines: freezed == salesReturnInvoiceLines
          ? _value.salesReturnInvoiceLines
          : salesReturnInvoiceLines // ignore: cast_nullable_to_non_nullable
              as List<SalesRetunnInvoiceOrderLines>?,
      invoiceDataSalesReturn: freezed == invoiceDataSalesReturn
          ? _value.invoiceDataSalesReturn
          : invoiceDataSalesReturn // ignore: cast_nullable_to_non_nullable
              as InvoiceDataSalesReturn?,
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
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
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
      assignTo: freezed == assignTo
          ? _value.assignTo
          : assignTo // ignore: cast_nullable_to_non_nullable
              as String?,
      invoicedBy: freezed == invoicedBy
          ? _value.invoicedBy
          : invoicedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      customerTrnNumber: freezed == customerTrnNumber
          ? _value.customerTrnNumber
          : customerTrnNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      salesreturnOrderId: freezed == salesreturnOrderId
          ? _value.salesreturnOrderId
          : salesreturnOrderId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InvoiceDataSalesReturnCopyWith<$Res>? get invoiceDataSalesReturn {
    if (_value.invoiceDataSalesReturn == null) {
      return null;
    }

    return $InvoiceDataSalesReturnCopyWith<$Res>(_value.invoiceDataSalesReturn!,
        (value) {
      return _then(_value.copyWith(invoiceDataSalesReturn: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ReadSalesReturnInvoiceCopyWith<$Res>
    implements $ReadSalesReturnInvoiceCopyWith<$Res> {
  factory _$$_ReadSalesReturnInvoiceCopyWith(_$_ReadSalesReturnInvoice value,
          $Res Function(_$_ReadSalesReturnInvoice) then) =
      __$$_ReadSalesReturnInvoiceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "order_lines")
      List<SalesRetunnInvoiceOrderLines>? salesReturnInvoiceOrderLines,
      @JsonKey(name: "invoice_lines")
      List<SalesRetunnInvoiceOrderLines>? salesReturnInvoiceLines,
      @JsonKey(name: "invoice_data")
      InvoiceDataSalesReturn? invoiceDataSalesReturn,
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
      @JsonKey(name: "notes") String? notes,
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
      @JsonKey(name: "assigned_to") String? assignTo,
      @JsonKey(name: "invoiced_by") String? invoicedBy,
      @JsonKey(name: "customer_trn_number") String? customerTrnNumber,
      @JsonKey(name: "sales_return_order_id") String? salesreturnOrderId});

  @override
  $InvoiceDataSalesReturnCopyWith<$Res>? get invoiceDataSalesReturn;
}

/// @nodoc
class __$$_ReadSalesReturnInvoiceCopyWithImpl<$Res>
    extends _$ReadSalesReturnInvoiceCopyWithImpl<$Res,
        _$_ReadSalesReturnInvoice>
    implements _$$_ReadSalesReturnInvoiceCopyWith<$Res> {
  __$$_ReadSalesReturnInvoiceCopyWithImpl(_$_ReadSalesReturnInvoice _value,
      $Res Function(_$_ReadSalesReturnInvoice) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? salesReturnInvoiceOrderLines = freezed,
    Object? salesReturnInvoiceLines = freezed,
    Object? invoiceDataSalesReturn = freezed,
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
    Object? notes = freezed,
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
    Object? assignTo = freezed,
    Object? invoicedBy = freezed,
    Object? customerTrnNumber = freezed,
    Object? salesreturnOrderId = freezed,
  }) {
    return _then(_$_ReadSalesReturnInvoice(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      salesReturnInvoiceOrderLines: freezed == salesReturnInvoiceOrderLines
          ? _value._salesReturnInvoiceOrderLines
          : salesReturnInvoiceOrderLines // ignore: cast_nullable_to_non_nullable
              as List<SalesRetunnInvoiceOrderLines>?,
      salesReturnInvoiceLines: freezed == salesReturnInvoiceLines
          ? _value._salesReturnInvoiceLines
          : salesReturnInvoiceLines // ignore: cast_nullable_to_non_nullable
              as List<SalesRetunnInvoiceOrderLines>?,
      invoiceDataSalesReturn: freezed == invoiceDataSalesReturn
          ? _value.invoiceDataSalesReturn
          : invoiceDataSalesReturn // ignore: cast_nullable_to_non_nullable
              as InvoiceDataSalesReturn?,
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
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
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
      assignTo: freezed == assignTo
          ? _value.assignTo
          : assignTo // ignore: cast_nullable_to_non_nullable
              as String?,
      invoicedBy: freezed == invoicedBy
          ? _value.invoicedBy
          : invoicedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      customerTrnNumber: freezed == customerTrnNumber
          ? _value.customerTrnNumber
          : customerTrnNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      salesreturnOrderId: freezed == salesreturnOrderId
          ? _value.salesreturnOrderId
          : salesreturnOrderId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReadSalesReturnInvoice implements _ReadSalesReturnInvoice {
  const _$_ReadSalesReturnInvoice(
      {this.id,
      @JsonKey(name: "order_lines")
      final List<SalesRetunnInvoiceOrderLines>? salesReturnInvoiceOrderLines,
      @JsonKey(name: "invoice_lines")
      final List<SalesRetunnInvoiceOrderLines>? salesReturnInvoiceLines,
      @JsonKey(name: "invoice_data") this.invoiceDataSalesReturn,
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
      @JsonKey(name: "notes") this.notes,
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
      @JsonKey(name: "assigned_to") this.assignTo,
      @JsonKey(name: "invoiced_by") this.invoicedBy,
      @JsonKey(name: "customer_trn_number") this.customerTrnNumber,
      @JsonKey(name: "sales_return_order_id") this.salesreturnOrderId})
      : _salesReturnInvoiceOrderLines = salesReturnInvoiceOrderLines,
        _salesReturnInvoiceLines = salesReturnInvoiceLines;

  factory _$_ReadSalesReturnInvoice.fromJson(Map<String, dynamic> json) =>
      _$$_ReadSalesReturnInvoiceFromJson(json);

  @override
  final int? id;
  final List<SalesRetunnInvoiceOrderLines>? _salesReturnInvoiceOrderLines;
  @override
  @JsonKey(name: "order_lines")
  List<SalesRetunnInvoiceOrderLines>? get salesReturnInvoiceOrderLines {
    final value = _salesReturnInvoiceOrderLines;
    if (value == null) return null;
    if (_salesReturnInvoiceOrderLines is EqualUnmodifiableListView)
      return _salesReturnInvoiceOrderLines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SalesRetunnInvoiceOrderLines>? _salesReturnInvoiceLines;
  @override
  @JsonKey(name: "invoice_lines")
  List<SalesRetunnInvoiceOrderLines>? get salesReturnInvoiceLines {
    final value = _salesReturnInvoiceLines;
    if (value == null) return null;
    if (_salesReturnInvoiceLines is EqualUnmodifiableListView)
      return _salesReturnInvoiceLines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "invoice_data")
  final InvoiceDataSalesReturn? invoiceDataSalesReturn;
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
  @JsonKey(name: "notes")
  final String? notes;
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
  @JsonKey(name: "assigned_to")
  final String? assignTo;
  @override
  @JsonKey(name: "invoiced_by")
  final String? invoicedBy;
  @override
  @JsonKey(name: "customer_trn_number")
  final String? customerTrnNumber;
  @override
  @JsonKey(name: "sales_return_order_id")
  final String? salesreturnOrderId;

  @override
  String toString() {
    return 'ReadSalesReturnInvoice(id: $id, salesReturnInvoiceOrderLines: $salesReturnInvoiceOrderLines, salesReturnInvoiceLines: $salesReturnInvoiceLines, invoiceDataSalesReturn: $invoiceDataSalesReturn, orderType: $orderType, orderMode: $orderMode, salesReturnOrderCode: $salesReturnOrderCode, purchaseReturnOrderCode: $purchaseReturnOrderCode, returnedDate: $returnedDate, inventoryId: $inventoryId, vendorCode: $vendorCode, customerId: $customerId, trnNumber: $trnNumber, salesInvoiceId: $salesInvoiceId, shippingAddressId: $shippingAddressId, billingAddressId: $billingAddressId, paymentId: $paymentId, paymentStatus: $paymentStatus, reason: $reason, notes: $notes, remarks: $remarks, orderStatus: $orderStatus, invoiceStatus: $invoiceStatus, discount: $discount, unitCost: $unitCost, excessTax: $excessTax, taxableAmount: $taxableAmount, vat: $vat, returnPriceTotal: $returnPriceTotal, totalPrice: $totalPrice, status: $status, assignTo: $assignTo, invoicedBy: $invoicedBy, customerTrnNumber: $customerTrnNumber, salesreturnOrderId: $salesreturnOrderId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReadSalesReturnInvoice &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(
                other._salesReturnInvoiceOrderLines,
                _salesReturnInvoiceOrderLines) &&
            const DeepCollectionEquality().equals(
                other._salesReturnInvoiceLines, _salesReturnInvoiceLines) &&
            (identical(other.invoiceDataSalesReturn, invoiceDataSalesReturn) ||
                other.invoiceDataSalesReturn == invoiceDataSalesReturn) &&
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
            (identical(other.notes, notes) || other.notes == notes) &&
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
            (identical(other.assignTo, assignTo) ||
                other.assignTo == assignTo) &&
            (identical(other.invoicedBy, invoicedBy) ||
                other.invoicedBy == invoicedBy) &&
            (identical(other.customerTrnNumber, customerTrnNumber) ||
                other.customerTrnNumber == customerTrnNumber) &&
            (identical(other.salesreturnOrderId, salesreturnOrderId) ||
                other.salesreturnOrderId == salesreturnOrderId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        const DeepCollectionEquality().hash(_salesReturnInvoiceOrderLines),
        const DeepCollectionEquality().hash(_salesReturnInvoiceLines),
        invoiceDataSalesReturn,
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
        notes,
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
        assignTo,
        invoicedBy,
        customerTrnNumber,
        salesreturnOrderId
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReadSalesReturnInvoiceCopyWith<_$_ReadSalesReturnInvoice> get copyWith =>
      __$$_ReadSalesReturnInvoiceCopyWithImpl<_$_ReadSalesReturnInvoice>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReadSalesReturnInvoiceToJson(
      this,
    );
  }
}

abstract class _ReadSalesReturnInvoice implements ReadSalesReturnInvoice {
  const factory _ReadSalesReturnInvoice(
      {final int? id,
      @JsonKey(name: "order_lines")
      final List<SalesRetunnInvoiceOrderLines>? salesReturnInvoiceOrderLines,
      @JsonKey(name: "invoice_lines")
      final List<SalesRetunnInvoiceOrderLines>? salesReturnInvoiceLines,
      @JsonKey(name: "invoice_data")
      final InvoiceDataSalesReturn? invoiceDataSalesReturn,
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
      @JsonKey(name: "notes") final String? notes,
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
      @JsonKey(name: "assigned_to") final String? assignTo,
      @JsonKey(name: "invoiced_by") final String? invoicedBy,
      @JsonKey(name: "customer_trn_number") final String? customerTrnNumber,
      @JsonKey(name: "sales_return_order_id")
      final String? salesreturnOrderId}) = _$_ReadSalesReturnInvoice;

  factory _ReadSalesReturnInvoice.fromJson(Map<String, dynamic> json) =
      _$_ReadSalesReturnInvoice.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: "order_lines")
  List<SalesRetunnInvoiceOrderLines>? get salesReturnInvoiceOrderLines;
  @override
  @JsonKey(name: "invoice_lines")
  List<SalesRetunnInvoiceOrderLines>? get salesReturnInvoiceLines;
  @override
  @JsonKey(name: "invoice_data")
  InvoiceDataSalesReturn? get invoiceDataSalesReturn;
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
  @JsonKey(name: "notes")
  String? get notes;
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
  @JsonKey(name: "assigned_to")
  String? get assignTo;
  @override
  @JsonKey(name: "invoiced_by")
  String? get invoicedBy;
  @override
  @JsonKey(name: "customer_trn_number")
  String? get customerTrnNumber;
  @override
  @JsonKey(name: "sales_return_order_id")
  String? get salesreturnOrderId;
  @override
  @JsonKey(ignore: true)
  _$$_ReadSalesReturnInvoiceCopyWith<_$_ReadSalesReturnInvoice> get copyWith =>
      throw _privateConstructorUsedError;
}

SalesRetunnInvoiceOrderLines _$SalesRetunnInvoiceOrderLinesFromJson(
    Map<String, dynamic> json) {
  return _SalesRetunnInvoiceOrderLines.fromJson(json);
}

/// @nodoc
mixin _$SalesRetunnInvoiceOrderLines {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "inventory_id")
  String? get inventoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "invoice_line_id")
  int? get invoiceLineId => throw _privateConstructorUsedError;
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
  @JsonKey(name: "total_qty")
  int? get totalQty => throw _privateConstructorUsedError;
  @JsonKey(name: "selling_price")
  double? get sellingPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_return_invoice_id")
  int? get salesReturnInvoiceId => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_return_order_line_id")
  int? get salesReturnOrderLineId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SalesRetunnInvoiceOrderLinesCopyWith<SalesRetunnInvoiceOrderLines>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesRetunnInvoiceOrderLinesCopyWith<$Res> {
  factory $SalesRetunnInvoiceOrderLinesCopyWith(
          SalesRetunnInvoiceOrderLines value,
          $Res Function(SalesRetunnInvoiceOrderLines) then) =
      _$SalesRetunnInvoiceOrderLinesCopyWithImpl<$Res,
          SalesRetunnInvoiceOrderLines>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "inventory_id") String? inventoryId,
      @JsonKey(name: "invoice_line_id") int? invoiceLineId,
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
      @JsonKey(name: "is_active") bool? isActive,
      @JsonKey(name: "total_qty") int? totalQty,
      @JsonKey(name: "selling_price") double? sellingPrice,
      @JsonKey(name: "sales_return_invoice_id") int? salesReturnInvoiceId,
      @JsonKey(name: "sales_return_order_line_id")
      int? salesReturnOrderLineId});
}

/// @nodoc
class _$SalesRetunnInvoiceOrderLinesCopyWithImpl<$Res,
        $Val extends SalesRetunnInvoiceOrderLines>
    implements $SalesRetunnInvoiceOrderLinesCopyWith<$Res> {
  _$SalesRetunnInvoiceOrderLinesCopyWithImpl(this._value, this._then);

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
    Object? totalQty = freezed,
    Object? sellingPrice = freezed,
    Object? salesReturnInvoiceId = freezed,
    Object? salesReturnOrderLineId = freezed,
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
              as int?,
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
      totalQty: freezed == totalQty
          ? _value.totalQty
          : totalQty // ignore: cast_nullable_to_non_nullable
              as int?,
      sellingPrice: freezed == sellingPrice
          ? _value.sellingPrice
          : sellingPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      salesReturnInvoiceId: freezed == salesReturnInvoiceId
          ? _value.salesReturnInvoiceId
          : salesReturnInvoiceId // ignore: cast_nullable_to_non_nullable
              as int?,
      salesReturnOrderLineId: freezed == salesReturnOrderLineId
          ? _value.salesReturnOrderLineId
          : salesReturnOrderLineId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SalesRetunnInvoiceOrderLinesCopyWith<$Res>
    implements $SalesRetunnInvoiceOrderLinesCopyWith<$Res> {
  factory _$$_SalesRetunnInvoiceOrderLinesCopyWith(
          _$_SalesRetunnInvoiceOrderLines value,
          $Res Function(_$_SalesRetunnInvoiceOrderLines) then) =
      __$$_SalesRetunnInvoiceOrderLinesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "inventory_id") String? inventoryId,
      @JsonKey(name: "invoice_line_id") int? invoiceLineId,
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
      @JsonKey(name: "is_active") bool? isActive,
      @JsonKey(name: "total_qty") int? totalQty,
      @JsonKey(name: "selling_price") double? sellingPrice,
      @JsonKey(name: "sales_return_invoice_id") int? salesReturnInvoiceId,
      @JsonKey(name: "sales_return_order_line_id")
      int? salesReturnOrderLineId});
}

/// @nodoc
class __$$_SalesRetunnInvoiceOrderLinesCopyWithImpl<$Res>
    extends _$SalesRetunnInvoiceOrderLinesCopyWithImpl<$Res,
        _$_SalesRetunnInvoiceOrderLines>
    implements _$$_SalesRetunnInvoiceOrderLinesCopyWith<$Res> {
  __$$_SalesRetunnInvoiceOrderLinesCopyWithImpl(
      _$_SalesRetunnInvoiceOrderLines _value,
      $Res Function(_$_SalesRetunnInvoiceOrderLines) _then)
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
    Object? totalQty = freezed,
    Object? sellingPrice = freezed,
    Object? salesReturnInvoiceId = freezed,
    Object? salesReturnOrderLineId = freezed,
  }) {
    return _then(_$_SalesRetunnInvoiceOrderLines(
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
              as int?,
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
      totalQty: freezed == totalQty
          ? _value.totalQty
          : totalQty // ignore: cast_nullable_to_non_nullable
              as int?,
      sellingPrice: freezed == sellingPrice
          ? _value.sellingPrice
          : sellingPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      salesReturnInvoiceId: freezed == salesReturnInvoiceId
          ? _value.salesReturnInvoiceId
          : salesReturnInvoiceId // ignore: cast_nullable_to_non_nullable
              as int?,
      salesReturnOrderLineId: freezed == salesReturnOrderLineId
          ? _value.salesReturnOrderLineId
          : salesReturnOrderLineId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SalesRetunnInvoiceOrderLines implements _SalesRetunnInvoiceOrderLines {
  const _$_SalesRetunnInvoiceOrderLines(
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
      @JsonKey(name: "is_active") this.isActive,
      @JsonKey(name: "total_qty") this.totalQty,
      @JsonKey(name: "selling_price") this.sellingPrice,
      @JsonKey(name: "sales_return_invoice_id") this.salesReturnInvoiceId,
      @JsonKey(name: "sales_return_order_line_id")
      this.salesReturnOrderLineId});

  factory _$_SalesRetunnInvoiceOrderLines.fromJson(Map<String, dynamic> json) =>
      _$$_SalesRetunnInvoiceOrderLinesFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: "inventory_id")
  final String? inventoryId;
  @override
  @JsonKey(name: "invoice_line_id")
  final int? invoiceLineId;
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
  @JsonKey(name: "total_qty")
  final int? totalQty;
  @override
  @JsonKey(name: "selling_price")
  final double? sellingPrice;
  @override
  @JsonKey(name: "sales_return_invoice_id")
  final int? salesReturnInvoiceId;
  @override
  @JsonKey(name: "sales_return_order_line_id")
  final int? salesReturnOrderLineId;

  @override
  String toString() {
    return 'SalesRetunnInvoiceOrderLines(id: $id, inventoryId: $inventoryId, invoiceLineId: $invoiceLineId, variantId: $variantId, barcode: $barcode, salesReturnOrderLineCode: $salesReturnOrderLineCode, stockId: $stockId, warrantyId: $warrantyId, salesUom: $salesUom, discountType: $discountType, discount: $discount, unitCost: $unitCost, excessTax: $excessTax, taxableAmount: $taxableAmount, vat: $vat, warrantyPrice: $warrantyPrice, soldPrice: $soldPrice, quantity: $quantity, returnType: $returnType, returnTime: $returnTime, invoiceDate: $invoiceDate, invoiceTime: $invoiceTime, totalPrice: $totalPrice, isInvoiced: $isInvoiced, isActive: $isActive, totalQty: $totalQty, sellingPrice: $sellingPrice, salesReturnInvoiceId: $salesReturnInvoiceId, salesReturnOrderLineId: $salesReturnOrderLineId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SalesRetunnInvoiceOrderLines &&
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
                other.isActive == isActive) &&
            (identical(other.totalQty, totalQty) ||
                other.totalQty == totalQty) &&
            (identical(other.sellingPrice, sellingPrice) ||
                other.sellingPrice == sellingPrice) &&
            (identical(other.salesReturnInvoiceId, salesReturnInvoiceId) ||
                other.salesReturnInvoiceId == salesReturnInvoiceId) &&
            (identical(other.salesReturnOrderLineId, salesReturnOrderLineId) ||
                other.salesReturnOrderLineId == salesReturnOrderLineId));
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
        isActive,
        totalQty,
        sellingPrice,
        salesReturnInvoiceId,
        salesReturnOrderLineId
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SalesRetunnInvoiceOrderLinesCopyWith<_$_SalesRetunnInvoiceOrderLines>
      get copyWith => __$$_SalesRetunnInvoiceOrderLinesCopyWithImpl<
          _$_SalesRetunnInvoiceOrderLines>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SalesRetunnInvoiceOrderLinesToJson(
      this,
    );
  }
}

abstract class _SalesRetunnInvoiceOrderLines
    implements SalesRetunnInvoiceOrderLines {
  const factory _SalesRetunnInvoiceOrderLines(
      {final int? id,
      @JsonKey(name: "inventory_id") final String? inventoryId,
      @JsonKey(name: "invoice_line_id") final int? invoiceLineId,
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
      @JsonKey(name: "is_active") final bool? isActive,
      @JsonKey(name: "total_qty") final int? totalQty,
      @JsonKey(name: "selling_price") final double? sellingPrice,
      @JsonKey(name: "sales_return_invoice_id") final int? salesReturnInvoiceId,
      @JsonKey(name: "sales_return_order_line_id")
      final int? salesReturnOrderLineId}) = _$_SalesRetunnInvoiceOrderLines;

  factory _SalesRetunnInvoiceOrderLines.fromJson(Map<String, dynamic> json) =
      _$_SalesRetunnInvoiceOrderLines.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: "inventory_id")
  String? get inventoryId;
  @override
  @JsonKey(name: "invoice_line_id")
  int? get invoiceLineId;
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
  @JsonKey(name: "total_qty")
  int? get totalQty;
  @override
  @JsonKey(name: "selling_price")
  double? get sellingPrice;
  @override
  @JsonKey(name: "sales_return_invoice_id")
  int? get salesReturnInvoiceId;
  @override
  @JsonKey(name: "sales_return_order_line_id")
  int? get salesReturnOrderLineId;
  @override
  @JsonKey(ignore: true)
  _$$_SalesRetunnInvoiceOrderLinesCopyWith<_$_SalesRetunnInvoiceOrderLines>
      get copyWith => throw _privateConstructorUsedError;
}

InvoiceDataSalesReturn _$InvoiceDataSalesReturnFromJson(
    Map<String, dynamic> json) {
  return _InvoiceDataSalesReturn.fromJson(json);
}

/// @nodoc
mixin _$InvoiceDataSalesReturn {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "lines")
  List<SalesRetunnInvoiceOrderLines>? get linesReturnInvoice =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "sales_return_invoice_code")
  String? get salesReturnInvoiceCode => throw _privateConstructorUsedError;
  @JsonKey(name: "vendor_code")
  String? get vendorCode => throw _privateConstructorUsedError;
  @JsonKey(name: "created_date")
  String? get createdDate => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_id")
  String? get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: "trn_number")
  String? get trnNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "notes")
  String? get notes => throw _privateConstructorUsedError;
  @JsonKey(name: "remarks")
  String? get remarks => throw _privateConstructorUsedError;
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
  @JsonKey(name: "payment_code")
  String? get paymentCode => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_status")
  String? get paymentStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_method")
  String? get paymentMethod => throw _privateConstructorUsedError;
  @JsonKey(name: "assigned_to")
  String? get assignTo => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active")
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_return_order_id")
  int? get salesReturnOrderId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvoiceDataSalesReturnCopyWith<InvoiceDataSalesReturn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceDataSalesReturnCopyWith<$Res> {
  factory $InvoiceDataSalesReturnCopyWith(InvoiceDataSalesReturn value,
          $Res Function(InvoiceDataSalesReturn) then) =
      _$InvoiceDataSalesReturnCopyWithImpl<$Res, InvoiceDataSalesReturn>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "lines")
      List<SalesRetunnInvoiceOrderLines>? linesReturnInvoice,
      @JsonKey(name: "sales_return_invoice_code")
      String? salesReturnInvoiceCode,
      @JsonKey(name: "vendor_code") String? vendorCode,
      @JsonKey(name: "created_date") String? createdDate,
      @JsonKey(name: "customer_id") String? customerId,
      @JsonKey(name: "trn_number") String? trnNumber,
      @JsonKey(name: "notes") String? notes,
      @JsonKey(name: "remarks") String? remarks,
      @JsonKey(name: "invoice_status") String? invoiceStatus,
      @JsonKey(name: "discount") double? discount,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "taxable_amount") double? taxableAmount,
      @JsonKey(name: "vat") double? vat,
      @JsonKey(name: "return_price_total") double? returnPriceTotal,
      @JsonKey(name: "total_price") double? totalPrice,
      @JsonKey(name: "payment_code") String? paymentCode,
      @JsonKey(name: "payment_status") String? paymentStatus,
      @JsonKey(name: "payment_method") String? paymentMethod,
      @JsonKey(name: "assigned_to") String? assignTo,
      @JsonKey(name: "is_active") bool? isActive,
      @JsonKey(name: "sales_return_order_id") int? salesReturnOrderId});
}

/// @nodoc
class _$InvoiceDataSalesReturnCopyWithImpl<$Res,
        $Val extends InvoiceDataSalesReturn>
    implements $InvoiceDataSalesReturnCopyWith<$Res> {
  _$InvoiceDataSalesReturnCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? linesReturnInvoice = freezed,
    Object? salesReturnInvoiceCode = freezed,
    Object? vendorCode = freezed,
    Object? createdDate = freezed,
    Object? customerId = freezed,
    Object? trnNumber = freezed,
    Object? notes = freezed,
    Object? remarks = freezed,
    Object? invoiceStatus = freezed,
    Object? discount = freezed,
    Object? unitCost = freezed,
    Object? excessTax = freezed,
    Object? taxableAmount = freezed,
    Object? vat = freezed,
    Object? returnPriceTotal = freezed,
    Object? totalPrice = freezed,
    Object? paymentCode = freezed,
    Object? paymentStatus = freezed,
    Object? paymentMethod = freezed,
    Object? assignTo = freezed,
    Object? isActive = freezed,
    Object? salesReturnOrderId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      linesReturnInvoice: freezed == linesReturnInvoice
          ? _value.linesReturnInvoice
          : linesReturnInvoice // ignore: cast_nullable_to_non_nullable
              as List<SalesRetunnInvoiceOrderLines>?,
      salesReturnInvoiceCode: freezed == salesReturnInvoiceCode
          ? _value.salesReturnInvoiceCode
          : salesReturnInvoiceCode // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorCode: freezed == vendorCode
          ? _value.vendorCode
          : vendorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as String?,
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      trnNumber: freezed == trnNumber
          ? _value.trnNumber
          : trnNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      remarks: freezed == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
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
      paymentCode: freezed == paymentCode
          ? _value.paymentCode
          : paymentCode // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      assignTo: freezed == assignTo
          ? _value.assignTo
          : assignTo // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      salesReturnOrderId: freezed == salesReturnOrderId
          ? _value.salesReturnOrderId
          : salesReturnOrderId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InvoiceDataSalesReturnCopyWith<$Res>
    implements $InvoiceDataSalesReturnCopyWith<$Res> {
  factory _$$_InvoiceDataSalesReturnCopyWith(_$_InvoiceDataSalesReturn value,
          $Res Function(_$_InvoiceDataSalesReturn) then) =
      __$$_InvoiceDataSalesReturnCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "lines")
      List<SalesRetunnInvoiceOrderLines>? linesReturnInvoice,
      @JsonKey(name: "sales_return_invoice_code")
      String? salesReturnInvoiceCode,
      @JsonKey(name: "vendor_code") String? vendorCode,
      @JsonKey(name: "created_date") String? createdDate,
      @JsonKey(name: "customer_id") String? customerId,
      @JsonKey(name: "trn_number") String? trnNumber,
      @JsonKey(name: "notes") String? notes,
      @JsonKey(name: "remarks") String? remarks,
      @JsonKey(name: "invoice_status") String? invoiceStatus,
      @JsonKey(name: "discount") double? discount,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "taxable_amount") double? taxableAmount,
      @JsonKey(name: "vat") double? vat,
      @JsonKey(name: "return_price_total") double? returnPriceTotal,
      @JsonKey(name: "total_price") double? totalPrice,
      @JsonKey(name: "payment_code") String? paymentCode,
      @JsonKey(name: "payment_status") String? paymentStatus,
      @JsonKey(name: "payment_method") String? paymentMethod,
      @JsonKey(name: "assigned_to") String? assignTo,
      @JsonKey(name: "is_active") bool? isActive,
      @JsonKey(name: "sales_return_order_id") int? salesReturnOrderId});
}

/// @nodoc
class __$$_InvoiceDataSalesReturnCopyWithImpl<$Res>
    extends _$InvoiceDataSalesReturnCopyWithImpl<$Res,
        _$_InvoiceDataSalesReturn>
    implements _$$_InvoiceDataSalesReturnCopyWith<$Res> {
  __$$_InvoiceDataSalesReturnCopyWithImpl(_$_InvoiceDataSalesReturn _value,
      $Res Function(_$_InvoiceDataSalesReturn) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? linesReturnInvoice = freezed,
    Object? salesReturnInvoiceCode = freezed,
    Object? vendorCode = freezed,
    Object? createdDate = freezed,
    Object? customerId = freezed,
    Object? trnNumber = freezed,
    Object? notes = freezed,
    Object? remarks = freezed,
    Object? invoiceStatus = freezed,
    Object? discount = freezed,
    Object? unitCost = freezed,
    Object? excessTax = freezed,
    Object? taxableAmount = freezed,
    Object? vat = freezed,
    Object? returnPriceTotal = freezed,
    Object? totalPrice = freezed,
    Object? paymentCode = freezed,
    Object? paymentStatus = freezed,
    Object? paymentMethod = freezed,
    Object? assignTo = freezed,
    Object? isActive = freezed,
    Object? salesReturnOrderId = freezed,
  }) {
    return _then(_$_InvoiceDataSalesReturn(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      linesReturnInvoice: freezed == linesReturnInvoice
          ? _value._linesReturnInvoice
          : linesReturnInvoice // ignore: cast_nullable_to_non_nullable
              as List<SalesRetunnInvoiceOrderLines>?,
      salesReturnInvoiceCode: freezed == salesReturnInvoiceCode
          ? _value.salesReturnInvoiceCode
          : salesReturnInvoiceCode // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorCode: freezed == vendorCode
          ? _value.vendorCode
          : vendorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as String?,
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      trnNumber: freezed == trnNumber
          ? _value.trnNumber
          : trnNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      remarks: freezed == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
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
      paymentCode: freezed == paymentCode
          ? _value.paymentCode
          : paymentCode // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      assignTo: freezed == assignTo
          ? _value.assignTo
          : assignTo // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      salesReturnOrderId: freezed == salesReturnOrderId
          ? _value.salesReturnOrderId
          : salesReturnOrderId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InvoiceDataSalesReturn implements _InvoiceDataSalesReturn {
  const _$_InvoiceDataSalesReturn(
      {this.id,
      @JsonKey(name: "lines")
      final List<SalesRetunnInvoiceOrderLines>? linesReturnInvoice,
      @JsonKey(name: "sales_return_invoice_code") this.salesReturnInvoiceCode,
      @JsonKey(name: "vendor_code") this.vendorCode,
      @JsonKey(name: "created_date") this.createdDate,
      @JsonKey(name: "customer_id") this.customerId,
      @JsonKey(name: "trn_number") this.trnNumber,
      @JsonKey(name: "notes") this.notes,
      @JsonKey(name: "remarks") this.remarks,
      @JsonKey(name: "invoice_status") this.invoiceStatus,
      @JsonKey(name: "discount") this.discount,
      @JsonKey(name: "unit_cost") this.unitCost,
      @JsonKey(name: "excess_tax") this.excessTax,
      @JsonKey(name: "taxable_amount") this.taxableAmount,
      @JsonKey(name: "vat") this.vat,
      @JsonKey(name: "return_price_total") this.returnPriceTotal,
      @JsonKey(name: "total_price") this.totalPrice,
      @JsonKey(name: "payment_code") this.paymentCode,
      @JsonKey(name: "payment_status") this.paymentStatus,
      @JsonKey(name: "payment_method") this.paymentMethod,
      @JsonKey(name: "assigned_to") this.assignTo,
      @JsonKey(name: "is_active") this.isActive,
      @JsonKey(name: "sales_return_order_id") this.salesReturnOrderId})
      : _linesReturnInvoice = linesReturnInvoice;

  factory _$_InvoiceDataSalesReturn.fromJson(Map<String, dynamic> json) =>
      _$$_InvoiceDataSalesReturnFromJson(json);

  @override
  final int? id;
  final List<SalesRetunnInvoiceOrderLines>? _linesReturnInvoice;
  @override
  @JsonKey(name: "lines")
  List<SalesRetunnInvoiceOrderLines>? get linesReturnInvoice {
    final value = _linesReturnInvoice;
    if (value == null) return null;
    if (_linesReturnInvoice is EqualUnmodifiableListView)
      return _linesReturnInvoice;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "sales_return_invoice_code")
  final String? salesReturnInvoiceCode;
  @override
  @JsonKey(name: "vendor_code")
  final String? vendorCode;
  @override
  @JsonKey(name: "created_date")
  final String? createdDate;
  @override
  @JsonKey(name: "customer_id")
  final String? customerId;
  @override
  @JsonKey(name: "trn_number")
  final String? trnNumber;
  @override
  @JsonKey(name: "notes")
  final String? notes;
  @override
  @JsonKey(name: "remarks")
  final String? remarks;
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
  @JsonKey(name: "payment_code")
  final String? paymentCode;
  @override
  @JsonKey(name: "payment_status")
  final String? paymentStatus;
  @override
  @JsonKey(name: "payment_method")
  final String? paymentMethod;
  @override
  @JsonKey(name: "assigned_to")
  final String? assignTo;
  @override
  @JsonKey(name: "is_active")
  final bool? isActive;
  @override
  @JsonKey(name: "sales_return_order_id")
  final int? salesReturnOrderId;

  @override
  String toString() {
    return 'InvoiceDataSalesReturn(id: $id, linesReturnInvoice: $linesReturnInvoice, salesReturnInvoiceCode: $salesReturnInvoiceCode, vendorCode: $vendorCode, createdDate: $createdDate, customerId: $customerId, trnNumber: $trnNumber, notes: $notes, remarks: $remarks, invoiceStatus: $invoiceStatus, discount: $discount, unitCost: $unitCost, excessTax: $excessTax, taxableAmount: $taxableAmount, vat: $vat, returnPriceTotal: $returnPriceTotal, totalPrice: $totalPrice, paymentCode: $paymentCode, paymentStatus: $paymentStatus, paymentMethod: $paymentMethod, assignTo: $assignTo, isActive: $isActive, salesReturnOrderId: $salesReturnOrderId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvoiceDataSalesReturn &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._linesReturnInvoice, _linesReturnInvoice) &&
            (identical(other.salesReturnInvoiceCode, salesReturnInvoiceCode) ||
                other.salesReturnInvoiceCode == salesReturnInvoiceCode) &&
            (identical(other.vendorCode, vendorCode) ||
                other.vendorCode == vendorCode) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.trnNumber, trnNumber) ||
                other.trnNumber == trnNumber) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.remarks, remarks) || other.remarks == remarks) &&
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
            (identical(other.paymentCode, paymentCode) ||
                other.paymentCode == paymentCode) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.assignTo, assignTo) ||
                other.assignTo == assignTo) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.salesReturnOrderId, salesReturnOrderId) ||
                other.salesReturnOrderId == salesReturnOrderId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        const DeepCollectionEquality().hash(_linesReturnInvoice),
        salesReturnInvoiceCode,
        vendorCode,
        createdDate,
        customerId,
        trnNumber,
        notes,
        remarks,
        invoiceStatus,
        discount,
        unitCost,
        excessTax,
        taxableAmount,
        vat,
        returnPriceTotal,
        totalPrice,
        paymentCode,
        paymentStatus,
        paymentMethod,
        assignTo,
        isActive,
        salesReturnOrderId
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InvoiceDataSalesReturnCopyWith<_$_InvoiceDataSalesReturn> get copyWith =>
      __$$_InvoiceDataSalesReturnCopyWithImpl<_$_InvoiceDataSalesReturn>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InvoiceDataSalesReturnToJson(
      this,
    );
  }
}

abstract class _InvoiceDataSalesReturn implements InvoiceDataSalesReturn {
  const factory _InvoiceDataSalesReturn(
      {final int? id,
      @JsonKey(name: "lines")
      final List<SalesRetunnInvoiceOrderLines>? linesReturnInvoice,
      @JsonKey(name: "sales_return_invoice_code")
      final String? salesReturnInvoiceCode,
      @JsonKey(name: "vendor_code") final String? vendorCode,
      @JsonKey(name: "created_date") final String? createdDate,
      @JsonKey(name: "customer_id") final String? customerId,
      @JsonKey(name: "trn_number") final String? trnNumber,
      @JsonKey(name: "notes") final String? notes,
      @JsonKey(name: "remarks") final String? remarks,
      @JsonKey(name: "invoice_status") final String? invoiceStatus,
      @JsonKey(name: "discount") final double? discount,
      @JsonKey(name: "unit_cost") final double? unitCost,
      @JsonKey(name: "excess_tax") final double? excessTax,
      @JsonKey(name: "taxable_amount") final double? taxableAmount,
      @JsonKey(name: "vat") final double? vat,
      @JsonKey(name: "return_price_total") final double? returnPriceTotal,
      @JsonKey(name: "total_price") final double? totalPrice,
      @JsonKey(name: "payment_code") final String? paymentCode,
      @JsonKey(name: "payment_status") final String? paymentStatus,
      @JsonKey(name: "payment_method") final String? paymentMethod,
      @JsonKey(name: "assigned_to") final String? assignTo,
      @JsonKey(name: "is_active") final bool? isActive,
      @JsonKey(name: "sales_return_order_id")
      final int? salesReturnOrderId}) = _$_InvoiceDataSalesReturn;

  factory _InvoiceDataSalesReturn.fromJson(Map<String, dynamic> json) =
      _$_InvoiceDataSalesReturn.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: "lines")
  List<SalesRetunnInvoiceOrderLines>? get linesReturnInvoice;
  @override
  @JsonKey(name: "sales_return_invoice_code")
  String? get salesReturnInvoiceCode;
  @override
  @JsonKey(name: "vendor_code")
  String? get vendorCode;
  @override
  @JsonKey(name: "created_date")
  String? get createdDate;
  @override
  @JsonKey(name: "customer_id")
  String? get customerId;
  @override
  @JsonKey(name: "trn_number")
  String? get trnNumber;
  @override
  @JsonKey(name: "notes")
  String? get notes;
  @override
  @JsonKey(name: "remarks")
  String? get remarks;
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
  @JsonKey(name: "payment_code")
  String? get paymentCode;
  @override
  @JsonKey(name: "payment_status")
  String? get paymentStatus;
  @override
  @JsonKey(name: "payment_method")
  String? get paymentMethod;
  @override
  @JsonKey(name: "assigned_to")
  String? get assignTo;
  @override
  @JsonKey(name: "is_active")
  bool? get isActive;
  @override
  @JsonKey(name: "sales_return_order_id")
  int? get salesReturnOrderId;
  @override
  @JsonKey(ignore: true)
  _$$_InvoiceDataSalesReturnCopyWith<_$_InvoiceDataSalesReturn> get copyWith =>
      throw _privateConstructorUsedError;
}
