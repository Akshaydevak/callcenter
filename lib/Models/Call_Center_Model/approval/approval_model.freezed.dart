// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'approval_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApproveOrderModel _$ApproveOrderModelFromJson(Map<String, dynamic> json) {
  return _ApproveOrderModel.fromJson(json);
}

/// @nodoc
mixin _$ApproveOrderModel {
  double? get vat => throw _privateConstructorUsedError;
  double? get total => throw _privateConstructorUsedError;
  bool? get loading => throw _privateConstructorUsedError;
  @JsonKey(name: "order_id")
  int? get orderId => throw _privateConstructorUsedError;
  @JsonKey(name: "vatable_amount")
  double? get vatableAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "unit_cost")
  double? get unitCost => throw _privateConstructorUsedError;
  @JsonKey(name: "selling_price")
  double? get sellingPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "reason_of_approval_reject")
  String? get reasonApprovalObject => throw _privateConstructorUsedError;
  @JsonKey(name: "lines")
  List<ApproveLinesModel>? get lines => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApproveOrderModelCopyWith<ApproveOrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApproveOrderModelCopyWith<$Res> {
  factory $ApproveOrderModelCopyWith(
          ApproveOrderModel value, $Res Function(ApproveOrderModel) then) =
      _$ApproveOrderModelCopyWithImpl<$Res, ApproveOrderModel>;
  @useResult
  $Res call(
      {double? vat,
      double? total,
      bool? loading,
      @JsonKey(name: "order_id") int? orderId,
      @JsonKey(name: "vatable_amount") double? vatableAmount,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "selling_price") double? sellingPrice,
      @JsonKey(name: "reason_of_approval_reject") String? reasonApprovalObject,
      @JsonKey(name: "lines") List<ApproveLinesModel>? lines});
}

/// @nodoc
class _$ApproveOrderModelCopyWithImpl<$Res, $Val extends ApproveOrderModel>
    implements $ApproveOrderModelCopyWith<$Res> {
  _$ApproveOrderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vat = freezed,
    Object? total = freezed,
    Object? loading = freezed,
    Object? orderId = freezed,
    Object? vatableAmount = freezed,
    Object? unitCost = freezed,
    Object? sellingPrice = freezed,
    Object? reasonApprovalObject = freezed,
    Object? lines = freezed,
  }) {
    return _then(_value.copyWith(
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double?,
      loading: freezed == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool?,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int?,
      vatableAmount: freezed == vatableAmount
          ? _value.vatableAmount
          : vatableAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      unitCost: freezed == unitCost
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      sellingPrice: freezed == sellingPrice
          ? _value.sellingPrice
          : sellingPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      reasonApprovalObject: freezed == reasonApprovalObject
          ? _value.reasonApprovalObject
          : reasonApprovalObject // ignore: cast_nullable_to_non_nullable
              as String?,
      lines: freezed == lines
          ? _value.lines
          : lines // ignore: cast_nullable_to_non_nullable
              as List<ApproveLinesModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ApproveOrderModelCopyWith<$Res>
    implements $ApproveOrderModelCopyWith<$Res> {
  factory _$$_ApproveOrderModelCopyWith(_$_ApproveOrderModel value,
          $Res Function(_$_ApproveOrderModel) then) =
      __$$_ApproveOrderModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? vat,
      double? total,
      bool? loading,
      @JsonKey(name: "order_id") int? orderId,
      @JsonKey(name: "vatable_amount") double? vatableAmount,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "selling_price") double? sellingPrice,
      @JsonKey(name: "reason_of_approval_reject") String? reasonApprovalObject,
      @JsonKey(name: "lines") List<ApproveLinesModel>? lines});
}

