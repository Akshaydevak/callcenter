// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'All_Orders.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AllOrdersTables _$AllOrdersTablesFromJson(Map<String, dynamic> json) {
  return _AllOrdersTables.fromJson(json);
}

/// @nodoc
mixin _$AllOrdersTables {
  int? get id => throw _privateConstructorUsedError;
  bool? get loading => throw _privateConstructorUsedError;
  bool? get isLoading => throw _privateConstructorUsedError;
  @JsonKey(name: "order_code")
  String? get orderCode => throw _privateConstructorUsedError;
  @JsonKey(name: "ordered_date")
  String? get orderdDate => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_code")
  String? get customerCode => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_name")
  String? get customerName => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_trn_number")
  String? get customerTrn => throw _privateConstructorUsedError;
  @JsonKey(name: "total")
  double? get total => throw _privateConstructorUsedError;
  @JsonKey(name: "order_satus")
  String? get orderStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_status")
  String? get paymentStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "invoice_status")
  String? get inVoiceStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "delivery_address")
  String? get deliveryAdrress => throw _privateConstructorUsedError;
  @JsonKey(name: "invoice_id")
  int? get invoiceId => throw _privateConstructorUsedError;
  @JsonKey(name: "notes")
  String? get notes => throw _privateConstructorUsedError;
  @JsonKey(name: "remarks")
  String? get remarks => throw _privateConstructorUsedError;
  @JsonKey(name: "vat")
  double? get vat => throw _privateConstructorUsedError;
  @JsonKey(name: "discount")
  double? get discount => throw _privateConstructorUsedError;
  @JsonKey(name: "line")
  List<LinesAllOrder>? get lines => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AllOrdersTablesCopyWith<AllOrdersTables> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllOrdersTablesCopyWith<$Res> {
  factory $AllOrdersTablesCopyWith(
          AllOrdersTables value, $Res Function(AllOrdersTables) then) =
      _$AllOrdersTablesCopyWithImpl<$Res, AllOrdersTables>;
  @useResult
  $Res call(
      {int? id,
      bool? loading,
      bool? isLoading,
      @JsonKey(name: "order_code") String? orderCode,
      @JsonKey(name: "ordered_date") String? orderdDate,
      @JsonKey(name: "customer_code") String? customerCode,
      @JsonKey(name: "customer_name") String? customerName,
      @JsonKey(name: "customer_trn_number") String? customerTrn,
      @JsonKey(name: "total") double? total,
      @JsonKey(name: "order_satus") String? orderStatus,
      @JsonKey(name: "payment_status") String? paymentStatus,
      @JsonKey(name: "invoice_status") String? inVoiceStatus,
      @JsonKey(name: "delivery_address") String? deliveryAdrress,
      @JsonKey(name: "invoice_id") int? invoiceId,
      @JsonKey(name: "notes") String? notes,
      @JsonKey(name: "remarks") String? remarks,
      @JsonKey(name: "vat") double? vat,
      @JsonKey(name: "discount") double? discount,
      @JsonKey(name: "line") List<LinesAllOrder>? lines});
}

