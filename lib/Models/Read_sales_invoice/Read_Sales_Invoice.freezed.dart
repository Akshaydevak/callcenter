// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'Read_Sales_Invoice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReadSalesInvoice _$ReadSalesInvoiceFromJson(Map<String, dynamic> json) {
  return _ReadSalesInvoice.fromJson(json);
}

/// @nodoc
mixin _$ReadSalesInvoice {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_order_code")
  String? get salesOrderCode => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_id")
  String? get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: "trn_number")
  String? get trnNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_id")
  String? get paymentId => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_status")
  String? get paymentStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "order_satus")
  String? get orderStatus => throw _privateConstructorUsedError;
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
  @JsonKey(name: "selling_price_total")
  double? get sellingPriceTotal => throw _privateConstructorUsedError;
  @JsonKey(name: "warranty_price")
  double? get warrantyPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "total_price")
  double? get totalPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "order_lines")
  List<OrderLineInvoice>? get orderLineInvoice =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "invoice_data")
  InvoiceData? get invoiceDatas => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReadSalesInvoiceCopyWith<ReadSalesInvoice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadSalesInvoiceCopyWith<$Res> {
  factory $ReadSalesInvoiceCopyWith(
          ReadSalesInvoice value, $Res Function(ReadSalesInvoice) then) =
      _$ReadSalesInvoiceCopyWithImpl<$Res, ReadSalesInvoice>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "sales_order_code") String? salesOrderCode,
      @JsonKey(name: "customer_id") String? customerId,
      @JsonKey(name: "trn_number") String? trnNumber,
      @JsonKey(name: "payment_id") String? paymentId,
      @JsonKey(name: "payment_status") String? paymentStatus,
      @JsonKey(name: "order_satus") String? orderStatus,
      @JsonKey(name: "discount") double? discount,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "taxable_amount") double? taxableAmount,
      @JsonKey(name: "vat") double? vat,
      @JsonKey(name: "selling_price_total") double? sellingPriceTotal,
      @JsonKey(name: "warranty_price") double? warrantyPrice,
      @JsonKey(name: "total_price") double? totalPrice,
      @JsonKey(name: "order_lines") List<OrderLineInvoice>? orderLineInvoice,
      @JsonKey(name: "invoice_data") InvoiceData? invoiceDatas});

  $InvoiceDataCopyWith<$Res>? get invoiceDatas;
}