/// @nodoc
class __$$_ApproveOrderModelCopyWithImpl<$Res>
    extends _$ApproveOrderModelCopyWithImpl<$Res, _$_ApproveOrderModel>
    implements _$$_ApproveOrderModelCopyWith<$Res> {
  __$$_ApproveOrderModelCopyWithImpl(
      _$_ApproveOrderModel _value, $Res Function(_$_ApproveOrderModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vat = freezed,
    Object? total = freezed,
    Object? loading = freezed,
    Object? orderId = freezed,
    Object? vatableAmount = freezed,
    Object? unitCost = freezed,
    Object? sellingPrice = freezed,
    Object? reasonApprovalObject = freezed,
    Object? lines = freezed,
  }) {
    return _then(_$_ApproveOrderModel(
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double?,
      loading: freezed == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool?,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int?,
      vatableAmount: freezed == vatableAmount
          ? _value.vatableAmount
          : vatableAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      unitCost: freezed == unitCost
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      sellingPrice: freezed == sellingPrice
          ? _value.sellingPrice
          : sellingPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      reasonApprovalObject: freezed == reasonApprovalObject
          ? _value.reasonApprovalObject
          : reasonApprovalObject // ignore: cast_nullable_to_non_nullable
              as String?,
      lines: freezed == lines
          ? _value._lines
          : lines // ignore: cast_nullable_to_non_nullable
              as List<ApproveLinesModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApproveOrderModel implements _ApproveOrderModel {
  const _$_ApproveOrderModel(
      {this.vat,
      this.total,
      this.loading,
      @JsonKey(name: "order_id") this.orderId,
      @JsonKey(name: "vatable_amount") this.vatableAmount,
      @JsonKey(name: "unit_cost") this.unitCost,
      @JsonKey(name: "selling_price") this.sellingPrice,
      @JsonKey(name: "reason_of_approval_reject") this.reasonApprovalObject,
      @JsonKey(name: "lines") final List<ApproveLinesModel>? lines})
      : _lines = lines;

  factory _$_ApproveOrderModel.fromJson(Map<String, dynamic> json) =>
      _$$_ApproveOrderModelFromJson(json);

  @override
  final double? vat;
  @override
  final double? total;
  @override
  final bool? loading;
  @override
  @JsonKey(name: "order_id")
  final int? orderId;
  @override
  @JsonKey(name: "vatable_amount")
  final double? vatableAmount;
  @override
  @JsonKey(name: "unit_cost")
  final double? unitCost;
  @override
  @JsonKey(name: "selling_price")
  final double? sellingPrice;
  @override
  @JsonKey(name: "reason_of_approval_reject")
  final String? reasonApprovalObject;
  final List<ApproveLinesModel>? _lines;
  @override
  @JsonKey(name: "lines")
  List<ApproveLinesModel>? get lines {
    final value = _lines;
    if (value == null) return null;
    if (_lines is EqualUnmodifiableListView) return _lines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ApproveOrderModel(vat: $vat, total: $total, loading: $loading, orderId: $orderId, vatableAmount: $vatableAmount, unitCost: $unitCost, sellingPrice: $sellingPrice, reasonApprovalObject: $reasonApprovalObject, lines: $lines)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApproveOrderModel &&
            (identical(other.vat, vat) || other.vat == vat) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.vatableAmount, vatableAmount) ||
                other.vatableAmount == vatableAmount) &&
            (identical(other.unitCost, unitCost) ||
                other.unitCost == unitCost) &&
            (identical(other.sellingPrice, sellingPrice) ||
                other.sellingPrice == sellingPrice) &&
            (identical(other.reasonApprovalObject, reasonApprovalObject) ||
                other.reasonApprovalObject == reasonApprovalObject) &&
            const DeepCollectionEquality().equals(other._lines, _lines));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      vat,
      total,
      loading,
      orderId,
      vatableAmount,
      unitCost,
      sellingPrice,
      reasonApprovalObject,
      const DeepCollectionEquality().hash(_lines));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApproveOrderModelCopyWith<_$_ApproveOrderModel> get copyWith =>
      __$$_ApproveOrderModelCopyWithImpl<_$_ApproveOrderModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApproveOrderModelToJson(
      this,
    );
  }
}

abstract class _ApproveOrderModel implements ApproveOrderModel {
  const factory _ApproveOrderModel(
          {final double? vat,
          final double? total,
          final bool? loading,
          @JsonKey(name: "order_id") final int? orderId,
          @JsonKey(name: "vatable_amount") final double? vatableAmount,
          @JsonKey(name: "unit_cost") final double? unitCost,
          @JsonKey(name: "selling_price") final double? sellingPrice,
          @JsonKey(name: "reason_of_approval_reject")
          final String? reasonApprovalObject,
          @JsonKey(name: "lines") final List<ApproveLinesModel>? lines}) =
      _$_ApproveOrderModel;

  factory _ApproveOrderModel.fromJson(Map<String, dynamic> json) =
      _$_ApproveOrderModel.fromJson;

