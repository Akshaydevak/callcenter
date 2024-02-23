// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'Create_Sales_Invoice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateSalesInvoice _$CreateSalesInvoiceFromJson(Map<String, dynamic> json) {
  return _CreateSalesInvoice.fromJson(json);
}

/// @nodoc
mixin _$CreateSalesInvoice {
  @JsonKey(name: "sales_order_id")
  String? get salesOrderId => throw _privateConstructorUsedError;
  @JsonKey(name: "invoiced_by")
  String? get invoicedBy => throw _privateConstructorUsedError;
  @JsonKey(name: "notes")
  String? get notes => throw _privateConstructorUsedError;
  @JsonKey(name: "remarks")
  String? get remarks => throw _privateConstructorUsedError;
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
  @JsonKey(name: "warranty_price")
  double? get warrantyPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "invoice_lines")
  List<InvoiceLinesCreate>? get invoiceLinesCreate =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateSalesInvoiceCopyWith<CreateSalesInvoice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateSalesInvoiceCopyWith<$Res> {
  factory $CreateSalesInvoiceCopyWith(
          CreateSalesInvoice value, $Res Function(CreateSalesInvoice) then) =
      _$CreateSalesInvoiceCopyWithImpl<$Res, CreateSalesInvoice>;
  @useResult
  $Res call(
      {@JsonKey(name: "sales_order_id") String? salesOrderId,
      @JsonKey(name: "invoiced_by") String? invoicedBy,
      @JsonKey(name: "notes") String? notes,
      @JsonKey(name: "remarks") String? remarks,
      @JsonKey(name: "assigned_to") String? assignTo,
      @JsonKey(name: "discount") double? discount,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "taxable_amount") double? taxableAmount,
      @JsonKey(name: "vat") double? vat,
      @JsonKey(name: "selling_price_total") double? sellingPriceTotal,
      @JsonKey(name: "total_price") double? totalPrice,
      @JsonKey(name: "warranty_price") double? warrantyPrice,
      @JsonKey(name: "invoice_lines")
      List<InvoiceLinesCreate>? invoiceLinesCreate});
}

/// @nodoc
class _$CreateSalesInvoiceCopyWithImpl<$Res, $Val extends CreateSalesInvoice>
    implements $CreateSalesInvoiceCopyWith<$Res> {
  _$CreateSalesInvoiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? salesOrderId = freezed,
    Object? invoicedBy = freezed,
    Object? notes = freezed,
    Object? remarks = freezed,
    Object? assignTo = freezed,
    Object? discount = freezed,
    Object? unitCost = freezed,
    Object? excessTax = freezed,
    Object? taxableAmount = freezed,
    Object? vat = freezed,
    Object? sellingPriceTotal = freezed,
    Object? totalPrice = freezed,
    Object? warrantyPrice = freezed,
    Object? invoiceLinesCreate = freezed,
  }) {
    return _then(_value.copyWith(
      salesOrderId: freezed == salesOrderId
          ? _value.salesOrderId
          : salesOrderId // ignore: cast_nullable_to_non_nullable
              as String?,
      invoicedBy: freezed == invoicedBy
          ? _value.invoicedBy
          : invoicedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      remarks: freezed == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
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
      warrantyPrice: freezed == warrantyPrice
          ? _value.warrantyPrice
          : warrantyPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      invoiceLinesCreate: freezed == invoiceLinesCreate
          ? _value.invoiceLinesCreate
          : invoiceLinesCreate // ignore: cast_nullable_to_non_nullable
              as List<InvoiceLinesCreate>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateSalesInvoiceCopyWith<$Res>
    implements $CreateSalesInvoiceCopyWith<$Res> {
  factory _$$_CreateSalesInvoiceCopyWith(_$_CreateSalesInvoice value,
          $Res Function(_$_CreateSalesInvoice) then) =
      __$$_CreateSalesInvoiceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "sales_order_id") String? salesOrderId,
      @JsonKey(name: "invoiced_by") String? invoicedBy,
      @JsonKey(name: "notes") String? notes,
      @JsonKey(name: "remarks") String? remarks,
      @JsonKey(name: "assigned_to") String? assignTo,
      @JsonKey(name: "discount") double? discount,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "taxable_amount") double? taxableAmount,
      @JsonKey(name: "vat") double? vat,
      @JsonKey(name: "selling_price_total") double? sellingPriceTotal,
      @JsonKey(name: "total_price") double? totalPrice,
      @JsonKey(name: "warranty_price") double? warrantyPrice,
      @JsonKey(name: "invoice_lines")
      List<InvoiceLinesCreate>? invoiceLinesCreate});
}