/// @nodoc
class _$ReadSalesInvoiceCopyWithImpl<$Res, $Val extends ReadSalesInvoice>
    implements $ReadSalesInvoiceCopyWith<$Res> {
  _$ReadSalesInvoiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? salesOrderCode = freezed,
    Object? customerId = freezed,
    Object? trnNumber = freezed,
    Object? paymentId = freezed,
    Object? paymentStatus = freezed,
    Object? orderStatus = freezed,
    Object? discount = freezed,
    Object? unitCost = freezed,
    Object? excessTax = freezed,
    Object? taxableAmount = freezed,
    Object? vat = freezed,
    Object? sellingPriceTotal = freezed,
    Object? warrantyPrice = freezed,
    Object? totalPrice = freezed,
    Object? orderLineInvoice = freezed,
    Object? invoiceDatas = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      salesOrderCode: freezed == salesOrderCode
          ? _value.salesOrderCode
          : salesOrderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      trnNumber: freezed == trnNumber
          ? _value.trnNumber
          : trnNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      orderStatus: freezed == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
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
      sellingPriceTotal: freezed == sellingPriceTotal
          ? _value.sellingPriceTotal
          : sellingPriceTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      warrantyPrice: freezed == warrantyPrice
          ? _value.warrantyPrice
          : warrantyPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      orderLineInvoice: freezed == orderLineInvoice
          ? _value.orderLineInvoice
          : orderLineInvoice // ignore: cast_nullable_to_non_nullable
              as List<OrderLineInvoice>?,
      invoiceDatas: freezed == invoiceDatas
          ? _value.invoiceDatas
          : invoiceDatas // ignore: cast_nullable_to_non_nullable
              as InvoiceData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InvoiceDataCopyWith<$Res>? get invoiceDatas {
    if (_value.invoiceDatas == null) {
      return null;
    }

    return $InvoiceDataCopyWith<$Res>(_value.invoiceDatas!, (value) {
      return _then(_value.copyWith(invoiceDatas: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ReadSalesInvoiceCopyWith<$Res>
    implements $ReadSalesInvoiceCopyWith<$Res> {
  factory _$$_ReadSalesInvoiceCopyWith(
          _$_ReadSalesInvoice value, $Res Function(_$_ReadSalesInvoice) then) =
      __$$_ReadSalesInvoiceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "sales_order_code") String? salesOrderCode,
      @JsonKey(name: "customer_id") String? customerId,
      @JsonKey(name: "trn_number") String? trnNumber,
      @JsonKey(name: "payment_id") String? paymentId,
      @JsonKey(name: "payment_status") String? paymentStatus,
      @JsonKey(name: "order_satus") String? orderStatus,
      @JsonKey(name: "discount") double? discount,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "taxable_amount") double? taxableAmount,
      @JsonKey(name: "vat") double? vat,
      @JsonKey(name: "selling_price_total") double? sellingPriceTotal,
      @JsonKey(name: "warranty_price") double? warrantyPrice,
      @JsonKey(name: "total_price") double? totalPrice,
      @JsonKey(name: "order_lines") List<OrderLineInvoice>? orderLineInvoice,
      @JsonKey(name: "invoice_data") InvoiceData? invoiceDatas});

  @override
  $InvoiceDataCopyWith<$Res>? get invoiceDatas;
}

/// @nodoc
class __$$_ReadSalesInvoiceCopyWithImpl<$Res>
    extends _$ReadSalesInvoiceCopyWithImpl<$Res, _$_ReadSalesInvoice>
    implements _$$_ReadSalesInvoiceCopyWith<$Res> {
  __$$_ReadSalesInvoiceCopyWithImpl(
      _$_ReadSalesInvoice _value, $Res Function(_$_ReadSalesInvoice) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? salesOrderCode = freezed,
    Object? customerId = freezed,
    Object? trnNumber = freezed,
    Object? paymentId = freezed,
    Object? paymentStatus = freezed,
    Object? orderStatus = freezed,
    Object? discount = freezed,
    Object? unitCost = freezed,
    Object? excessTax = freezed,
    Object? taxableAmount = freezed,
    Object? vat = freezed,
    Object? sellingPriceTotal = freezed,
    Object? warrantyPrice = freezed,
    Object? totalPrice = freezed,
    Object? orderLineInvoice = freezed,
    Object? invoiceDatas = freezed,
  }) {
    return _then(_$_ReadSalesInvoice(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      salesOrderCode: freezed == salesOrderCode
          ? _value.salesOrderCode
          : salesOrderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      trnNumber: freezed == trnNumber
          ? _value.trnNumber
          : trnNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      orderStatus: freezed == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
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
      sellingPriceTotal: freezed == sellingPriceTotal
          ? _value.sellingPriceTotal
          : sellingPriceTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      warrantyPrice: freezed == warrantyPrice
          ? _value.warrantyPrice
          : warrantyPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      orderLineInvoice: freezed == orderLineInvoice
          ? _value._orderLineInvoice
          : orderLineInvoice // ignore: cast_nullable_to_non_nullable
              as List<OrderLineInvoice>?,
      invoiceDatas: freezed == invoiceDatas
          ? _value.invoiceDatas
          : invoiceDatas // ignore: cast_nullable_to_non_nullable
              as InvoiceData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReadSalesInvoice implements _ReadSalesInvoice {
  const _$_ReadSalesInvoice(
      {this.id,
      @JsonKey(name: "sales_order_code") this.salesOrderCode,
      @JsonKey(name: "customer_id") this.customerId,
      @JsonKey(name: "trn_number") this.trnNumber,
      @JsonKey(name: "payment_id") this.paymentId,
      @JsonKey(name: "payment_status") this.paymentStatus,
      @JsonKey(name: "order_satus") this.orderStatus,
      @JsonKey(name: "discount") this.discount,
      @JsonKey(name: "unit_cost") this.unitCost,
      @JsonKey(name: "excess_tax") this.excessTax,
      @JsonKey(name: "taxable_amount") this.taxableAmount,
      @JsonKey(name: "vat") this.vat,
      @JsonKey(name: "selling_price_total") this.sellingPriceTotal,
      @JsonKey(name: "warranty_price") this.warrantyPrice,
      @JsonKey(name: "total_price") this.totalPrice,
      @JsonKey(name: "order_lines")
      final List<OrderLineInvoice>? orderLineInvoice,
      @JsonKey(name: "invoice_data") this.invoiceDatas})
      : _orderLineInvoice = orderLineInvoice;

  factory _$_ReadSalesInvoice.fromJson(Map<String, dynamic> json) =>
      _$$_ReadSalesInvoiceFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: "sales_order_code")
  final String? salesOrderCode;
  @override
  @JsonKey(name: "customer_id")
  final String? customerId;
  @override
  @JsonKey(name: "trn_number")
  final String? trnNumber;
  @override
  @JsonKey(name: "payment_id")
  final String? paymentId;
  @override
  @JsonKey(name: "payment_status")
  final String? paymentStatus;
  @override
  @JsonKey(name: "order_satus")
  final String? orderStatus;
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
  @JsonKey(name: "selling_price_total")
  final double? sellingPriceTotal;
  @override
  @JsonKey(name: "warranty_price")
  final double? warrantyPrice;
  @override
  @JsonKey(name: "total_price")
  final double? totalPrice;
  final List<OrderLineInvoice>? _orderLineInvoice;
  @override
  @JsonKey(name: "order_lines")
  List<OrderLineInvoice>? get orderLineInvoice {
    final value = _orderLineInvoice;
    if (value == null) return null;
    if (_orderLineInvoice is EqualUnmodifiableListView)
      return _orderLineInvoice;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "invoice_data")
  final InvoiceData? invoiceDatas;

  @override
  String toString() {
    return 'ReadSalesInvoice(id: $id, salesOrderCode: $salesOrderCode, customerId: $customerId, trnNumber: $trnNumber, paymentId: $paymentId, paymentStatus: $paymentStatus, orderStatus: $orderStatus, discount: $discount, unitCost: $unitCost, excessTax: $excessTax, taxableAmount: $taxableAmount, vat: $vat, sellingPriceTotal: $sellingPriceTotal, warrantyPrice: $warrantyPrice, totalPrice: $totalPrice, orderLineInvoice: $orderLineInvoice, invoiceDatas: $invoiceDatas)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReadSalesInvoice &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.salesOrderCode, salesOrderCode) ||
                other.salesOrderCode == salesOrderCode) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.trnNumber, trnNumber) ||
                other.trnNumber == trnNumber) &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(other.orderStatus, orderStatus) ||
                other.orderStatus == orderStatus) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.unitCost, unitCost) ||
                other.unitCost == unitCost) &&
            (identical(other.excessTax, excessTax) ||
                other.excessTax == excessTax) &&
            (identical(other.taxableAmount, taxableAmount) ||
                other.taxableAmount == taxableAmount) &&
            (identical(other.vat, vat) || other.vat == vat) &&
            (identical(other.sellingPriceTotal, sellingPriceTotal) ||
                other.sellingPriceTotal == sellingPriceTotal) &&
            (identical(other.warrantyPrice, warrantyPrice) ||
                other.warrantyPrice == warrantyPrice) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            const DeepCollectionEquality()
                .equals(other._orderLineInvoice, _orderLineInvoice) &&
            (identical(other.invoiceDatas, invoiceDatas) ||
                other.invoiceDatas == invoiceDatas));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      salesOrderCode,
      customerId,
      trnNumber,
      paymentId,
      paymentStatus,
      orderStatus,
      discount,
      unitCost,
      excessTax,
      taxableAmount,
      vat,
      sellingPriceTotal,
      warrantyPrice,
      totalPrice,
      const DeepCollectionEquality().hash(_orderLineInvoice),
      invoiceDatas);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReadSalesInvoiceCopyWith<_$_ReadSalesInvoice> get copyWith =>
      __$$_ReadSalesInvoiceCopyWithImpl<_$_ReadSalesInvoice>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReadSalesInvoiceToJson(
      this,
    );
  }
}