  @override
  double? get vat;
  @override
  double? get total;
  @override
  bool? get loading;
  @override
  @JsonKey(name: "order_id")
  int? get orderId;
  @override
  @JsonKey(name: "vatable_amount")
  double? get vatableAmount;
  @override
  @JsonKey(name: "unit_cost")
  double? get unitCost;
  @override
  @JsonKey(name: "selling_price")
  double? get sellingPrice;
  @override
  @JsonKey(name: "reason_of_approval_reject")
  String? get reasonApprovalObject;
  @override
  @JsonKey(name: "lines")
  List<ApproveLinesModel>? get lines;
  @override
  @JsonKey(ignore: true)
  _$$_ApproveOrderModelCopyWith<_$_ApproveOrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ApproveLinesModel _$ApproveLinesModelFromJson(Map<String, dynamic> json) {
  return _ApproveLinesModel.fromJson(json);
}

/// @nodoc
mixin _$ApproveLinesModel {
  double? get vat => throw _privateConstructorUsedError;
  double? get amount => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: "line_id")
  int? get lineId => throw _privateConstructorUsedError;
  @JsonKey(name: "old_quantity")
  int? get oldQuantity => throw _privateConstructorUsedError;
  @JsonKey(name: "vatable_amount")
  double? get vatableAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "unit_cost")
  double? get unitCost => throw _privateConstructorUsedError;
  @JsonKey(name: "variant_name")
  String? get variantName => throw _privateConstructorUsedError;
  @JsonKey(name: "variant_id")
  int? get variantId => throw _privateConstructorUsedError;
  @JsonKey(name: "selling_price")
  double? get sellingPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "total_amount")
  double? get totalAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "reason_of_approval_reject")
  String? get reasonApprovalObject => throw _privateConstructorUsedError;
  @JsonKey(name: "is_approved", defaultValue: false)
  bool? get isApproved => throw _privateConstructorUsedError;
  @JsonKey(name: "approval_status")
  String? get approvalStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApproveLinesModelCopyWith<ApproveLinesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApproveLinesModelCopyWith<$Res> {
  factory $ApproveLinesModelCopyWith(
          ApproveLinesModel value, $Res Function(ApproveLinesModel) then) =
      _$ApproveLinesModelCopyWithImpl<$Res, ApproveLinesModel>;
  @useResult
  $Res call(
      {double? vat,
      double? amount,
      int? quantity,
      @JsonKey(name: "line_id") int? lineId,
      @JsonKey(name: "old_quantity") int? oldQuantity,
      @JsonKey(name: "vatable_amount") double? vatableAmount,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "variant_name") String? variantName,
      @JsonKey(name: "variant_id") int? variantId,
      @JsonKey(name: "selling_price") double? sellingPrice,
      @JsonKey(name: "total_amount") double? totalAmount,
      @JsonKey(name: "reason_of_approval_reject") String? reasonApprovalObject,
      @JsonKey(name: "is_approved", defaultValue: false) bool? isApproved,
      @JsonKey(name: "approval_status") String? approvalStatus,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive});
}