/// @nodoc
class __$$_CreateSalesInvoiceCopyWithImpl<$Res>
    extends _$CreateSalesInvoiceCopyWithImpl<$Res, _$_CreateSalesInvoice>
    implements _$$_CreateSalesInvoiceCopyWith<$Res> {
  __$$_CreateSalesInvoiceCopyWithImpl(
      _$_CreateSalesInvoice _value, $Res Function(_$_CreateSalesInvoice) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? salesOrderId = freezed,
    Object? invoicedBy = freezed,
    Object? notes = freezed,
    Object? remarks = freezed,
    Object? assignTo = freezed,
    Object? discount = freezed,
    Object? unitCost = freezed,
    Object? excessTax = freezed,
    Object? taxableAmount = freezed,
    Object? vat = freezed,
    Object? sellingPriceTotal = freezed,
    Object? totalPrice = freezed,
    Object? warrantyPrice = freezed,
    Object? invoiceLinesCreate = freezed,
  }) {
    return _then(_$_CreateSalesInvoice(
      salesOrderId: freezed == salesOrderId
          ? _value.salesOrderId
          : salesOrderId // ignore: cast_nullable_to_non_nullable
              as String?,
      invoicedBy: freezed == invoicedBy
          ? _value.invoicedBy
          : invoicedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      remarks: freezed == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
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
      warrantyPrice: freezed == warrantyPrice
          ? _value.warrantyPrice
          : warrantyPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      invoiceLinesCreate: freezed == invoiceLinesCreate
          ? _value._invoiceLinesCreate
          : invoiceLinesCreate // ignore: cast_nullable_to_non_nullable
              as List<InvoiceLinesCreate>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateSalesInvoice implements _CreateSalesInvoice {
  const _$_CreateSalesInvoice(
      {@JsonKey(name: "sales_order_id") this.salesOrderId,
      @JsonKey(name: "invoiced_by") this.invoicedBy,
      @JsonKey(name: "notes") this.notes,
      @JsonKey(name: "remarks") this.remarks,
      @JsonKey(name: "assigned_to") this.assignTo,
      @JsonKey(name: "discount") this.discount,
      @JsonKey(name: "unit_cost") this.unitCost,
      @JsonKey(name: "excess_tax") this.excessTax,
      @JsonKey(name: "taxable_amount") this.taxableAmount,
      @JsonKey(name: "vat") this.vat,
      @JsonKey(name: "selling_price_total") this.sellingPriceTotal,
      @JsonKey(name: "total_price") this.totalPrice,
      @JsonKey(name: "warranty_price") this.warrantyPrice,
      @JsonKey(name: "invoice_lines")
      final List<InvoiceLinesCreate>? invoiceLinesCreate})
      : _invoiceLinesCreate = invoiceLinesCreate;

  factory _$_CreateSalesInvoice.fromJson(Map<String, dynamic> json) =>
      _$$_CreateSalesInvoiceFromJson(json);

  @override
  @JsonKey(name: "sales_order_id")
  final String? salesOrderId;
  @override
  @JsonKey(name: "invoiced_by")
  final String? invoicedBy;
  @override
  @JsonKey(name: "notes")
  final String? notes;
  @override
  @JsonKey(name: "remarks")
  final String? remarks;
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
  @override
  @JsonKey(name: "warranty_price")
  final double? warrantyPrice;
  final List<InvoiceLinesCreate>? _invoiceLinesCreate;
  @override
  @JsonKey(name: "invoice_lines")
  List<InvoiceLinesCreate>? get invoiceLinesCreate {
    final value = _invoiceLinesCreate;
    if (value == null) return null;
    if (_invoiceLinesCreate is EqualUnmodifiableListView)
      return _invoiceLinesCreate;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CreateSalesInvoice(salesOrderId: $salesOrderId, invoicedBy: $invoicedBy, notes: $notes, remarks: $remarks, assignTo: $assignTo, discount: $discount, unitCost: $unitCost, excessTax: $excessTax, taxableAmount: $taxableAmount, vat: $vat, sellingPriceTotal: $sellingPriceTotal, totalPrice: $totalPrice, warrantyPrice: $warrantyPrice, invoiceLinesCreate: $invoiceLinesCreate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateSalesInvoice &&
            (identical(other.salesOrderId, salesOrderId) ||
                other.salesOrderId == salesOrderId) &&
            (identical(other.invoicedBy, invoicedBy) ||
                other.invoicedBy == invoicedBy) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.remarks, remarks) || other.remarks == remarks) &&
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
            (identical(other.warrantyPrice, warrantyPrice) ||
                other.warrantyPrice == warrantyPrice) &&
            const DeepCollectionEquality()
                .equals(other._invoiceLinesCreate, _invoiceLinesCreate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      salesOrderId,
      invoicedBy,
      notes,
      remarks,
      assignTo,
      discount,
      unitCost,
      excessTax,
      taxableAmount,
      vat,
      sellingPriceTotal,
      totalPrice,
      warrantyPrice,
      const DeepCollectionEquality().hash(_invoiceLinesCreate));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateSalesInvoiceCopyWith<_$_CreateSalesInvoice> get copyWith =>
      __$$_CreateSalesInvoiceCopyWithImpl<_$_CreateSalesInvoice>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateSalesInvoiceToJson(
      this,
    );
  }
}

abstract class _CreateSalesInvoice implements CreateSalesInvoice {
  const factory _CreateSalesInvoice(
          {@JsonKey(name: "sales_order_id") final String? salesOrderId,
          @JsonKey(name: "invoiced_by") final String? invoicedBy,
          @JsonKey(name: "notes") final String? notes,
          @JsonKey(name: "remarks") final String? remarks,
          @JsonKey(name: "assigned_to") final String? assignTo,
          @JsonKey(name: "discount") final double? discount,
          @JsonKey(name: "unit_cost") final double? unitCost,
          @JsonKey(name: "excess_tax") final double? excessTax,
          @JsonKey(name: "taxable_amount") final double? taxableAmount,
          @JsonKey(name: "vat") final double? vat,
          @JsonKey(name: "selling_price_total") final double? sellingPriceTotal,
          @JsonKey(name: "total_price") final double? totalPrice,
          @JsonKey(name: "warranty_price") final double? warrantyPrice,
          @JsonKey(name: "invoice_lines")
          final List<InvoiceLinesCreate>? invoiceLinesCreate}) =
      _$_CreateSalesInvoice;

  factory _CreateSalesInvoice.fromJson(Map<String, dynamic> json) =
      _$_CreateSalesInvoice.fromJson;

  @override
  @JsonKey(name: "sales_order_id")
  String? get salesOrderId;
  @override
  @JsonKey(name: "invoiced_by")
  String? get invoicedBy;
  @override
  @JsonKey(name: "notes")
  String? get notes;
  @override
  @JsonKey(name: "remarks")
  String? get remarks;
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
  @JsonKey(name: "warranty_price")
  double? get warrantyPrice;
  @override
  @JsonKey(name: "invoice_lines")
  List<InvoiceLinesCreate>? get invoiceLinesCreate;
  @override
  @JsonKey(ignore: true)
  _$$_CreateSalesInvoiceCopyWith<_$_CreateSalesInvoice> get copyWith =>
      throw _privateConstructorUsedError;
}

InvoiceLinesCreate _$InvoiceLinesCreateFromJson(Map<String, dynamic> json) {
  return _InvoiceLinesCreate.fromJson(json);
}

/// @nodoc
mixin _$InvoiceLinesCreate {
  @JsonKey(name: "is_invoiced")
  bool? get isInvoiced => throw _privateConstructorUsedError;
  @JsonKey(name: "quantity")
  int? get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active")
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "total_price")
  double? get totalPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "warranty_price")
  double? get warrantyPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "selling_price")
  double? get sellingPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "vat")
  double? get vat => throw _privateConstructorUsedError;
  @JsonKey(name: "taxable_amount")
  double? get taxableAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "unit_cost")
  double? get unitCost => throw _privateConstructorUsedError;
  @JsonKey(name: "excess_tax")
  double? get excessTax => throw _privateConstructorUsedError;
  @JsonKey(name: "discount")
  double? get discount => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_order_line_code")
  String? get salesOrderLineCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvoiceLinesCreateCopyWith<InvoiceLinesCreate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceLinesCreateCopyWith<$Res> {
  factory $InvoiceLinesCreateCopyWith(
          InvoiceLinesCreate value, $Res Function(InvoiceLinesCreate) then) =
      _$InvoiceLinesCreateCopyWithImpl<$Res, InvoiceLinesCreate>;
  @useResult
  $Res call(
      {@JsonKey(name: "is_invoiced") bool? isInvoiced,
      @JsonKey(name: "quantity") int? quantity,
      @JsonKey(name: "is_active") bool? isActive,
      @JsonKey(name: "total_price") double? totalPrice,
      @JsonKey(name: "warranty_price") double? warrantyPrice,
      @JsonKey(name: "selling_price") double? sellingPrice,
      @JsonKey(name: "vat") double? vat,
      @JsonKey(name: "taxable_amount") double? taxableAmount,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "discount") double? discount,
      @JsonKey(name: "sales_order_line_code") String? salesOrderLineCode});
}