abstract class _ReadSalesInvoice implements ReadSalesInvoice {
  const factory _ReadSalesInvoice(
          {final int? id,
          @JsonKey(name: "sales_order_code") final String? salesOrderCode,
          @JsonKey(name: "customer_id") final String? customerId,
          @JsonKey(name: "trn_number") final String? trnNumber,
          @JsonKey(name: "payment_id") final String? paymentId,
          @JsonKey(name: "payment_status") final String? paymentStatus,
          @JsonKey(name: "order_satus") final String? orderStatus,
          @JsonKey(name: "discount") final double? discount,
          @JsonKey(name: "unit_cost") final double? unitCost,
          @JsonKey(name: "excess_tax") final double? excessTax,
          @JsonKey(name: "taxable_amount") final double? taxableAmount,
          @JsonKey(name: "vat") final double? vat,
          @JsonKey(name: "selling_price_total") final double? sellingPriceTotal,
          @JsonKey(name: "warranty_price") final double? warrantyPrice,
          @JsonKey(name: "total_price") final double? totalPrice,
          @JsonKey(name: "order_lines")
          final List<OrderLineInvoice>? orderLineInvoice,
          @JsonKey(name: "invoice_data") final InvoiceData? invoiceDatas}) =
      _$_ReadSalesInvoice;

  factory _ReadSalesInvoice.fromJson(Map<String, dynamic> json) =
      _$_ReadSalesInvoice.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: "sales_order_code")
  String? get salesOrderCode;
  @override
  @JsonKey(name: "customer_id")
  String? get customerId;
  @override
  @JsonKey(name: "trn_number")
  String? get trnNumber;
  @override
  @JsonKey(name: "payment_id")
  String? get paymentId;
  @override
  @JsonKey(name: "payment_status")
  String? get paymentStatus;
  @override
  @JsonKey(name: "order_satus")
  String? get orderStatus;
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
  @JsonKey(name: "selling_price_total")
  double? get sellingPriceTotal;
  @override
  @JsonKey(name: "warranty_price")
  double? get warrantyPrice;
  @override
  @JsonKey(name: "total_price")
  double? get totalPrice;
  @override
  @JsonKey(name: "order_lines")
  List<OrderLineInvoice>? get orderLineInvoice;
  @override
  @JsonKey(name: "invoice_data")
  InvoiceData? get invoiceDatas;
  @override
  @JsonKey(ignore: true)
  _$$_ReadSalesInvoiceCopyWith<_$_ReadSalesInvoice> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderLineInvoice _$OrderLineInvoiceFromJson(Map<String, dynamic> json) {
  return _OrderLineInvoice.fromJson(json);
}

/// @nodoc
mixin _$OrderLineInvoice {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "invoice_line_code")
  String? get invoiceLineCode => throw _privateConstructorUsedError;
  @JsonKey(name: "variant_id")
  String? get variantId => throw _privateConstructorUsedError;
  @JsonKey(name: "variant_inventory_id")
  String? get variantInventoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "barcode")
  String? get barcode => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_order_line_code")
  String? get salesOrderLineCode => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_uom")
  String? get salesUom => throw _privateConstructorUsedError;
  @JsonKey(name: "total_qty")
  int? get totalQty => throw _privateConstructorUsedError;
  @JsonKey(name: "quantity")
  int? get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: "is_invoiced")
  bool? get isInvoiced => throw _privateConstructorUsedError;
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
  @JsonKey(name: "selling_price")
  double? get sellingPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "total_price")
  double? get totalPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "warranty_price")
  double? get warrantyPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active")
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "stock_id")
  String? get stockId => throw _privateConstructorUsedError;
  @JsonKey(name: "return_type")
  String? get returnType => throw _privateConstructorUsedError;
  @JsonKey(name: "return_time")
  int? get returnTime => throw _privateConstructorUsedError;
  @JsonKey(name: "invoiced_date")
  String? get invoiceDate => throw _privateConstructorUsedError;
  @JsonKey(name: "invoiced_time")
  String? get invoiceTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderLineInvoiceCopyWith<OrderLineInvoice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderLineInvoiceCopyWith<$Res> {
  factory $OrderLineInvoiceCopyWith(
          OrderLineInvoice value, $Res Function(OrderLineInvoice) then) =
      _$OrderLineInvoiceCopyWithImpl<$Res, OrderLineInvoice>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "invoice_line_code") String? invoiceLineCode,
      @JsonKey(name: "variant_id") String? variantId,
      @JsonKey(name: "variant_inventory_id") String? variantInventoryId,
      @JsonKey(name: "barcode") String? barcode,
      @JsonKey(name: "sales_order_line_code") String? salesOrderLineCode,
      @JsonKey(name: "sales_uom") String? salesUom,
      @JsonKey(name: "total_qty") int? totalQty,
      @JsonKey(name: "quantity") int? quantity,
      @JsonKey(name: "is_invoiced") bool? isInvoiced,
      @JsonKey(name: "discount_type") String? discountType,
      @JsonKey(name: "discount") double? discount,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "taxable_amount") double? taxableAmount,
      @JsonKey(name: "vat") double? vat,
      @JsonKey(name: "selling_price") double? sellingPrice,
      @JsonKey(name: "total_price") double? totalPrice,
      @JsonKey(name: "warranty_price") double? warrantyPrice,
      @JsonKey(name: "is_active") bool? isActive,
      @JsonKey(name: "stock_id") String? stockId,
      @JsonKey(name: "return_type") String? returnType,
      @JsonKey(name: "return_time") int? returnTime,
      @JsonKey(name: "invoiced_date") String? invoiceDate,
      @JsonKey(name: "invoiced_time") String? invoiceTime});
}