/// @nodoc
class _$ApproveLinesModelCopyWithImpl<$Res, $Val extends ApproveLinesModel>
    implements $ApproveLinesModelCopyWith<$Res> {
  _$ApproveLinesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vat = freezed,
    Object? amount = freezed,
    Object? quantity = freezed,
    Object? lineId = freezed,
    Object? oldQuantity = freezed,
    Object? vatableAmount = freezed,
    Object? unitCost = freezed,
    Object? variantName = freezed,
    Object? variantId = freezed,
    Object? sellingPrice = freezed,
    Object? totalAmount = freezed,
    Object? reasonApprovalObject = freezed,
    Object? isApproved = freezed,
    Object? approvalStatus = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_value.copyWith(
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      lineId: freezed == lineId
          ? _value.lineId
          : lineId // ignore: cast_nullable_to_non_nullable
              as int?,
      oldQuantity: freezed == oldQuantity
          ? _value.oldQuantity
          : oldQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      vatableAmount: freezed == vatableAmount
          ? _value.vatableAmount
          : vatableAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      unitCost: freezed == unitCost
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      variantName: freezed == variantName
          ? _value.variantName
          : variantName // ignore: cast_nullable_to_non_nullable
              as String?,
      variantId: freezed == variantId
          ? _value.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
              as int?,
      sellingPrice: freezed == sellingPrice
          ? _value.sellingPrice
          : sellingPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      totalAmount: freezed == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      reasonApprovalObject: freezed == reasonApprovalObject
          ? _value.reasonApprovalObject
          : reasonApprovalObject // ignore: cast_nullable_to_non_nullable
              as String?,
      isApproved: freezed == isApproved
          ? _value.isApproved
          : isApproved // ignore: cast_nullable_to_non_nullable
              as bool?,
      approvalStatus: freezed == approvalStatus
          ? _value.approvalStatus
          : approvalStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ApproveLinesModelCopyWith<$Res>
    implements $ApproveLinesModelCopyWith<$Res> {
  factory _$$_ApproveLinesModelCopyWith(_$_ApproveLinesModel value,
          $Res Function(_$_ApproveLinesModel) then) =
      __$$_ApproveLinesModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? vat,
      double? amount,
      int? quantity,
      @JsonKey(name: "line_id") int? lineId,
      @JsonKey(name: "old_quantity") int? oldQuantity,
      @JsonKey(name: "vatable_amount") double? vatableAmount,
      @JsonKey(name: "unit_cost") double? unitCost,
      @JsonKey(name: "variant_name") String? variantName,
      @JsonKey(name: "variant_id") int? variantId,
      @JsonKey(name: "selling_price") double? sellingPrice,
      @JsonKey(name: "total_amount") double? totalAmount,
      @JsonKey(name: "reason_of_approval_reject") String? reasonApprovalObject,
      @JsonKey(name: "is_approved", defaultValue: false) bool? isApproved,
      @JsonKey(name: "approval_status") String? approvalStatus,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive});
}