/// @nodoc
class _$AllOrdersTablesCopyWithImpl<$Res, $Val extends AllOrdersTables>
    implements $AllOrdersTablesCopyWith<$Res> {
  _$AllOrdersTablesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? loading = freezed,
    Object? isLoading = freezed,
    Object? orderCode = freezed,
    Object? orderdDate = freezed,
    Object? customerCode = freezed,
    Object? customerName = freezed,
    Object? customerTrn = freezed,
    Object? total = freezed,
    Object? orderStatus = freezed,
    Object? paymentStatus = freezed,
    Object? inVoiceStatus = freezed,
    Object? deliveryAdrress = freezed,
    Object? invoiceId = freezed,
    Object? notes = freezed,
    Object? remarks = freezed,
    Object? vat = freezed,
    Object? discount = freezed,
    Object? lines = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      loading: freezed == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool?,
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      orderCode: freezed == orderCode
          ? _value.orderCode
          : orderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      orderdDate: freezed == orderdDate
          ? _value.orderdDate
          : orderdDate // ignore: cast_nullable_to_non_nullable
              as String?,
      customerCode: freezed == customerCode
          ? _value.customerCode
          : customerCode // ignore: cast_nullable_to_non_nullable
              as String?,
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      customerTrn: freezed == customerTrn
          ? _value.customerTrn
          : customerTrn // ignore: cast_nullable_to_non_nullable
              as String?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double?,
      orderStatus: freezed == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      inVoiceStatus: freezed == inVoiceStatus
          ? _value.inVoiceStatus
          : inVoiceStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryAdrress: freezed == deliveryAdrress
          ? _value.deliveryAdrress
          : deliveryAdrress // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceId: freezed == invoiceId
          ? _value.invoiceId
          : invoiceId // ignore: cast_nullable_to_non_nullable
              as int?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      remarks: freezed == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      lines: freezed == lines
          ? _value.lines
          : lines // ignore: cast_nullable_to_non_nullable
              as List<LinesAllOrder>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AllOrdersTablesCopyWith<$Res>
    implements $AllOrdersTablesCopyWith<$Res> {
  factory _$$_AllOrdersTablesCopyWith(
          _$_AllOrdersTables value, $Res Function(_$_AllOrdersTables) then) =
      __$$_AllOrdersTablesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      bool? loading,
      bool? isLoading,
      @JsonKey(name: "order_code") String? orderCode,
      @JsonKey(name: "ordered_date") String? orderdDate,
      @JsonKey(name: "customer_code") String? customerCode,
      @JsonKey(name: "customer_name") String? customerName,
      @JsonKey(name: "customer_trn_number") String? customerTrn,
      @JsonKey(name: "total") double? total,
      @JsonKey(name: "order_satus") String? orderStatus,
      @JsonKey(name: "payment_status") String? paymentStatus,
      @JsonKey(name: "invoice_status") String? inVoiceStatus,
      @JsonKey(name: "delivery_address") String? deliveryAdrress,
      @JsonKey(name: "invoice_id") int? invoiceId,
      @JsonKey(name: "notes") String? notes,
      @JsonKey(name: "remarks") String? remarks,
      @JsonKey(name: "vat") double? vat,
      @JsonKey(name: "discount") double? discount,
      @JsonKey(name: "line") List<LinesAllOrder>? lines});
}