/// @nodoc
class _$OrderLineInvoiceCopyWithImpl<$Res, $Val extends OrderLineInvoice>
    implements $OrderLineInvoiceCopyWith<$Res> {
  _$OrderLineInvoiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? invoiceLineCode = freezed,
    Object? variantId = freezed,
    Object? variantInventoryId = freezed,
    Object? barcode = freezed,
    Object? salesOrderLineCode = freezed,
    Object? salesUom = freezed,
    Object? totalQty = freezed,
    Object? quantity = freezed,
    Object? isInvoiced = freezed,
    Object? discountType = freezed,
    Object? discount = freezed,
    Object? unitCost = freezed,
    Object? excessTax = freezed,
    Object? taxableAmount = freezed,
    Object? vat = freezed,
    Object? sellingPrice = freezed,
    Object? totalPrice = freezed,
    Object? warrantyPrice = freezed,
    Object? isActive = freezed,
    Object? stockId = freezed,
    Object? returnType = freezed,
    Object? returnTime = freezed,
    Object? invoiceDate = freezed,
    Object? invoiceTime = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      invoiceLineCode: freezed == invoiceLineCode
          ? _value.invoiceLineCode
          : invoiceLineCode // ignore: cast_nullable_to_non_nullable
              as String?,
      variantId: freezed == variantId
          ? _value.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
              as String?,
      variantInventoryId: freezed == variantInventoryId
          ? _value.variantInventoryId
          : variantInventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      salesOrderLineCode: freezed == salesOrderLineCode
          ? _value.salesOrderLineCode
          : salesOrderLineCode // ignore: cast_nullable_to_non_nullable
              as String?,
      salesUom: freezed == salesUom
          ? _value.salesUom
          : salesUom // ignore: cast_nullable_to_non_nullable
              as String?,
      totalQty: freezed == totalQty
          ? _value.totalQty
          : totalQty // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      isInvoiced: freezed == isInvoiced
          ? _value.isInvoiced
          : isInvoiced // ignore: cast_nullable_to_non_nullable
              as bool?,
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
      sellingPrice: freezed == sellingPrice
          ? _value.sellingPrice
          : sellingPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      warrantyPrice: freezed == warrantyPrice
          ? _value.warrantyPrice
          : warrantyPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      stockId: freezed == stockId
          ? _value.stockId
          : stockId // ignore: cast_nullable_to_non_nullable
              as String?,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrderLineInvoiceCopyWith<$Res>
    implements $OrderLineInvoiceCopyWith<$Res> {
  factory _$$_OrderLineInvoiceCopyWith(
          _$_OrderLineInvoice value, $Res Function(_$_OrderLineInvoice) then) =
      __$$_OrderLineInvoiceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "invoice_line_code") String? invoiceLineCode,
      @JsonKey(name: "variant_id") String? variantId,
      @JsonKey(name: "variant_inventory_id") String? variantInventoryId,
      @JsonKey(name: "barcode") String? barcode,
      @JsonKey(name: "sales_order_line_code") String? salesOrderLineCode,
      @JsonKey(name: "sales_uom") String? salesUom,
      @JsonKey(name: "total_qty") int? totalQty,
      @JsonKey(name: "quantity") int? quantity,
      @JsonKey(name: "is_invoiced") bool? isInvoiced,
      @JsonKey(name: "discount_type") String? discountType,
      @JsonKey(name: "discount") double? discount,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "taxable_amount") double? taxableAmount,
      @JsonKey(name: "vat") double? vat,
      @JsonKey(name: "selling_price") double? sellingPrice,
      @JsonKey(name: "total_price") double? totalPrice,
      @JsonKey(name: "warranty_price") double? warrantyPrice,
      @JsonKey(name: "is_active") bool? isActive,
      @JsonKey(name: "stock_id") String? stockId,
      @JsonKey(name: "return_type") String? returnType,
      @JsonKey(name: "return_time") int? returnTime,
      @JsonKey(name: "invoiced_date") String? invoiceDate,
      @JsonKey(name: "invoiced_time") String? invoiceTime});
}