/// @nodoc
class __$$_ApproveLinesModelCopyWithImpl<$Res>
    extends _$ApproveLinesModelCopyWithImpl<$Res, _$_ApproveLinesModel>
    implements _$$_ApproveLinesModelCopyWith<$Res> {
  __$$_ApproveLinesModelCopyWithImpl(
      _$_ApproveLinesModel _value, $Res Function(_$_ApproveLinesModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vat = freezed,
    Object? amount = freezed,
    Object? quantity = freezed,
    Object? lineId = freezed,
    Object? oldQuantity = freezed,
    Object? vatableAmount = freezed,
    Object? unitCost = freezed,
    Object? variantName = freezed,
    Object? variantId = freezed,
    Object? sellingPrice = freezed,
    Object? totalAmount = freezed,
    Object? reasonApprovalObject = freezed,
    Object? isApproved = freezed,
    Object? approvalStatus = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_$_ApproveLinesModel(
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      lineId: freezed == lineId
          ? _value.lineId
          : lineId // ignore: cast_nullable_to_non_nullable
              as int?,
      oldQuantity: freezed == oldQuantity
          ? _value.oldQuantity
          : oldQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      vatableAmount: freezed == vatableAmount
          ? _value.vatableAmount
          : vatableAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      unitCost: freezed == unitCost
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      variantName: freezed == variantName
          ? _value.variantName
          : variantName // ignore: cast_nullable_to_non_nullable
              as String?,
      variantId: freezed == variantId
          ? _value.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
              as int?,
      sellingPrice: freezed == sellingPrice
          ? _value.sellingPrice
          : sellingPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      totalAmount: freezed == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      reasonApprovalObject: freezed == reasonApprovalObject
          ? _value.reasonApprovalObject
          : reasonApprovalObject // ignore: cast_nullable_to_non_nullable
              as String?,
      isApproved: freezed == isApproved
          ? _value.isApproved
          : isApproved // ignore: cast_nullable_to_non_nullable
              as bool?,
      approvalStatus: freezed == approvalStatus
          ? _value.approvalStatus
          : approvalStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApproveLinesModel implements _ApproveLinesModel {
  const _$_ApproveLinesModel(
      {this.vat,
      this.amount,
      this.quantity,
      @JsonKey(name: "line_id") this.lineId,
      @JsonKey(name: "old_quantity") this.oldQuantity,
      @JsonKey(name: "vatable_amount") this.vatableAmount,
      @JsonKey(name: "unit_cost") this.unitCost,
      @JsonKey(name: "variant_name") this.variantName,
      @JsonKey(name: "variant_id") this.variantId,
      @JsonKey(name: "selling_price") this.sellingPrice,
      @JsonKey(name: "total_amount") this.totalAmount,
      @JsonKey(name: "reason_of_approval_reject") this.reasonApprovalObject,
      @JsonKey(name: "is_approved", defaultValue: false) this.isApproved,
      @JsonKey(name: "approval_status") this.approvalStatus,
      @JsonKey(name: "is_active", defaultValue: false) this.isActive});

  factory _$_ApproveLinesModel.fromJson(Map<String, dynamic> json) =>
      _$$_ApproveLinesModelFromJson(json);

  @override
  final double? vat;
  @override
  final double? amount;
  @override
  final int? quantity;
  @override
  @JsonKey(name: "line_id")
  final int? lineId;
  @override
  @JsonKey(name: "old_quantity")
  final int? oldQuantity;
  @override
  @JsonKey(name: "vatable_amount")
  final double? vatableAmount;
  @override
  @JsonKey(name: "unit_cost")
  final double? unitCost;
  @override
  @JsonKey(name: "variant_name")
  final String? variantName;
  @override
  @JsonKey(name: "variant_id")
  final int? variantId;
  @override
  @JsonKey(name: "selling_price")
  final double? sellingPrice;
  @override
  @JsonKey(name: "total_amount")
  final double? totalAmount;
  @override
  @JsonKey(name: "reason_of_approval_reject")
  final String? reasonApprovalObject;
  @override
  @JsonKey(name: "is_approved", defaultValue: false)
  final bool? isApproved;
  @override
  @JsonKey(name: "approval_status")
  final String? approvalStatus;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  final bool? isActive;

  @override
  String toString() {
    return 'ApproveLinesModel(vat: $vat, amount: $amount, quantity: $quantity, lineId: $lineId, oldQuantity: $oldQuantity, vatableAmount: $vatableAmount, unitCost: $unitCost, variantName: $variantName, variantId: $variantId, sellingPrice: $sellingPrice, totalAmount: $totalAmount, reasonApprovalObject: $reasonApprovalObject, isApproved: $isApproved, approvalStatus: $approvalStatus, isActive: $isActive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApproveLinesModel &&
            (identical(other.vat, vat) || other.vat == vat) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.lineId, lineId) || other.lineId == lineId) &&
            (identical(other.oldQuantity, oldQuantity) ||
                other.oldQuantity == oldQuantity) &&
            (identical(other.vatableAmount, vatableAmount) ||
                other.vatableAmount == vatableAmount) &&
            (identical(other.unitCost, unitCost) ||
                other.unitCost == unitCost) &&
            (identical(other.variantName, variantName) ||
                other.variantName == variantName) &&
            (identical(other.variantId, variantId) ||
                other.variantId == variantId) &&
            (identical(other.sellingPrice, sellingPrice) ||
                other.sellingPrice == sellingPrice) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.reasonApprovalObject, reasonApprovalObject) ||
                other.reasonApprovalObject == reasonApprovalObject) &&
            (identical(other.isApproved, isApproved) ||
                other.isApproved == isApproved) &&
            (identical(other.approvalStatus, approvalStatus) ||
                other.approvalStatus == approvalStatus) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      vat,
      amount,
      quantity,
      lineId,
      oldQuantity,
      vatableAmount,
      unitCost,
      variantName,
      variantId,
      sellingPrice,
      totalAmount,
      reasonApprovalObject,
      isApproved,
      approvalStatus,
      isActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApproveLinesModelCopyWith<_$_ApproveLinesModel> get copyWith =>
      __$$_ApproveLinesModelCopyWithImpl<_$_ApproveLinesModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApproveLinesModelToJson(
      this,
    );
  }
}

abstract class _ApproveLinesModel implements ApproveLinesModel {
  const factory _ApproveLinesModel(
      {final double? vat,
      final double? amount,
      final int? quantity,
      @JsonKey(name: "line_id") final int? lineId,
      @JsonKey(name: "old_quantity") final int? oldQuantity,
      @JsonKey(name: "vatable_amount") final double? vatableAmount,
      @JsonKey(name: "unit_cost") final double? unitCost,
      @JsonKey(name: "variant_name") final String? variantName,
      @JsonKey(name: "variant_id") final int? variantId,
      @JsonKey(name: "selling_price") final double? sellingPrice,
      @JsonKey(name: "total_amount") final double? totalAmount,
      @JsonKey(name: "reason_of_approval_reject")
      final String? reasonApprovalObject,
      @JsonKey(name: "is_approved", defaultValue: false) final bool? isApproved,
      @JsonKey(name: "approval_status") final String? approvalStatus,
      @JsonKey(name: "is_active", defaultValue: false)
      final bool? isActive}) = _$_ApproveLinesModel;