/// @nodoc
class __$$_AllOrdersTablesCopyWithImpl<$Res>
    extends _$AllOrdersTablesCopyWithImpl<$Res, _$_AllOrdersTables>
    implements _$$_AllOrdersTablesCopyWith<$Res> {
  __$$_AllOrdersTablesCopyWithImpl(
      _$_AllOrdersTables _value, $Res Function(_$_AllOrdersTables) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? loading = freezed,
    Object? isLoading = freezed,
    Object? orderCode = freezed,
    Object? orderdDate = freezed,
    Object? customerCode = freezed,
    Object? customerName = freezed,
    Object? customerTrn = freezed,
    Object? total = freezed,
    Object? orderStatus = freezed,
    Object? paymentStatus = freezed,
    Object? inVoiceStatus = freezed,
    Object? deliveryAdrress = freezed,
    Object? invoiceId = freezed,
    Object? notes = freezed,
    Object? remarks = freezed,
    Object? vat = freezed,
    Object? discount = freezed,
    Object? lines = freezed,
  }) {
    return _then(_$_AllOrdersTables(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      loading: freezed == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool?,
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      orderCode: freezed == orderCode
          ? _value.orderCode
          : orderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      orderdDate: freezed == orderdDate
          ? _value.orderdDate
          : orderdDate // ignore: cast_nullable_to_non_nullable
              as String?,
      customerCode: freezed == customerCode
          ? _value.customerCode
          : customerCode // ignore: cast_nullable_to_non_nullable
              as String?,
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      customerTrn: freezed == customerTrn
          ? _value.customerTrn
          : customerTrn // ignore: cast_nullable_to_non_nullable
              as String?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double?,
      orderStatus: freezed == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      inVoiceStatus: freezed == inVoiceStatus
          ? _value.inVoiceStatus
          : inVoiceStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryAdrress: freezed == deliveryAdrress
          ? _value.deliveryAdrress
          : deliveryAdrress // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceId: freezed == invoiceId
          ? _value.invoiceId
          : invoiceId // ignore: cast_nullable_to_non_nullable
              as int?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      remarks: freezed == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      lines: freezed == lines
          ? _value._lines
          : lines // ignore: cast_nullable_to_non_nullable
              as List<LinesAllOrder>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AllOrdersTables implements _AllOrdersTables {
  const _$_AllOrdersTables(
      {this.id,
      this.loading,
      this.isLoading,
      @JsonKey(name: "order_code") this.orderCode,
      @JsonKey(name: "ordered_date") this.orderdDate,
      @JsonKey(name: "customer_code") this.customerCode,
      @JsonKey(name: "customer_name") this.customerName,
      @JsonKey(name: "customer_trn_number") this.customerTrn,
      @JsonKey(name: "total") this.total,
      @JsonKey(name: "order_satus") this.orderStatus,
      @JsonKey(name: "payment_status") this.paymentStatus,
      @JsonKey(name: "invoice_status") this.inVoiceStatus,
      @JsonKey(name: "delivery_address") this.deliveryAdrress,
      @JsonKey(name: "invoice_id") this.invoiceId,
      @JsonKey(name: "notes") this.notes,
      @JsonKey(name: "remarks") this.remarks,
      @JsonKey(name: "vat") this.vat,
      @JsonKey(name: "discount") this.discount,
      @JsonKey(name: "line") final List<LinesAllOrder>? lines})
      : _lines = lines;

  factory _$_AllOrdersTables.fromJson(Map<String, dynamic> json) =>
      _$$_AllOrdersTablesFromJson(json);

  @override
  final int? id;
  @override
  final bool? loading;
  @override
  final bool? isLoading;
  @override
  @JsonKey(name: "order_code")
  final String? orderCode;
  @override
  @JsonKey(name: "ordered_date")
  final String? orderdDate;
  @override
  @JsonKey(name: "customer_code")
  final String? customerCode;
  @override
  @JsonKey(name: "customer_name")
  final String? customerName;
  @override
  @JsonKey(name: "customer_trn_number")
  final String? customerTrn;
  @override
  @JsonKey(name: "total")
  final double? total;
  @override
  @JsonKey(name: "order_satus")
  final String? orderStatus;
  @override
  @JsonKey(name: "payment_status")
  final String? paymentStatus;
  @override
  @JsonKey(name: "invoice_status")
  final String? inVoiceStatus;
  @override
  @JsonKey(name: "delivery_address")
  final String? deliveryAdrress;
  @override
  @JsonKey(name: "invoice_id")
  final int? invoiceId;
  @override
  @JsonKey(name: "notes")
  final String? notes;
  @override
  @JsonKey(name: "remarks")
  final String? remarks;
  @override
  @JsonKey(name: "vat")
  final double? vat;
  @override
  @JsonKey(name: "discount")
  final double? discount;
  final List<LinesAllOrder>? _lines;
  @override
  @JsonKey(name: "line")
  List<LinesAllOrder>? get lines {
    final value = _lines;
    if (value == null) return null;
    if (_lines is EqualUnmodifiableListView) return _lines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AllOrdersTables(id: $id, loading: $loading, isLoading: $isLoading, orderCode: $orderCode, orderdDate: $orderdDate, customerCode: $customerCode, customerName: $customerName, customerTrn: $customerTrn, total: $total, orderStatus: $orderStatus, paymentStatus: $paymentStatus, inVoiceStatus: $inVoiceStatus, deliveryAdrress: $deliveryAdrress, invoiceId: $invoiceId, notes: $notes, remarks: $remarks, vat: $vat, discount: $discount, lines: $lines)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AllOrdersTables &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.orderCode, orderCode) ||
                other.orderCode == orderCode) &&
            (identical(other.orderdDate, orderdDate) ||
                other.orderdDate == orderdDate) &&
            (identical(other.customerCode, customerCode) ||
                other.customerCode == customerCode) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.customerTrn, customerTrn) ||
                other.customerTrn == customerTrn) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.orderStatus, orderStatus) ||
                other.orderStatus == orderStatus) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(other.inVoiceStatus, inVoiceStatus) ||
                other.inVoiceStatus == inVoiceStatus) &&
            (identical(other.deliveryAdrress, deliveryAdrress) ||
                other.deliveryAdrress == deliveryAdrress) &&
            (identical(other.invoiceId, invoiceId) ||
                other.invoiceId == invoiceId) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.remarks, remarks) || other.remarks == remarks) &&
            (identical(other.vat, vat) || other.vat == vat) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            const DeepCollectionEquality().equals(other._lines, _lines));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        loading,
        isLoading,
        orderCode,
        orderdDate,
        customerCode,
        customerName,
        customerTrn,
        total,
        orderStatus,
        paymentStatus,
        inVoiceStatus,
        deliveryAdrress,
        invoiceId,
        notes,
        remarks,
        vat,
        discount,
        const DeepCollectionEquality().hash(_lines)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AllOrdersTablesCopyWith<_$_AllOrdersTables> get copyWith =>
      __$$_AllOrdersTablesCopyWithImpl<_$_AllOrdersTables>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AllOrdersTablesToJson(
      this,
    );
  }
}