/// @nodoc
class __$$_OrderLineInvoiceCopyWithImpl<$Res>
    extends _$OrderLineInvoiceCopyWithImpl<$Res, _$_OrderLineInvoice>
    implements _$$_OrderLineInvoiceCopyWith<$Res> {
  __$$_OrderLineInvoiceCopyWithImpl(
      _$_OrderLineInvoice _value, $Res Function(_$_OrderLineInvoice) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? invoiceLineCode = freezed,
    Object? variantId = freezed,
    Object? variantInventoryId = freezed,
    Object? barcode = freezed,
    Object? salesOrderLineCode = freezed,
    Object? salesUom = freezed,
    Object? totalQty = freezed,
    Object? quantity = freezed,
    Object? isInvoiced = freezed,
    Object? discountType = freezed,
    Object? discount = freezed,
    Object? unitCost = freezed,
    Object? excessTax = freezed,
    Object? taxableAmount = freezed,
    Object? vat = freezed,
    Object? sellingPrice = freezed,
    Object? totalPrice = freezed,
    Object? warrantyPrice = freezed,
    Object? isActive = freezed,
    Object? stockId = freezed,
    Object? returnType = freezed,
    Object? returnTime = freezed,
    Object? invoiceDate = freezed,
    Object? invoiceTime = freezed,
  }) {
    return _then(_$_OrderLineInvoice(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      invoiceLineCode: freezed == invoiceLineCode
          ? _value.invoiceLineCode
          : invoiceLineCode // ignore: cast_nullable_to_non_nullable
              as String?,
      variantId: freezed == variantId
          ? _value.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
              as String?,
      variantInventoryId: freezed == variantInventoryId
          ? _value.variantInventoryId
          : variantInventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      salesOrderLineCode: freezed == salesOrderLineCode
          ? _value.salesOrderLineCode
          : salesOrderLineCode // ignore: cast_nullable_to_non_nullable
              as String?,
      salesUom: freezed == salesUom
          ? _value.salesUom
          : salesUom // ignore: cast_nullable_to_non_nullable
              as String?,
      totalQty: freezed == totalQty
          ? _value.totalQty
          : totalQty // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      isInvoiced: freezed == isInvoiced
          ? _value.isInvoiced
          : isInvoiced // ignore: cast_nullable_to_non_nullable
              as bool?,
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
      sellingPrice: freezed == sellingPrice
          ? _value.sellingPrice
          : sellingPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      warrantyPrice: freezed == warrantyPrice
          ? _value.warrantyPrice
          : warrantyPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      stockId: freezed == stockId
          ? _value.stockId
          : stockId // ignore: cast_nullable_to_non_nullable
              as String?,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderLineInvoice implements _OrderLineInvoice {
  const _$_OrderLineInvoice(
      {this.id,
      @JsonKey(name: "invoice_line_code") this.invoiceLineCode,
      @JsonKey(name: "variant_id") this.variantId,
      @JsonKey(name: "variant_inventory_id") this.variantInventoryId,
      @JsonKey(name: "barcode") this.barcode,
      @JsonKey(name: "sales_order_line_code") this.salesOrderLineCode,
      @JsonKey(name: "sales_uom") this.salesUom,
      @JsonKey(name: "total_qty") this.totalQty,
      @JsonKey(name: "quantity") this.quantity,
      @JsonKey(name: "is_invoiced") this.isInvoiced,
      @JsonKey(name: "discount_type") this.discountType,
      @JsonKey(name: "discount") this.discount,
      @JsonKey(name: "unit_cost") this.unitCost,
      @JsonKey(name: "excess_tax") this.excessTax,
      @JsonKey(name: "taxable_amount") this.taxableAmount,
      @JsonKey(name: "vat") this.vat,
      @JsonKey(name: "selling_price") this.sellingPrice,
      @JsonKey(name: "total_price") this.totalPrice,
      @JsonKey(name: "warranty_price") this.warrantyPrice,
      @JsonKey(name: "is_active") this.isActive,
      @JsonKey(name: "stock_id") this.stockId,
      @JsonKey(name: "return_type") this.returnType,
      @JsonKey(name: "return_time") this.returnTime,
      @JsonKey(name: "invoiced_date") this.invoiceDate,
      @JsonKey(name: "invoiced_time") this.invoiceTime});

  factory _$_OrderLineInvoice.fromJson(Map<String, dynamic> json) =>
      _$$_OrderLineInvoiceFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: "invoice_line_code")
  final String? invoiceLineCode;
  @override
  @JsonKey(name: "variant_id")
  final String? variantId;
  @override
  @JsonKey(name: "variant_inventory_id")
  final String? variantInventoryId;
  @override
  @JsonKey(name: "barcode")
  final String? barcode;
  @override
  @JsonKey(name: "sales_order_line_code")
  final String? salesOrderLineCode;
  @override
  @JsonKey(name: "sales_uom")
  final String? salesUom;
  @override
  @JsonKey(name: "total_qty")
  final int? totalQty;
  @override
  @JsonKey(name: "quantity")
  final int? quantity;
  @override
  @JsonKey(name: "is_invoiced")
  final bool? isInvoiced;
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
  @JsonKey(name: "selling_price")
  final double? sellingPrice;
  @override
  @JsonKey(name: "total_price")
  final double? totalPrice;
  @override
  @JsonKey(name: "warranty_price")
  final double? warrantyPrice;
  @override
  @JsonKey(name: "is_active")
  final bool? isActive;
  @override
  @JsonKey(name: "stock_id")
  final String? stockId;
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
  String toString() {
    return 'OrderLineInvoice(id: $id, invoiceLineCode: $invoiceLineCode, variantId: $variantId, variantInventoryId: $variantInventoryId, barcode: $barcode, salesOrderLineCode: $salesOrderLineCode, salesUom: $salesUom, totalQty: $totalQty, quantity: $quantity, isInvoiced: $isInvoiced, discountType: $discountType, discount: $discount, unitCost: $unitCost, excessTax: $excessTax, taxableAmount: $taxableAmount, vat: $vat, sellingPrice: $sellingPrice, totalPrice: $totalPrice, warrantyPrice: $warrantyPrice, isActive: $isActive, stockId: $stockId, returnType: $returnType, returnTime: $returnTime, invoiceDate: $invoiceDate, invoiceTime: $invoiceTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderLineInvoice &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.invoiceLineCode, invoiceLineCode) ||
                other.invoiceLineCode == invoiceLineCode) &&
            (identical(other.variantId, variantId) ||
                other.variantId == variantId) &&
            (identical(other.variantInventoryId, variantInventoryId) ||
                other.variantInventoryId == variantInventoryId) &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(other.salesOrderLineCode, salesOrderLineCode) ||
                other.salesOrderLineCode == salesOrderLineCode) &&
            (identical(other.salesUom, salesUom) ||
                other.salesUom == salesUom) &&
            (identical(other.totalQty, totalQty) ||
                other.totalQty == totalQty) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.isInvoiced, isInvoiced) ||
                other.isInvoiced == isInvoiced) &&
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
            (identical(other.sellingPrice, sellingPrice) ||
                other.sellingPrice == sellingPrice) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.warrantyPrice, warrantyPrice) ||
                other.warrantyPrice == warrantyPrice) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.stockId, stockId) || other.stockId == stockId) &&
            (identical(other.returnType, returnType) ||
                other.returnType == returnType) &&
            (identical(other.returnTime, returnTime) ||
                other.returnTime == returnTime) &&
            (identical(other.invoiceDate, invoiceDate) ||
                other.invoiceDate == invoiceDate) &&
            (identical(other.invoiceTime, invoiceTime) ||
                other.invoiceTime == invoiceTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        invoiceLineCode,
        variantId,
        variantInventoryId,
        barcode,
        salesOrderLineCode,
        salesUom,
        totalQty,
        quantity,
        isInvoiced,
        discountType,
        discount,
        unitCost,
        excessTax,
        taxableAmount,
        vat,
        sellingPrice,
        totalPrice,
        warrantyPrice,
        isActive,
        stockId,
        returnType,
        returnTime,
        invoiceDate,
        invoiceTime
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderLineInvoiceCopyWith<_$_OrderLineInvoice> get copyWith =>
      __$$_OrderLineInvoiceCopyWithImpl<_$_OrderLineInvoice>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderLineInvoiceToJson(
      this,
    );
  }
}