  factory _ApproveLinesModel.fromJson(Map<String, dynamic> json) =
      _$_ApproveLinesModel.fromJson;

  @override
  double? get vat;
  @override
  double? get amount;
  @override
  int? get quantity;
  @override
  @JsonKey(name: "line_id")
  int? get lineId;
  @override
  @JsonKey(name: "old_quantity")
  int? get oldQuantity;
  @override
  @JsonKey(name: "vatable_amount")
  double? get vatableAmount;
  @override
  @JsonKey(name: "unit_cost")
  double? get unitCost;
  @override
  @JsonKey(name: "variant_name")
  String? get variantName;
  @override
  @JsonKey(name: "variant_id")
  int? get variantId;
  @override
  @JsonKey(name: "selling_price")
  double? get sellingPrice;
  @override
  @JsonKey(name: "total_amount")
  double? get totalAmount;
  @override
  @JsonKey(name: "reason_of_approval_reject")
  String? get reasonApprovalObject;
  @override
  @JsonKey(name: "is_approved", defaultValue: false)
  bool? get isApproved;
  @override
  @JsonKey(name: "approval_status")
  String? get approvalStatus;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive;
  @override
  @JsonKey(ignore: true)
  _$$_ApproveLinesModelCopyWith<_$_ApproveLinesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ApproveListModel _$ApproveListModelFromJson(Map<String, dynamic> json) {
  return _ApproveListModel.fromJson(json);
}

/// @nodoc
mixin _$ApproveListModel {
  int? get id => throw _privateConstructorUsedError;
  double? get total => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  String? get remarks => throw _privateConstructorUsedError;
  @JsonKey(name: "order_code")
  String? get orderCode => throw _privateConstructorUsedError;
  @JsonKey(name: "ordered_date")
  String? get orderDate => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_code")
  String? get cutsomerCode => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_name")
  String? get customerName => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_trn_number")
  String? get customerTrnNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "order_satus")
  String? get orderStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_status")
  String? get paymentStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "delivery_address")
  String? get deliveryAddress => throw _privateConstructorUsedError;
  @JsonKey(name: "invoice_status")
  String? get inVoiceStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApproveListModelCopyWith<ApproveListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApproveListModelCopyWith<$Res> {
  factory $ApproveListModelCopyWith(
          ApproveListModel value, $Res Function(ApproveListModel) then) =
      _$ApproveListModelCopyWithImpl<$Res, ApproveListModel>;
  @useResult
  $Res call(
      {int? id,
      double? total,
      String? notes,
      String? remarks,
      @JsonKey(name: "order_code") String? orderCode,
      @JsonKey(name: "ordered_date") String? orderDate,
      @JsonKey(name: "customer_code") String? cutsomerCode,
      @JsonKey(name: "customer_name") String? customerName,
      @JsonKey(name: "customer_trn_number") String? customerTrnNumber,
      @JsonKey(name: "order_satus") String? orderStatus,
      @JsonKey(name: "payment_status") String? paymentStatus,
      @JsonKey(name: "delivery_address") String? deliveryAddress,
      @JsonKey(name: "invoice_status") String? inVoiceStatus,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive});
}