abstract class _AllOrdersTables implements AllOrdersTables {
  const factory _AllOrdersTables(
          {final int? id,
          final bool? loading,
          final bool? isLoading,
          @JsonKey(name: "order_code") final String? orderCode,
          @JsonKey(name: "ordered_date") final String? orderdDate,
          @JsonKey(name: "customer_code") final String? customerCode,
          @JsonKey(name: "customer_name") final String? customerName,
          @JsonKey(name: "customer_trn_number") final String? customerTrn,
          @JsonKey(name: "total") final double? total,
          @JsonKey(name: "order_satus") final String? orderStatus,
          @JsonKey(name: "payment_status") final String? paymentStatus,
          @JsonKey(name: "invoice_status") final String? inVoiceStatus,
          @JsonKey(name: "delivery_address") final String? deliveryAdrress,
          @JsonKey(name: "invoice_id") final int? invoiceId,
          @JsonKey(name: "notes") final String? notes,
          @JsonKey(name: "remarks") final String? remarks,
          @JsonKey(name: "vat") final double? vat,
          @JsonKey(name: "discount") final double? discount,
          @JsonKey(name: "line") final List<LinesAllOrder>? lines}) =
      _$_AllOrdersTables;

  factory _AllOrdersTables.fromJson(Map<String, dynamic> json) =
      _$_AllOrdersTables.fromJson;

  @override
  int? get id;
  @override
  bool? get loading;
  @override
  bool? get isLoading;
  @override
  @JsonKey(name: "order_code")
  String? get orderCode;
  @override
  @JsonKey(name: "ordered_date")
  String? get orderdDate;
  @override
  @JsonKey(name: "customer_code")
  String? get customerCode;
  @override
  @JsonKey(name: "customer_name")
  String? get customerName;
  @override
  @JsonKey(name: "customer_trn_number")
  String? get customerTrn;
  @override
  @JsonKey(name: "total")
  double? get total;
  @override
  @JsonKey(name: "order_satus")
  String? get orderStatus;
  @override
  @JsonKey(name: "payment_status")
  String? get paymentStatus;
  @override
  @JsonKey(name: "invoice_status")
  String? get inVoiceStatus;
  @override
  @JsonKey(name: "delivery_address")
  String? get deliveryAdrress;
  @override
  @JsonKey(name: "invoice_id")
  int? get invoiceId;
  @override
  @JsonKey(name: "notes")
  String? get notes;
  @override
  @JsonKey(name: "remarks")
  String? get remarks;
  @override
  @JsonKey(name: "vat")
  double? get vat;
  @override
  @JsonKey(name: "discount")
  double? get discount;
  @override
  @JsonKey(name: "line")
  List<LinesAllOrder>? get lines;
  @override
  @JsonKey(ignore: true)
  _$$_AllOrdersTablesCopyWith<_$_AllOrdersTables> get copyWith =>
      throw _privateConstructorUsedError;
}