/// @nodoc
class _$InvoiceLinesCreateCopyWithImpl<$Res, $Val extends InvoiceLinesCreate>
    implements $InvoiceLinesCreateCopyWith<$Res> {
  _$InvoiceLinesCreateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isInvoiced = freezed,
    Object? quantity = freezed,
    Object? isActive = freezed,
    Object? totalPrice = freezed,
    Object? warrantyPrice = freezed,
    Object? sellingPrice = freezed,
    Object? vat = freezed,
    Object? taxableAmount = freezed,
    Object? unitCost = freezed,
    Object? excessTax = freezed,
    Object? discount = freezed,
    Object? salesOrderLineCode = freezed,
  }) {
    return _then(_value.copyWith(
      isInvoiced: freezed == isInvoiced
          ? _value.isInvoiced
          : isInvoiced // ignore: cast_nullable_to_non_nullable
              as bool?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      warrantyPrice: freezed == warrantyPrice
          ? _value.warrantyPrice
          : warrantyPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      sellingPrice: freezed == sellingPrice
          ? _value.sellingPrice
          : sellingPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      taxableAmount: freezed == taxableAmount
          ? _value.taxableAmount
          : taxableAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      unitCost: freezed == unitCost
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      excessTax: freezed == excessTax
          ? _value.excessTax
          : excessTax // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      salesOrderLineCode: freezed == salesOrderLineCode
          ? _value.salesOrderLineCode
          : salesOrderLineCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InvoiceLinesCreateCopyWith<$Res>
    implements $InvoiceLinesCreateCopyWith<$Res> {
  factory _$$_InvoiceLinesCreateCopyWith(_$_InvoiceLinesCreate value,
          $Res Function(_$_InvoiceLinesCreate) then) =
      __$$_InvoiceLinesCreateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "is_invoiced") bool? isInvoiced,
      @JsonKey(name: "quantity") int? quantity,
      @JsonKey(name: "is_active") bool? isActive,
      @JsonKey(name: "total_price") double? totalPrice,
      @JsonKey(name: "warranty_price") double? warrantyPrice,
      @JsonKey(name: "selling_price") double? sellingPrice,
      @JsonKey(name: "vat") double? vat,
      @JsonKey(name: "taxable_amount") double? taxableAmount,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "excess_tax") double? excessTax,
      @JsonKey(name: "discount") double? discount,
      @JsonKey(name: "sales_order_line_code") String? salesOrderLineCode});
}