/// @nodoc
class _$ApproveListModelCopyWithImpl<$Res, $Val extends ApproveListModel>
    implements $ApproveListModelCopyWith<$Res> {
  _$ApproveListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? total = freezed,
    Object? notes = freezed,
    Object? remarks = freezed,
    Object? orderCode = freezed,
    Object? orderDate = freezed,
    Object? cutsomerCode = freezed,
    Object? customerName = freezed,
    Object? customerTrnNumber = freezed,
    Object? orderStatus = freezed,
    Object? paymentStatus = freezed,
    Object? deliveryAddress = freezed,
    Object? inVoiceStatus = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      remarks: freezed == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      orderCode: freezed == orderCode
          ? _value.orderCode
          : orderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      orderDate: freezed == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as String?,
      cutsomerCode: freezed == cutsomerCode
          ? _value.cutsomerCode
          : cutsomerCode // ignore: cast_nullable_to_non_nullable
              as String?,
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      customerTrnNumber: freezed == customerTrnNumber
          ? _value.customerTrnNumber
          : customerTrnNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      orderStatus: freezed == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryAddress: freezed == deliveryAddress
          ? _value.deliveryAddress
          : deliveryAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      inVoiceStatus: freezed == inVoiceStatus
          ? _value.inVoiceStatus
          : inVoiceStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ApproveListModelCopyWith<$Res>
    implements $ApproveListModelCopyWith<$Res> {
  factory _$$_ApproveListModelCopyWith(
          _$_ApproveListModel value, $Res Function(_$_ApproveListModel) then) =
      __$$_ApproveListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      double? total,
      String? notes,
      String? remarks,
      @JsonKey(name: "order_code") String? orderCode,
      @JsonKey(name: "ordered_date") String? orderDate,
      @JsonKey(name: "customer_code") String? cutsomerCode,
      @JsonKey(name: "customer_name") String? customerName,
      @JsonKey(name: "customer_trn_number") String? customerTrnNumber,
      @JsonKey(name: "order_satus") String? orderStatus,
      @JsonKey(name: "payment_status") String? paymentStatus,
      @JsonKey(name: "delivery_address") String? deliveryAddress,
      @JsonKey(name: "invoice_status") String? inVoiceStatus,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive});
}

/// @nodoc
class __$$_ApproveListModelCopyWithImpl<$Res>
    extends _$ApproveListModelCopyWithImpl<$Res, _$_ApproveListModel>
    implements _$$_ApproveListModelCopyWith<$Res> {
  __$$_ApproveListModelCopyWithImpl(
      _$_ApproveListModel _value, $Res Function(_$_ApproveListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? total = freezed,
    Object? notes = freezed,
    Object? remarks = freezed,
    Object? orderCode = freezed,
    Object? orderDate = freezed,
    Object? cutsomerCode = freezed,
    Object? customerName = freezed,
    Object? customerTrnNumber = freezed,
    Object? orderStatus = freezed,
    Object? paymentStatus = freezed,
    Object? deliveryAddress = freezed,
    Object? inVoiceStatus = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_$_ApproveListModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      remarks: freezed == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      orderCode: freezed == orderCode
          ? _value.orderCode
          : orderCode // ignore: cast_nullable_to_non_nullable
              as String?,
      orderDate: freezed == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as String?,
      cutsomerCode: freezed == cutsomerCode
          ? _value.cutsomerCode
          : cutsomerCode // ignore: cast_nullable_to_non_nullable
              as String?,
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      customerTrnNumber: freezed == customerTrnNumber
          ? _value.customerTrnNumber
          : customerTrnNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      orderStatus: freezed == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryAddress: freezed == deliveryAddress
          ? _value.deliveryAddress
          : deliveryAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      inVoiceStatus: freezed == inVoiceStatus
          ? _value.inVoiceStatus
          : inVoiceStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApproveListModel implements _ApproveListModel {
  const _$_ApproveListModel(
      {this.id,
      this.total,
      this.notes,
      this.remarks,
      @JsonKey(name: "order_code") this.orderCode,
      @JsonKey(name: "ordered_date") this.orderDate,
      @JsonKey(name: "customer_code") this.cutsomerCode,
      @JsonKey(name: "customer_name") this.customerName,
      @JsonKey(name: "customer_trn_number") this.customerTrnNumber,
      @JsonKey(name: "order_satus") this.orderStatus,
      @JsonKey(name: "payment_status") this.paymentStatus,
      @JsonKey(name: "delivery_address") this.deliveryAddress,
      @JsonKey(name: "invoice_status") this.inVoiceStatus,
      @JsonKey(name: "is_active", defaultValue: false) this.isActive});

  factory _$_ApproveListModel.fromJson(Map<String, dynamic> json) =>
      _$$_ApproveListModelFromJson(json);

  @override
  final int? id;
  @override
  final double? total;
  @override
  final String? notes;
  @override
  final String? remarks;
  @override
  @JsonKey(name: "order_code")
  final String? orderCode;
  @override
  @JsonKey(name: "ordered_date")
  final String? orderDate;
  @override
  @JsonKey(name: "customer_code")
  final String? cutsomerCode;
  @override
  @JsonKey(name: "customer_name")
  final String? customerName;
  @override
  @JsonKey(name: "customer_trn_number")
  final String? customerTrnNumber;
  @override
  @JsonKey(name: "order_satus")
  final String? orderStatus;
  @override
  @JsonKey(name: "payment_status")
  final String? paymentStatus;
  @override
  @JsonKey(name: "delivery_address")
  final String? deliveryAddress;
  @override
  @JsonKey(name: "invoice_status")
  final String? inVoiceStatus;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  final bool? isActive;

  @override
  String toString() {
    return 'ApproveListModel(id: $id, total: $total, notes: $notes, remarks: $remarks, orderCode: $orderCode, orderDate: $orderDate, cutsomerCode: $cutsomerCode, customerName: $customerName, customerTrnNumber: $customerTrnNumber, orderStatus: $orderStatus, paymentStatus: $paymentStatus, deliveryAddress: $deliveryAddress, inVoiceStatus: $inVoiceStatus, isActive: $isActive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApproveListModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.remarks, remarks) || other.remarks == remarks) &&
            (identical(other.orderCode, orderCode) ||
                other.orderCode == orderCode) &&
            (identical(other.orderDate, orderDate) ||
                other.orderDate == orderDate) &&
            (identical(other.cutsomerCode, cutsomerCode) ||
                other.cutsomerCode == cutsomerCode) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.customerTrnNumber, customerTrnNumber) ||
                other.customerTrnNumber == customerTrnNumber) &&
            (identical(other.orderStatus, orderStatus) ||
                other.orderStatus == orderStatus) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(other.deliveryAddress, deliveryAddress) ||
                other.deliveryAddress == deliveryAddress) &&
            (identical(other.inVoiceStatus, inVoiceStatus) ||
                other.inVoiceStatus == inVoiceStatus) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      total,
      notes,
      remarks,
      orderCode,
      orderDate,
      cutsomerCode,
      customerName,
      customerTrnNumber,
      orderStatus,
      paymentStatus,
      deliveryAddress,
      inVoiceStatus,
      isActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApproveListModelCopyWith<_$_ApproveListModel> get copyWith =>
      __$$_ApproveListModelCopyWithImpl<_$_ApproveListModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApproveListModelToJson(
      this,
    );
  }
}