LinesAllOrder _$LinesAllOrderFromJson(Map<String, dynamic> json) {
  return _LinesAllOrder.fromJson(json);
}

/// @nodoc
mixin _$LinesAllOrder {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "line_code")
  String? get lineCode => throw _privateConstructorUsedError;
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
  double? get unitCost => throw _privateConstructorUsedError;
  @JsonKey(name: "discount")
  double? get discount => throw _privateConstructorUsedError;
  @JsonKey(name: "amount")
  double? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: "vat")
  double? get vat => throw _privateConstructorUsedError;
  @JsonKey(name: "vatable_amount")
  double? get vatableAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "total_amount")
  double? get total => throw _privateConstructorUsedError;
  @JsonKey(name: "is_invoiced", defaultValue: false)
  bool? get isInvoiced => throw _privateConstructorUsedError;
  @JsonKey(name: "warranty_price")
  double? get warrantyPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "warranty_id")
  int? get warrantyId => throw _privateConstructorUsedError;
  @JsonKey(name: "shipping_address_id")
  int? get shippingAddressId => throw _privateConstructorUsedError;
  @JsonKey(name: "return_type")
  String? get returnType => throw _privateConstructorUsedError;
  @JsonKey(name: "return_time")
  double? get returnTime => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active")
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "last_edited_at")
  String? get lastEdited => throw _privateConstructorUsedError;
  @JsonKey(name: "order_id")
  int? get orderId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LinesAllOrderCopyWith<LinesAllOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinesAllOrderCopyWith<$Res> {
  factory $LinesAllOrderCopyWith(
          LinesAllOrder value, $Res Function(LinesAllOrder) then) =
      _$LinesAllOrderCopyWithImpl<$Res, LinesAllOrder>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "line_code") String? lineCode,
      @JsonKey(name: "variant_id") int? variantId,
      @JsonKey(name: "variant_code") String? variantCode,
      @JsonKey(name: "variant_name") String? variantName,
      @JsonKey(name: "barcode") String? barcode,
      @JsonKey(name: "uom_id") int? uomId,
      @JsonKey(name: "uom_name") String? uomName,
      @JsonKey(name: "selling_price") double? sellingPrice,
      @JsonKey(name: "quantity") int? quantity,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "discount") double? discount,
      @JsonKey(name: "amount") double? amount,
      @JsonKey(name: "vat") double? vat,
      @JsonKey(name: "vatable_amount") double? vatableAmount,
      @JsonKey(name: "total_amount") double? total,
      @JsonKey(name: "is_invoiced", defaultValue: false) bool? isInvoiced,
      @JsonKey(name: "warranty_price") double? warrantyPrice,
      @JsonKey(name: "warranty_id") int? warrantyId,
      @JsonKey(name: "shipping_address_id") int? shippingAddressId,
      @JsonKey(name: "return_type") String? returnType,
      @JsonKey(name: "return_time") double? returnTime,
      @JsonKey(name: "is_active") bool? isActive,
      @JsonKey(name: "last_edited_at") String? lastEdited,
      @JsonKey(name: "order_id") int? orderId});
}