/// @nodoc
class __$$_InvoiceLinesCreateCopyWithImpl<$Res>
    extends _$InvoiceLinesCreateCopyWithImpl<$Res, _$_InvoiceLinesCreate>
    implements _$$_InvoiceLinesCreateCopyWith<$Res> {
  __$$_InvoiceLinesCreateCopyWithImpl(
      _$_InvoiceLinesCreate _value, $Res Function(_$_InvoiceLinesCreate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isInvoiced = freezed,
    Object? quantity = freezed,
    Object? isActive = freezed,
    Object? totalPrice = freezed,
    Object? warrantyPrice = freezed,
    Object? sellingPrice = freezed,
    Object? vat = freezed,
    Object? taxableAmount = freezed,
    Object? unitCost = freezed,
    Object? excessTax = freezed,
    Object? discount = freezed,
    Object? salesOrderLineCode = freezed,
  }) {
    return _then(_$_InvoiceLinesCreate(
      isInvoiced: freezed == isInvoiced
          ? _value.isInvoiced
          : isInvoiced // ignore: cast_nullable_to_non_nullable
              as bool?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      warrantyPrice: freezed == warrantyPrice
          ? _value.warrantyPrice
          : warrantyPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      sellingPrice: freezed == sellingPrice
          ? _value.sellingPrice
          : sellingPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      taxableAmount: freezed == taxableAmount
          ? _value.taxableAmount
          : taxableAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      unitCost: freezed == unitCost
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      excessTax: freezed == excessTax
          ? _value.excessTax
          : excessTax // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      salesOrderLineCode: freezed == salesOrderLineCode
          ? _value.salesOrderLineCode
          : salesOrderLineCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InvoiceLinesCreate implements _InvoiceLinesCreate {
  const _$_InvoiceLinesCreate(
      {@JsonKey(name: "is_invoiced") this.isInvoiced,
      @JsonKey(name: "quantity") this.quantity,
      @JsonKey(name: "is_active") this.isActive,
      @JsonKey(name: "total_price") this.totalPrice,
      @JsonKey(name: "warranty_price") this.warrantyPrice,
      @JsonKey(name: "selling_price") this.sellingPrice,
      @JsonKey(name: "vat") this.vat,
      @JsonKey(name: "taxable_amount") this.taxableAmount,
      @JsonKey(name: "unit_cost") this.unitCost,
      @JsonKey(name: "excess_tax") this.excessTax,
      @JsonKey(name: "discount") this.discount,
      @JsonKey(name: "sales_order_line_code") this.salesOrderLineCode});

  factory _$_InvoiceLinesCreate.fromJson(Map<String, dynamic> json) =>
      _$$_InvoiceLinesCreateFromJson(json);

  @override
  @JsonKey(name: "is_invoiced")
  final bool? isInvoiced;
  @override
  @JsonKey(name: "quantity")
  final int? quantity;
  @override
  @JsonKey(name: "is_active")
  final bool? isActive;
  @override
  @JsonKey(name: "total_price")
  final double? totalPrice;
  @override
  @JsonKey(name: "warranty_price")
  final double? warrantyPrice;
  @override
  @JsonKey(name: "selling_price")
  final double? sellingPrice;
  @override
  @JsonKey(name: "vat")
  final double? vat;
  @override
  @JsonKey(name: "taxable_amount")
  final double? taxableAmount;
  @override
  @JsonKey(name: "unit_cost")
  final double? unitCost;
  @override
  @JsonKey(name: "excess_tax")
  final double? excessTax;
  @override
  @JsonKey(name: "discount")
  final double? discount;
  @override
  @JsonKey(name: "sales_order_line_code")
  final String? salesOrderLineCode;

  @override
  String toString() {
    return 'InvoiceLinesCreate(isInvoiced: $isInvoiced, quantity: $quantity, isActive: $isActive, totalPrice: $totalPrice, warrantyPrice: $warrantyPrice, sellingPrice: $sellingPrice, vat: $vat, taxableAmount: $taxableAmount, unitCost: $unitCost, excessTax: $excessTax, discount: $discount, salesOrderLineCode: $salesOrderLineCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvoiceLinesCreate &&
            (identical(other.isInvoiced, isInvoiced) ||
                other.isInvoiced == isInvoiced) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.warrantyPrice, warrantyPrice) ||
                other.warrantyPrice == warrantyPrice) &&
            (identical(other.sellingPrice, sellingPrice) ||
                other.sellingPrice == sellingPrice) &&
            (identical(other.vat, vat) || other.vat == vat) &&
            (identical(other.taxableAmount, taxableAmount) ||
                other.taxableAmount == taxableAmount) &&
            (identical(other.unitCost, unitCost) ||
                other.unitCost == unitCost) &&
            (identical(other.excessTax, excessTax) ||
                other.excessTax == excessTax) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.salesOrderLineCode, salesOrderLineCode) ||
                other.salesOrderLineCode == salesOrderLineCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      isInvoiced,
      quantity,
      isActive,
      totalPrice,
      warrantyPrice,
      sellingPrice,
      vat,
      taxableAmount,
      unitCost,
      excessTax,
      discount,
      salesOrderLineCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InvoiceLinesCreateCopyWith<_$_InvoiceLinesCreate> get copyWith =>
      __$$_InvoiceLinesCreateCopyWithImpl<_$_InvoiceLinesCreate>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InvoiceLinesCreateToJson(
      this,
    );
  }
}

abstract class _InvoiceLinesCreate implements InvoiceLinesCreate {
  const factory _InvoiceLinesCreate(
      {@JsonKey(name: "is_invoiced") final bool? isInvoiced,
      @JsonKey(name: "quantity") final int? quantity,
      @JsonKey(name: "is_active") final bool? isActive,
      @JsonKey(name: "total_price") final double? totalPrice,
      @JsonKey(name: "warranty_price") final double? warrantyPrice,
      @JsonKey(name: "selling_price") final double? sellingPrice,
      @JsonKey(name: "vat") final double? vat,
      @JsonKey(name: "taxable_amount") final double? taxableAmount,
      @JsonKey(name: "unit_cost") final double? unitCost,
      @JsonKey(name: "excess_tax") final double? excessTax,
      @JsonKey(name: "discount") final double? discount,
      @JsonKey(name: "sales_order_line_code")
      final String? salesOrderLineCode}) = _$_InvoiceLinesCreate;

  factory _InvoiceLinesCreate.fromJson(Map<String, dynamic> json) =
      _$_InvoiceLinesCreate.fromJson;

  @override
  @JsonKey(name: "is_invoiced")
  bool? get isInvoiced;
  @override
  @JsonKey(name: "quantity")
  int? get quantity;
  @override
  @JsonKey(name: "is_active")
  bool? get isActive;
  @override
  @JsonKey(name: "total_price")
  double? get totalPrice;
  @override
  @JsonKey(name: "warranty_price")
  double? get warrantyPrice;
  @override
  @JsonKey(name: "selling_price")
  double? get sellingPrice;
  @override
  @JsonKey(name: "vat")
  double? get vat;
  @override
  @JsonKey(name: "taxable_amount")
  double? get taxableAmount;
  @override
  @JsonKey(name: "unit_cost")
  double? get unitCost;
  @override
  @JsonKey(name: "excess_tax")
  double? get excessTax;
  @override
  @JsonKey(name: "discount")
  double? get discount;
  @override
  @JsonKey(name: "sales_order_line_code")
  String? get salesOrderLineCode;
  @override
  @JsonKey(ignore: true)
  _$$_InvoiceLinesCreateCopyWith<_$_InvoiceLinesCreate> get copyWith =>
      throw _privateConstructorUsedError;
}

PdfUrlModel _$PdfUrlModelFromJson(Map<String, dynamic> json) {
  return _PdfUrlModel.fromJson(json);
}

/// @nodoc
mixin _$PdfUrlModel {
  @JsonKey(name: "pdf_url")
  String? get pdfUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PdfUrlModelCopyWith<PdfUrlModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PdfUrlModelCopyWith<$Res> {
  factory $PdfUrlModelCopyWith(
          PdfUrlModel value, $Res Function(PdfUrlModel) then) =
      _$PdfUrlModelCopyWithImpl<$Res, PdfUrlModel>;
  @useResult
  $Res call({@JsonKey(name: "pdf_url") String? pdfUrl});
}

/// @nodoc
class _$PdfUrlModelCopyWithImpl<$Res, $Val extends PdfUrlModel>
    implements $PdfUrlModelCopyWith<$Res> {
  _$PdfUrlModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pdfUrl = freezed,
  }) {
    return _then(_value.copyWith(
      pdfUrl: freezed == pdfUrl
          ? _value.pdfUrl
          : pdfUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PdfUrlModelCopyWith<$Res>
    implements $PdfUrlModelCopyWith<$Res> {
  factory _$$_PdfUrlModelCopyWith(
          _$_PdfUrlModel value, $Res Function(_$_PdfUrlModel) then) =
      __$$_PdfUrlModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "pdf_url") String? pdfUrl});
}

/// @nodoc
class __$$_PdfUrlModelCopyWithImpl<$Res>
    extends _$PdfUrlModelCopyWithImpl<$Res, _$_PdfUrlModel>
    implements _$$_PdfUrlModelCopyWith<$Res> {
  __$$_PdfUrlModelCopyWithImpl(
      _$_PdfUrlModel _value, $Res Function(_$_PdfUrlModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pdfUrl = freezed,
  }) {
    return _then(_$_PdfUrlModel(
      pdfUrl: freezed == pdfUrl
          ? _value.pdfUrl
          : pdfUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PdfUrlModel implements _PdfUrlModel {
  const _$_PdfUrlModel({@JsonKey(name: "pdf_url") this.pdfUrl});

  factory _$_PdfUrlModel.fromJson(Map<String, dynamic> json) =>
      _$$_PdfUrlModelFromJson(json);

  @override
  @JsonKey(name: "pdf_url")
  final String? pdfUrl;

  @override
  String toString() {
    return 'PdfUrlModel(pdfUrl: $pdfUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PdfUrlModel &&
            (identical(other.pdfUrl, pdfUrl) || other.pdfUrl == pdfUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, pdfUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PdfUrlModelCopyWith<_$_PdfUrlModel> get copyWith =>
      __$$_PdfUrlModelCopyWithImpl<_$_PdfUrlModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PdfUrlModelToJson(
      this,
    );
  }
}

abstract class _PdfUrlModel implements PdfUrlModel {
  const factory _PdfUrlModel({@JsonKey(name: "pdf_url") final String? pdfUrl}) =
      _$_PdfUrlModel;

  factory _PdfUrlModel.fromJson(Map<String, dynamic> json) =
      _$_PdfUrlModel.fromJson;

  @override
  @JsonKey(name: "pdf_url")
  String? get pdfUrl;
  @override
  @JsonKey(ignore: true)
  _$$_PdfUrlModelCopyWith<_$_PdfUrlModel> get copyWith =>
      throw _privateConstructorUsedError;
}