abstract class _OrderLineInvoice implements OrderLineInvoice {
  const factory _OrderLineInvoice(
      {final int? id,
      @JsonKey(name: "invoice_line_code") final String? invoiceLineCode,
      @JsonKey(name: "variant_id") final String? variantId,
      @JsonKey(name: "variant_inventory_id") final String? variantInventoryId,
      @JsonKey(name: "barcode") final String? barcode,
      @JsonKey(name: "sales_order_line_code") final String? salesOrderLineCode,
      @JsonKey(name: "sales_uom") final String? salesUom,
      @JsonKey(name: "total_qty") final int? totalQty,
      @JsonKey(name: "quantity") final int? quantity,
      @JsonKey(name: "is_invoiced") final bool? isInvoiced,
      @JsonKey(name: "discount_type") final String? discountType,
      @JsonKey(name: "discount") final double? discount,
      @JsonKey(name: "unit_cost") final double? unitCost,
      @JsonKey(name: "excess_tax") final double? excessTax,
      @JsonKey(name: "taxable_amount") final double? taxableAmount,
      @JsonKey(name: "vat") final double? vat,
      @JsonKey(name: "selling_price") final double? sellingPrice,
      @JsonKey(name: "total_price") final double? totalPrice,
      @JsonKey(name: "warranty_price") final double? warrantyPrice,
      @JsonKey(name: "is_active") final bool? isActive,
      @JsonKey(name: "stock_id") final String? stockId,
      @JsonKey(name: "return_type") final String? returnType,
      @JsonKey(name: "return_time") final int? returnTime,
      @JsonKey(name: "invoiced_date") final String? invoiceDate,
      @JsonKey(name: "invoiced_time")
      final String? invoiceTime}) = _$_OrderLineInvoice;

  factory _OrderLineInvoice.fromJson(Map<String, dynamic> json) =
      _$_OrderLineInvoice.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: "invoice_line_code")
  String? get invoiceLineCode;
  @override
  @JsonKey(name: "variant_id")
  String? get variantId;
  @override
  @JsonKey(name: "variant_inventory_id")
  String? get variantInventoryId;
  @override
  @JsonKey(name: "barcode")
  String? get barcode;
  @override
  @JsonKey(name: "sales_order_line_code")
  String? get salesOrderLineCode;
  @override
  @JsonKey(name: "sales_uom")
  String? get salesUom;
  @override
  @JsonKey(name: "total_qty")
  int? get totalQty;
  @override
  @JsonKey(name: "quantity")
  int? get quantity;
  @override
  @JsonKey(name: "is_invoiced")
  bool? get isInvoiced;
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
  @JsonKey(name: "selling_price")
  double? get sellingPrice;
  @override
  @JsonKey(name: "total_price")
  double? get totalPrice;
  @override
  @JsonKey(name: "warranty_price")
  double? get warrantyPrice;
  @override
  @JsonKey(name: "is_active")
  bool? get isActive;
  @override
  @JsonKey(name: "stock_id")
  String? get stockId;
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
  @JsonKey(ignore: true)
  _$$_OrderLineInvoiceCopyWith<_$_OrderLineInvoice> get copyWith =>
      throw _privateConstructorUsedError;
}

InvoiceData _$InvoiceDataFromJson(Map<String, dynamic> json) {
  return _InvoiceData.fromJson(json);
}