/// @nodoc
class _$LinesAllOrderCopyWithImpl<$Res, $Val extends LinesAllOrder>
    implements $LinesAllOrderCopyWith<$Res> {
  _$LinesAllOrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? lineCode = freezed,
    Object? variantId = freezed,
    Object? variantCode = freezed,
    Object? variantName = freezed,
    Object? barcode = freezed,
    Object? uomId = freezed,
    Object? uomName = freezed,
    Object? sellingPrice = freezed,
    Object? quantity = freezed,
    Object? unitCost = freezed,
    Object? discount = freezed,
    Object? amount = freezed,
    Object? vat = freezed,
    Object? vatableAmount = freezed,
    Object? total = freezed,
    Object? isInvoiced = freezed,
    Object? warrantyPrice = freezed,
    Object? warrantyId = freezed,
    Object? shippingAddressId = freezed,
    Object? returnType = freezed,
    Object? returnTime = freezed,
    Object? isActive = freezed,
    Object? lastEdited = freezed,
    Object? orderId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
      unitCost: freezed == unitCost
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
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
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double?,
      isInvoiced: freezed == isInvoiced
          ? _value.isInvoiced
          : isInvoiced // ignore: cast_nullable_to_non_nullable
              as bool?,
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
      returnTime: freezed == returnTime
          ? _value.returnTime
          : returnTime // ignore: cast_nullable_to_non_nullable
              as double?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      lastEdited: freezed == lastEdited
          ? _value.lastEdited
          : lastEdited // ignore: cast_nullable_to_non_nullable
              as String?,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LinesAllOrderCopyWith<$Res>
    implements $LinesAllOrderCopyWith<$Res> {
  factory _$$_LinesAllOrderCopyWith(
          _$_LinesAllOrder value, $Res Function(_$_LinesAllOrder) then) =
      __$$_LinesAllOrderCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "line_code") String? lineCode,
      @JsonKey(name: "variant_id") int? variantId,
      @JsonKey(name: "variant_code") String? variantCode,
      @JsonKey(name: "variant_name") String? variantName,
      @JsonKey(name: "barcode") String? barcode,
      @JsonKey(name: "uom_id") int? uomId,
      @JsonKey(name: "uom_name") String? uomName,
      @JsonKey(name: "selling_price") double? sellingPrice,
      @JsonKey(name: "quantity") int? quantity,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "discount") double? discount,
      @JsonKey(name: "amount") double? amount,
      @JsonKey(name: "vat") double? vat,
      @JsonKey(name: "vatable_amount") double? vatableAmount,
      @JsonKey(name: "total_amount") double? total,
      @JsonKey(name: "is_invoiced", defaultValue: false) bool? isInvoiced,
      @JsonKey(name: "warranty_price") double? warrantyPrice,
      @JsonKey(name: "warranty_id") int? warrantyId,
      @JsonKey(name: "shipping_address_id") int? shippingAddressId,
      @JsonKey(name: "return_type") String? returnType,
      @JsonKey(name: "return_time") double? returnTime,
      @JsonKey(name: "is_active") bool? isActive,
      @JsonKey(name: "last_edited_at") String? lastEdited,
      @JsonKey(name: "order_id") int? orderId});
}