abstract class _ApproveListModel implements ApproveListModel {
  const factory _ApproveListModel(
      {final int? id,
      final double? total,
      final String? notes,
      final String? remarks,
      @JsonKey(name: "order_code") final String? orderCode,
      @JsonKey(name: "ordered_date") final String? orderDate,
      @JsonKey(name: "customer_code") final String? cutsomerCode,
      @JsonKey(name: "customer_name") final String? customerName,
      @JsonKey(name: "customer_trn_number") final String? customerTrnNumber,
      @JsonKey(name: "order_satus") final String? orderStatus,
      @JsonKey(name: "payment_status") final String? paymentStatus,
      @JsonKey(name: "delivery_address") final String? deliveryAddress,
      @JsonKey(name: "invoice_status") final String? inVoiceStatus,
      @JsonKey(name: "is_active", defaultValue: false)
      final bool? isActive}) = _$_ApproveListModel;

  factory _ApproveListModel.fromJson(Map<String, dynamic> json) =
      _$_ApproveListModel.fromJson;

  @override
  int? get id;
  @override
  double? get total;
  @override
  String? get notes;
  @override
  String? get remarks;
  @override
  @JsonKey(name: "order_code")
  String? get orderCode;
  @override
  @JsonKey(name: "ordered_date")
  String? get orderDate;
  @override
  @JsonKey(name: "customer_code")
  String? get cutsomerCode;
  @override
  @JsonKey(name: "customer_name")
  String? get customerName;
  @override
  @JsonKey(name: "customer_trn_number")
  String? get customerTrnNumber;
  @override
  @JsonKey(name: "order_satus")
  String? get orderStatus;
  @override
  @JsonKey(name: "payment_status")
  String? get paymentStatus;
  @override
  @JsonKey(name: "delivery_address")
  String? get deliveryAddress;
  @override
  @JsonKey(name: "invoice_status")
  String? get inVoiceStatus;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive;
  @override
  @JsonKey(ignore: true)
  _$$_ApproveListModelCopyWith<_$_ApproveListModel> get copyWith =>
      throw _privateConstructorUsedError;
}