/// @nodoc
mixin _$InvoiceData {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_order_id")
  int? get salesOrderId => throw _privateConstructorUsedError;
  @JsonKey(name: "invoice_code")
  String? get invoiceCode => throw _privateConstructorUsedError;
  @JsonKey(name: "created_date")
  String? get createdDate => throw _privateConstructorUsedError;
  @JsonKey(name: "notes")
  String? get notes => throw _privateConstructorUsedError;
  @JsonKey(name: "remarks")
  String? get remarks => throw _privateConstructorUsedError;
  @JsonKey(name: "invoice_status")
  String? get invoiceStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "assigned_to")
  String? get assignTo => throw _privateConstructorUsedError;
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
  @JsonKey(name: "selling_price_total")
  double? get sellingPriceTotal => throw _privateConstructorUsedError;
  @JsonKey(name: "total_price")
  double? get totalPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "invoice_lines")
  List<OrderLineInvoice>? get invoiceLinesRead =>
      throw _privateConstructorUsedError;

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
      @JsonKey(name: "sales_order_id") int? salesOrderId,
      @JsonKey(name: "invoice_code") String? invoiceCode,
      @JsonKey(name: "created_date") String? createdDate,
      @JsonKey(name: "notes") String? notes,
      @JsonKey(name: "remarks") String? remarks,
      @JsonKey(name: "invoice_status") String? invoiceStatus,
      @JsonKey(name: "assigned_to") String? assignTo,
      @JsonKey(name: "discount") double? discount,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "taxable_amount") double? taxableAmount,
      @JsonKey(name: "vat") double? vat,
      @JsonKey(name: "selling_price_total") double? sellingPriceTotal,
      @JsonKey(name: "total_price") double? totalPrice,
      @JsonKey(name: "invoice_lines")
      List<OrderLineInvoice>? invoiceLinesRead});
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
    Object? salesOrderId = freezed,
    Object? invoiceCode = freezed,
    Object? createdDate = freezed,
    Object? notes = freezed,
    Object? remarks = freezed,
    Object? invoiceStatus = freezed,
    Object? assignTo = freezed,
    Object? discount = freezed,
    Object? unitCost = freezed,
    Object? excessTax = freezed,
    Object? taxableAmount = freezed,
    Object? vat = freezed,
    Object? sellingPriceTotal = freezed,
    Object? totalPrice = freezed,
    Object? invoiceLinesRead = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      salesOrderId: freezed == salesOrderId
          ? _value.salesOrderId
          : salesOrderId // ignore: cast_nullable_to_non_nullable
              as int?,
      invoiceCode: freezed == invoiceCode
          ? _value.invoiceCode
          : invoiceCode // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
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
      assignTo: freezed == assignTo
          ? _value.assignTo
          : assignTo // ignore: cast_nullable_to_non_nullable
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
      sellingPriceTotal: freezed == sellingPriceTotal
          ? _value.sellingPriceTotal
          : sellingPriceTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      invoiceLinesRead: freezed == invoiceLinesRead
          ? _value.invoiceLinesRead
          : invoiceLinesRead // ignore: cast_nullable_to_non_nullable
              as List<OrderLineInvoice>?,
    ) as $Val);
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
      @JsonKey(name: "sales_order_id") int? salesOrderId,
      @JsonKey(name: "invoice_code") String? invoiceCode,
      @JsonKey(name: "created_date") String? createdDate,
      @JsonKey(name: "notes") String? notes,
      @JsonKey(name: "remarks") String? remarks,
      @JsonKey(name: "invoice_status") String? invoiceStatus,
      @JsonKey(name: "assigned_to") String? assignTo,
      @JsonKey(name: "discount") double? discount,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "taxable_amount") double? taxableAmount,
      @JsonKey(name: "vat") double? vat,
      @JsonKey(name: "selling_price_total") double? sellingPriceTotal,
      @JsonKey(name: "total_price") double? totalPrice,
      @JsonKey(name: "invoice_lines")
      List<OrderLineInvoice>? invoiceLinesRead});
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
    Object? salesOrderId = freezed,
    Object? invoiceCode = freezed,
    Object? createdDate = freezed,
    Object? notes = freezed,
    Object? remarks = freezed,
    Object? invoiceStatus = freezed,
    Object? assignTo = freezed,
    Object? discount = freezed,
    Object? unitCost = freezed,
    Object? excessTax = freezed,
    Object? taxableAmount = freezed,
    Object? vat = freezed,
    Object? sellingPriceTotal = freezed,
    Object? totalPrice = freezed,
    Object? invoiceLinesRead = freezed,
  }) {
    return _then(_$_InvoiceData(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      salesOrderId: freezed == salesOrderId
          ? _value.salesOrderId
          : salesOrderId // ignore: cast_nullable_to_non_nullable
              as int?,
      invoiceCode: freezed == invoiceCode
          ? _value.invoiceCode
          : invoiceCode // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
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
      assignTo: freezed == assignTo
          ? _value.assignTo
          : assignTo // ignore: cast_nullable_to_non_nullable
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
      sellingPriceTotal: freezed == sellingPriceTotal
          ? _value.sellingPriceTotal
          : sellingPriceTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      invoiceLinesRead: freezed == invoiceLinesRead
          ? _value._invoiceLinesRead
          : invoiceLinesRead // ignore: cast_nullable_to_non_nullable
              as List<OrderLineInvoice>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InvoiceData implements _InvoiceData {
  const _$_InvoiceData(
      {this.id,
      @JsonKey(name: "sales_order_id") this.salesOrderId,
      @JsonKey(name: "invoice_code") this.invoiceCode,
      @JsonKey(name: "created_date") this.createdDate,
      @JsonKey(name: "notes") this.notes,
      @JsonKey(name: "remarks") this.remarks,
      @JsonKey(name: "invoice_status") this.invoiceStatus,
      @JsonKey(name: "assigned_to") this.assignTo,
      @JsonKey(name: "discount") this.discount,
      @JsonKey(name: "unit_cost") this.unitCost,
      @JsonKey(name: "excess_tax") this.excessTax,
      @JsonKey(name: "taxable_amount") this.taxableAmount,
      @JsonKey(name: "vat") this.vat,
      @JsonKey(name: "selling_price_total") this.sellingPriceTotal,
      @JsonKey(name: "total_price") this.totalPrice,
      @JsonKey(name: "invoice_lines")
      final List<OrderLineInvoice>? invoiceLinesRead})
      : _invoiceLinesRead = invoiceLinesRead;

  factory _$_InvoiceData.fromJson(Map<String, dynamic> json) =>
      _$$_InvoiceDataFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: "sales_order_id")
  final int? salesOrderId;
  @override
  @JsonKey(name: "invoice_code")
  final String? invoiceCode;
  @override
  @JsonKey(name: "created_date")
  final String? createdDate;
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
  @JsonKey(name: "assigned_to")
  final String? assignTo;
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
  @JsonKey(name: "selling_price_total")
  final double? sellingPriceTotal;
  @override
  @JsonKey(name: "total_price")
  final double? totalPrice;
  final List<OrderLineInvoice>? _invoiceLinesRead;
  @override
  @JsonKey(name: "invoice_lines")
  List<OrderLineInvoice>? get invoiceLinesRead {
    final value = _invoiceLinesRead;
    if (value == null) return null;
    if (_invoiceLinesRead is EqualUnmodifiableListView)
      return _invoiceLinesRead;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'InvoiceData(id: $id, salesOrderId: $salesOrderId, invoiceCode: $invoiceCode, createdDate: $createdDate, notes: $notes, remarks: $remarks, invoiceStatus: $invoiceStatus, assignTo: $assignTo, discount: $discount, unitCost: $unitCost, excessTax: $excessTax, taxableAmount: $taxableAmount, vat: $vat, sellingPriceTotal: $sellingPriceTotal, totalPrice: $totalPrice, invoiceLinesRead: $invoiceLinesRead)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvoiceData &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.salesOrderId, salesOrderId) ||
                other.salesOrderId == salesOrderId) &&
            (identical(other.invoiceCode, invoiceCode) ||
                other.invoiceCode == invoiceCode) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.remarks, remarks) || other.remarks == remarks) &&
            (identical(other.invoiceStatus, invoiceStatus) ||
                other.invoiceStatus == invoiceStatus) &&
            (identical(other.assignTo, assignTo) ||
                other.assignTo == assignTo) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.unitCost, unitCost) ||
                other.unitCost == unitCost) &&
            (identical(other.excessTax, excessTax) ||
                other.excessTax == excessTax) &&
            (identical(other.taxableAmount, taxableAmount) ||
                other.taxableAmount == taxableAmount) &&
            (identical(other.vat, vat) || other.vat == vat) &&
            (identical(other.sellingPriceTotal, sellingPriceTotal) ||
                other.sellingPriceTotal == sellingPriceTotal) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            const DeepCollectionEquality()
                .equals(other._invoiceLinesRead, _invoiceLinesRead));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      salesOrderId,
      invoiceCode,
      createdDate,
      notes,
      remarks,
      invoiceStatus,
      assignTo,
      discount,
      unitCost,
      excessTax,
      taxableAmount,
      vat,
      sellingPriceTotal,
      totalPrice,
      const DeepCollectionEquality().hash(_invoiceLinesRead));

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
      @JsonKey(name: "sales_order_id") final int? salesOrderId,
      @JsonKey(name: "invoice_code") final String? invoiceCode,
      @JsonKey(name: "created_date") final String? createdDate,
      @JsonKey(name: "notes") final String? notes,
      @JsonKey(name: "remarks") final String? remarks,
      @JsonKey(name: "invoice_status") final String? invoiceStatus,
      @JsonKey(name: "assigned_to") final String? assignTo,
      @JsonKey(name: "discount") final double? discount,
      @JsonKey(name: "unit_cost") final double? unitCost,
      @JsonKey(name: "excess_tax") final double? excessTax,
      @JsonKey(name: "taxable_amount") final double? taxableAmount,
      @JsonKey(name: "vat") final double? vat,
      @JsonKey(name: "selling_price_total") final double? sellingPriceTotal,
      @JsonKey(name: "total_price") final double? totalPrice,
      @JsonKey(name: "invoice_lines")
      final List<OrderLineInvoice>? invoiceLinesRead}) = _$_InvoiceData;

  factory _InvoiceData.fromJson(Map<String, dynamic> json) =
      _$_InvoiceData.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: "sales_order_id")
  int? get salesOrderId;
  @override
  @JsonKey(name: "invoice_code")
  String? get invoiceCode;
  @override
  @JsonKey(name: "created_date")
  String? get createdDate;
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
  @JsonKey(name: "assigned_to")
  String? get assignTo;
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
  @JsonKey(name: "selling_price_total")
  double? get sellingPriceTotal;
  @override
  @JsonKey(name: "total_price")
  double? get totalPrice;
  @override
  @JsonKey(name: "invoice_lines")
  List<OrderLineInvoice>? get invoiceLinesRead;
  @override
  @JsonKey(ignore: true)
  _$$_InvoiceDataCopyWith<_$_InvoiceData> get copyWith =>
      throw _privateConstructorUsedError;
}