/// @nodoc
class __$$_LinesAllOrderCopyWithImpl<$Res>
    extends _$LinesAllOrderCopyWithImpl<$Res, _$_LinesAllOrder>
    implements _$$_LinesAllOrderCopyWith<$Res> {
  __$$_LinesAllOrderCopyWithImpl(
      _$_LinesAllOrder _value, $Res Function(_$_LinesAllOrder) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? lineCode = freezed,
    Object? variantId = freezed,
    Object? variantCode = freezed,
    Object? variantName = freezed,
    Object? barcode = freezed,
    Object? uomId = freezed,
    Object? uomName = freezed,
    Object? sellingPrice = freezed,
    Object? quantity = freezed,
    Object? unitCost = freezed,
    Object? discount = freezed,
    Object? amount = freezed,
    Object? vat = freezed,
    Object? vatableAmount = freezed,
    Object? total = freezed,
    Object? isInvoiced = freezed,
    Object? warrantyPrice = freezed,
    Object? warrantyId = freezed,
    Object? shippingAddressId = freezed,
    Object? returnType = freezed,
    Object? returnTime = freezed,
    Object? isActive = freezed,
    Object? lastEdited = freezed,
    Object? orderId = freezed,
  }) {
    return _then(_$_LinesAllOrder(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
      unitCost: freezed == unitCost
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
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
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double?,
      isInvoiced: freezed == isInvoiced
          ? _value.isInvoiced
          : isInvoiced // ignore: cast_nullable_to_non_nullable
              as bool?,
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
      returnTime: freezed == returnTime
          ? _value.returnTime
          : returnTime // ignore: cast_nullable_to_non_nullable
              as double?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      lastEdited: freezed == lastEdited
          ? _value.lastEdited
          : lastEdited // ignore: cast_nullable_to_non_nullable
              as String?,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LinesAllOrder implements _LinesAllOrder {
  const _$_LinesAllOrder(
      {this.id,
      @JsonKey(name: "line_code") this.lineCode,
      @JsonKey(name: "variant_id") this.variantId,
      @JsonKey(name: "variant_code") this.variantCode,
      @JsonKey(name: "variant_name") this.variantName,
      @JsonKey(name: "barcode") this.barcode,
      @JsonKey(name: "uom_id") this.uomId,
      @JsonKey(name: "uom_name") this.uomName,
      @JsonKey(name: "selling_price") this.sellingPrice,
      @JsonKey(name: "quantity") this.quantity,
      @JsonKey(name: "unit_cost") this.unitCost,
      @JsonKey(name: "discount") this.discount,
      @JsonKey(name: "amount") this.amount,
      @JsonKey(name: "vat") this.vat,
      @JsonKey(name: "vatable_amount") this.vatableAmount,
      @JsonKey(name: "total_amount") this.total,
      @JsonKey(name: "is_invoiced", defaultValue: false) this.isInvoiced,
      @JsonKey(name: "warranty_price") this.warrantyPrice,
      @JsonKey(name: "warranty_id") this.warrantyId,
      @JsonKey(name: "shipping_address_id") this.shippingAddressId,
      @JsonKey(name: "return_type") this.returnType,
      @JsonKey(name: "return_time") this.returnTime,
      @JsonKey(name: "is_active") this.isActive,
      @JsonKey(name: "last_edited_at") this.lastEdited,
      @JsonKey(name: "order_id") this.orderId});

  factory _$_LinesAllOrder.fromJson(Map<String, dynamic> json) =>
      _$$_LinesAllOrderFromJson(json);

  @override
  final int? id;
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
  final double? unitCost;
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
  final double? total;
  @override
  @JsonKey(name: "is_invoiced", defaultValue: false)
  final bool? isInvoiced;
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
  @JsonKey(name: "return_time")
  final double? returnTime;
  @override
  @JsonKey(name: "is_active")
  final bool? isActive;
  @override
  @JsonKey(name: "last_edited_at")
  final String? lastEdited;
  @override
  @JsonKey(name: "order_id")
  final int? orderId;

  @override
  String toString() {
    return 'LinesAllOrder(id: $id, lineCode: $lineCode, variantId: $variantId, variantCode: $variantCode, variantName: $variantName, barcode: $barcode, uomId: $uomId, uomName: $uomName, sellingPrice: $sellingPrice, quantity: $quantity, unitCost: $unitCost, discount: $discount, amount: $amount, vat: $vat, vatableAmount: $vatableAmount, total: $total, isInvoiced: $isInvoiced, warrantyPrice: $warrantyPrice, warrantyId: $warrantyId, shippingAddressId: $shippingAddressId, returnType: $returnType, returnTime: $returnTime, isActive: $isActive, lastEdited: $lastEdited, orderId: $orderId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LinesAllOrder &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.lineCode, lineCode) ||
                other.lineCode == lineCode) &&
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
            (identical(other.unitCost, unitCost) ||
                other.unitCost == unitCost) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.vat, vat) || other.vat == vat) &&
            (identical(other.vatableAmount, vatableAmount) ||
                other.vatableAmount == vatableAmount) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.isInvoiced, isInvoiced) ||
                other.isInvoiced == isInvoiced) &&
            (identical(other.warrantyPrice, warrantyPrice) ||
                other.warrantyPrice == warrantyPrice) &&
            (identical(other.warrantyId, warrantyId) ||
                other.warrantyId == warrantyId) &&
            (identical(other.shippingAddressId, shippingAddressId) ||
                other.shippingAddressId == shippingAddressId) &&
            (identical(other.returnType, returnType) ||
                other.returnType == returnType) &&
            (identical(other.returnTime, returnTime) ||
                other.returnTime == returnTime) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.lastEdited, lastEdited) ||
                other.lastEdited == lastEdited) &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        lineCode,
        variantId,
        variantCode,
        variantName,
        barcode,
        uomId,
        uomName,
        sellingPrice,
        quantity,
        unitCost,
        discount,
        amount,
        vat,
        vatableAmount,
        total,
        isInvoiced,
        warrantyPrice,
        warrantyId,
        shippingAddressId,
        returnType,
        returnTime,
        isActive,
        lastEdited,
        orderId
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LinesAllOrderCopyWith<_$_LinesAllOrder> get copyWith =>
      __$$_LinesAllOrderCopyWithImpl<_$_LinesAllOrder>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LinesAllOrderToJson(
      this,
    );
  }
}

abstract class _LinesAllOrder implements LinesAllOrder {
  const factory _LinesAllOrder(
      {final int? id,
      @JsonKey(name: "line_code") final String? lineCode,
      @JsonKey(name: "variant_id") final int? variantId,
      @JsonKey(name: "variant_code") final String? variantCode,
      @JsonKey(name: "variant_name") final String? variantName,
      @JsonKey(name: "barcode") final String? barcode,
      @JsonKey(name: "uom_id") final int? uomId,
      @JsonKey(name: "uom_name") final String? uomName,
      @JsonKey(name: "selling_price") final double? sellingPrice,
      @JsonKey(name: "quantity") final int? quantity,
      @JsonKey(name: "unit_cost") final double? unitCost,
      @JsonKey(name: "discount") final double? discount,
      @JsonKey(name: "amount") final double? amount,
      @JsonKey(name: "vat") final double? vat,
      @JsonKey(name: "vatable_amount") final double? vatableAmount,
      @JsonKey(name: "total_amount") final double? total,
      @JsonKey(name: "is_invoiced", defaultValue: false) final bool? isInvoiced,
      @JsonKey(name: "warranty_price") final double? warrantyPrice,
      @JsonKey(name: "warranty_id") final int? warrantyId,
      @JsonKey(name: "shipping_address_id") final int? shippingAddressId,
      @JsonKey(name: "return_type") final String? returnType,
      @JsonKey(name: "return_time") final double? returnTime,
      @JsonKey(name: "is_active") final bool? isActive,
      @JsonKey(name: "last_edited_at") final String? lastEdited,
      @JsonKey(name: "order_id") final int? orderId}) = _$_LinesAllOrder;

  factory _LinesAllOrder.fromJson(Map<String, dynamic> json) =
      _$_LinesAllOrder.fromJson;

  @override
  int? get id;
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
  double? get unitCost;
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
  double? get total;
  @override
  @JsonKey(name: "is_invoiced", defaultValue: false)
  bool? get isInvoiced;
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
  @JsonKey(name: "return_time")
  double? get returnTime;
  @override
  @JsonKey(name: "is_active")
  bool? get isActive;
  @override
  @JsonKey(name: "last_edited_at")
  String? get lastEdited;
  @override
  @JsonKey(name: "order_id")
  int? get orderId;
  @override
  @JsonKey(ignore: true)
  _$$_LinesAllOrderCopyWith<_$_LinesAllOrder> get copyWith =>
      throw _privateConstructorUsedError;
}
