// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_approve_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApproveCartModel _$ApproveCartModelFromJson(Map<String, dynamic> json) {
  return _ApproveCartModel.fromJson(json);
}

/// @nodoc
mixin _$ApproveCartModel {
  @JsonKey(name: "cart_head_id")
  int? get cartHeadId => throw _privateConstructorUsedError;
  @JsonKey(name: "approved_by")
  String? get approvedBy => throw _privateConstructorUsedError;
  @JsonKey(name: "cart_lines")
  List<ApproveCartLinesModel>? get lines => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApproveCartModelCopyWith<ApproveCartModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApproveCartModelCopyWith<$Res> {
  factory $ApproveCartModelCopyWith(
          ApproveCartModel value, $Res Function(ApproveCartModel) then) =
      _$ApproveCartModelCopyWithImpl<$Res, ApproveCartModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "cart_head_id") int? cartHeadId,
      @JsonKey(name: "approved_by") String? approvedBy,
      @JsonKey(name: "cart_lines") List<ApproveCartLinesModel>? lines});
}

/// @nodoc
class _$ApproveCartModelCopyWithImpl<$Res, $Val extends ApproveCartModel>
    implements $ApproveCartModelCopyWith<$Res> {
  _$ApproveCartModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartHeadId = freezed,
    Object? approvedBy = freezed,
    Object? lines = freezed,
  }) {
    return _then(_value.copyWith(
      cartHeadId: freezed == cartHeadId
          ? _value.cartHeadId
          : cartHeadId // ignore: cast_nullable_to_non_nullable
              as int?,
      approvedBy: freezed == approvedBy
          ? _value.approvedBy
          : approvedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      lines: freezed == lines
          ? _value.lines
          : lines // ignore: cast_nullable_to_non_nullable
              as List<ApproveCartLinesModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ApproveCartModelCopyWith<$Res>
    implements $ApproveCartModelCopyWith<$Res> {
  factory _$$_ApproveCartModelCopyWith(
          _$_ApproveCartModel value, $Res Function(_$_ApproveCartModel) then) =
      __$$_ApproveCartModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "cart_head_id") int? cartHeadId,
      @JsonKey(name: "approved_by") String? approvedBy,
      @JsonKey(name: "cart_lines") List<ApproveCartLinesModel>? lines});
}

/// @nodoc
class __$$_ApproveCartModelCopyWithImpl<$Res>
    extends _$ApproveCartModelCopyWithImpl<$Res, _$_ApproveCartModel>
    implements _$$_ApproveCartModelCopyWith<$Res> {
  __$$_ApproveCartModelCopyWithImpl(
      _$_ApproveCartModel _value, $Res Function(_$_ApproveCartModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartHeadId = freezed,
    Object? approvedBy = freezed,
    Object? lines = freezed,
  }) {
    return _then(_$_ApproveCartModel(
      cartHeadId: freezed == cartHeadId
          ? _value.cartHeadId
          : cartHeadId // ignore: cast_nullable_to_non_nullable
              as int?,
      approvedBy: freezed == approvedBy
          ? _value.approvedBy
          : approvedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      lines: freezed == lines
          ? _value._lines
          : lines // ignore: cast_nullable_to_non_nullable
              as List<ApproveCartLinesModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApproveCartModel implements _ApproveCartModel {
  const _$_ApproveCartModel(
      {@JsonKey(name: "cart_head_id") this.cartHeadId,
      @JsonKey(name: "approved_by") this.approvedBy,
      @JsonKey(name: "cart_lines") final List<ApproveCartLinesModel>? lines})
      : _lines = lines;

  factory _$_ApproveCartModel.fromJson(Map<String, dynamic> json) =>
      _$$_ApproveCartModelFromJson(json);

  @override
  @JsonKey(name: "cart_head_id")
  final int? cartHeadId;
  @override
  @JsonKey(name: "approved_by")
  final String? approvedBy;
  final List<ApproveCartLinesModel>? _lines;
  @override
  @JsonKey(name: "cart_lines")
  List<ApproveCartLinesModel>? get lines {
    final value = _lines;
    if (value == null) return null;
    if (_lines is EqualUnmodifiableListView) return _lines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ApproveCartModel(cartHeadId: $cartHeadId, approvedBy: $approvedBy, lines: $lines)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApproveCartModel &&
            (identical(other.cartHeadId, cartHeadId) ||
                other.cartHeadId == cartHeadId) &&
            (identical(other.approvedBy, approvedBy) ||
                other.approvedBy == approvedBy) &&
            const DeepCollectionEquality().equals(other._lines, _lines));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, cartHeadId, approvedBy,
      const DeepCollectionEquality().hash(_lines));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApproveCartModelCopyWith<_$_ApproveCartModel> get copyWith =>
      __$$_ApproveCartModelCopyWithImpl<_$_ApproveCartModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApproveCartModelToJson(
      this,
    );
  }
}

abstract class _ApproveCartModel implements ApproveCartModel {
  const factory _ApproveCartModel(
      {@JsonKey(name: "cart_head_id") final int? cartHeadId,
      @JsonKey(name: "approved_by") final String? approvedBy,
      @JsonKey(name: "cart_lines")
      final List<ApproveCartLinesModel>? lines}) = _$_ApproveCartModel;

  factory _ApproveCartModel.fromJson(Map<String, dynamic> json) =
      _$_ApproveCartModel.fromJson;

  @override
  @JsonKey(name: "cart_head_id")
  int? get cartHeadId;
  @override
  @JsonKey(name: "approved_by")
  String? get approvedBy;
  @override
  @JsonKey(name: "cart_lines")
  List<ApproveCartLinesModel>? get lines;
  @override
  @JsonKey(ignore: true)
  _$$_ApproveCartModelCopyWith<_$_ApproveCartModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ApproveCartLinesModel _$ApproveCartLinesModelFromJson(
    Map<String, dynamic> json) {
  return _ApproveCartLinesModel.fromJson(json);
}

/// @nodoc
mixin _$ApproveCartLinesModel {
  double? get price => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: "cart_id")
  int? get cartId => throw _privateConstructorUsedError;
  @JsonKey(name: "approval_status")
  String? get approvalStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "reason_of_approval_reject")
  String? get reasonOfApprovalReject => throw _privateConstructorUsedError;
  @JsonKey(name: "approved_by")
  String? get approvedby => throw _privateConstructorUsedError;
  @JsonKey(name: "need_approval", defaultValue: false)
  bool? get needApproval => throw _privateConstructorUsedError;
  @JsonKey(name: "is_approved", defaultValue: false)
  bool? get isApproved => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApproveCartLinesModelCopyWith<ApproveCartLinesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApproveCartLinesModelCopyWith<$Res> {
  factory $ApproveCartLinesModelCopyWith(ApproveCartLinesModel value,
          $Res Function(ApproveCartLinesModel) then) =
      _$ApproveCartLinesModelCopyWithImpl<$Res, ApproveCartLinesModel>;
  @useResult
  $Res call(
      {double? price,
      int? quantity,
      @JsonKey(name: "cart_id") int? cartId,
      @JsonKey(name: "approval_status") String? approvalStatus,
      @JsonKey(name: "reason_of_approval_reject")
      String? reasonOfApprovalReject,
      @JsonKey(name: "approved_by") String? approvedby,
      @JsonKey(name: "need_approval", defaultValue: false) bool? needApproval,
      @JsonKey(name: "is_approved", defaultValue: false) bool? isApproved,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive});
}

/// @nodoc
class _$ApproveCartLinesModelCopyWithImpl<$Res,
        $Val extends ApproveCartLinesModel>
    implements $ApproveCartLinesModelCopyWith<$Res> {
  _$ApproveCartLinesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = freezed,
    Object? quantity = freezed,
    Object? cartId = freezed,
    Object? approvalStatus = freezed,
    Object? reasonOfApprovalReject = freezed,
    Object? approvedby = freezed,
    Object? needApproval = freezed,
    Object? isApproved = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_value.copyWith(
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      cartId: freezed == cartId
          ? _value.cartId
          : cartId // ignore: cast_nullable_to_non_nullable
              as int?,
      approvalStatus: freezed == approvalStatus
          ? _value.approvalStatus
          : approvalStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      reasonOfApprovalReject: freezed == reasonOfApprovalReject
          ? _value.reasonOfApprovalReject
          : reasonOfApprovalReject // ignore: cast_nullable_to_non_nullable
              as String?,
      approvedby: freezed == approvedby
          ? _value.approvedby
          : approvedby // ignore: cast_nullable_to_non_nullable
              as String?,
      needApproval: freezed == needApproval
          ? _value.needApproval
          : needApproval // ignore: cast_nullable_to_non_nullable
              as bool?,
      isApproved: freezed == isApproved
          ? _value.isApproved
          : isApproved // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ApproveCartLinesModelCopyWith<$Res>
    implements $ApproveCartLinesModelCopyWith<$Res> {
  factory _$$_ApproveCartLinesModelCopyWith(_$_ApproveCartLinesModel value,
          $Res Function(_$_ApproveCartLinesModel) then) =
      __$$_ApproveCartLinesModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? price,
      int? quantity,
      @JsonKey(name: "cart_id") int? cartId,
      @JsonKey(name: "approval_status") String? approvalStatus,
      @JsonKey(name: "reason_of_approval_reject")
      String? reasonOfApprovalReject,
      @JsonKey(name: "approved_by") String? approvedby,
      @JsonKey(name: "need_approval", defaultValue: false) bool? needApproval,
      @JsonKey(name: "is_approved", defaultValue: false) bool? isApproved,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive});
}

/// @nodoc
class __$$_ApproveCartLinesModelCopyWithImpl<$Res>
    extends _$ApproveCartLinesModelCopyWithImpl<$Res, _$_ApproveCartLinesModel>
    implements _$$_ApproveCartLinesModelCopyWith<$Res> {
  __$$_ApproveCartLinesModelCopyWithImpl(_$_ApproveCartLinesModel _value,
      $Res Function(_$_ApproveCartLinesModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = freezed,
    Object? quantity = freezed,
    Object? cartId = freezed,
    Object? approvalStatus = freezed,
    Object? reasonOfApprovalReject = freezed,
    Object? approvedby = freezed,
    Object? needApproval = freezed,
    Object? isApproved = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_$_ApproveCartLinesModel(
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      cartId: freezed == cartId
          ? _value.cartId
          : cartId // ignore: cast_nullable_to_non_nullable
              as int?,
      approvalStatus: freezed == approvalStatus
          ? _value.approvalStatus
          : approvalStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      reasonOfApprovalReject: freezed == reasonOfApprovalReject
          ? _value.reasonOfApprovalReject
          : reasonOfApprovalReject // ignore: cast_nullable_to_non_nullable
              as String?,
      approvedby: freezed == approvedby
          ? _value.approvedby
          : approvedby // ignore: cast_nullable_to_non_nullable
              as String?,
      needApproval: freezed == needApproval
          ? _value.needApproval
          : needApproval // ignore: cast_nullable_to_non_nullable
              as bool?,
      isApproved: freezed == isApproved
          ? _value.isApproved
          : isApproved // ignore: cast_nullable_to_non_nullable
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
class _$_ApproveCartLinesModel implements _ApproveCartLinesModel {
  const _$_ApproveCartLinesModel(
      {this.price,
      this.quantity,
      @JsonKey(name: "cart_id") this.cartId,
      @JsonKey(name: "approval_status") this.approvalStatus,
      @JsonKey(name: "reason_of_approval_reject") this.reasonOfApprovalReject,
      @JsonKey(name: "approved_by") this.approvedby,
      @JsonKey(name: "need_approval", defaultValue: false) this.needApproval,
      @JsonKey(name: "is_approved", defaultValue: false) this.isApproved,
      @JsonKey(name: "is_active", defaultValue: false) this.isActive});

  factory _$_ApproveCartLinesModel.fromJson(Map<String, dynamic> json) =>
      _$$_ApproveCartLinesModelFromJson(json);

  @override
  final double? price;
  @override
  final int? quantity;
  @override
  @JsonKey(name: "cart_id")
  final int? cartId;
  @override
  @JsonKey(name: "approval_status")
  final String? approvalStatus;
  @override
  @JsonKey(name: "reason_of_approval_reject")
  final String? reasonOfApprovalReject;
  @override
  @JsonKey(name: "approved_by")
  final String? approvedby;
  @override
  @JsonKey(name: "need_approval", defaultValue: false)
  final bool? needApproval;
  @override
  @JsonKey(name: "is_approved", defaultValue: false)
  final bool? isApproved;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  final bool? isActive;

  @override
  String toString() {
    return 'ApproveCartLinesModel(price: $price, quantity: $quantity, cartId: $cartId, approvalStatus: $approvalStatus, reasonOfApprovalReject: $reasonOfApprovalReject, approvedby: $approvedby, needApproval: $needApproval, isApproved: $isApproved, isActive: $isActive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApproveCartLinesModel &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.cartId, cartId) || other.cartId == cartId) &&
            (identical(other.approvalStatus, approvalStatus) ||
                other.approvalStatus == approvalStatus) &&
            (identical(other.reasonOfApprovalReject, reasonOfApprovalReject) ||
                other.reasonOfApprovalReject == reasonOfApprovalReject) &&
            (identical(other.approvedby, approvedby) ||
                other.approvedby == approvedby) &&
            (identical(other.needApproval, needApproval) ||
                other.needApproval == needApproval) &&
            (identical(other.isApproved, isApproved) ||
                other.isApproved == isApproved) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      price,
      quantity,
      cartId,
      approvalStatus,
      reasonOfApprovalReject,
      approvedby,
      needApproval,
      isApproved,
      isActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApproveCartLinesModelCopyWith<_$_ApproveCartLinesModel> get copyWith =>
      __$$_ApproveCartLinesModelCopyWithImpl<_$_ApproveCartLinesModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApproveCartLinesModelToJson(
      this,
    );
  }
}

abstract class _ApproveCartLinesModel implements ApproveCartLinesModel {
  const factory _ApproveCartLinesModel(
      {final double? price,
      final int? quantity,
      @JsonKey(name: "cart_id") final int? cartId,
      @JsonKey(name: "approval_status") final String? approvalStatus,
      @JsonKey(name: "reason_of_approval_reject")
      final String? reasonOfApprovalReject,
      @JsonKey(name: "approved_by") final String? approvedby,
      @JsonKey(name: "need_approval", defaultValue: false)
      final bool? needApproval,
      @JsonKey(name: "is_approved", defaultValue: false) final bool? isApproved,
      @JsonKey(name: "is_active", defaultValue: false)
      final bool? isActive}) = _$_ApproveCartLinesModel;

  factory _ApproveCartLinesModel.fromJson(Map<String, dynamic> json) =
      _$_ApproveCartLinesModel.fromJson;

  @override
  double? get price;
  @override
  int? get quantity;
  @override
  @JsonKey(name: "cart_id")
  int? get cartId;
  @override
  @JsonKey(name: "approval_status")
  String? get approvalStatus;
  @override
  @JsonKey(name: "reason_of_approval_reject")
  String? get reasonOfApprovalReject;
  @override
  @JsonKey(name: "approved_by")
  String? get approvedby;
  @override
  @JsonKey(name: "need_approval", defaultValue: false)
  bool? get needApproval;
  @override
  @JsonKey(name: "is_approved", defaultValue: false)
  bool? get isApproved;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive;
  @override
  @JsonKey(ignore: true)
  _$$_ApproveCartLinesModelCopyWith<_$_ApproveCartLinesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ApproveCartReadModel _$ApproveCartReadModelFromJson(Map<String, dynamic> json) {
  return _ApproveCartReadModel.fromJson(json);
}

/// @nodoc
mixin _$ApproveCartReadModel {
  int? get id => throw _privateConstructorUsedError;
  Address? get address => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_code")
  String? get customerCode => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_name")
  String? get customerName => throw _privateConstructorUsedError;
  @JsonKey(name: "total_cart_value")
  double? get totalCartValue => throw _privateConstructorUsedError;
  @JsonKey(name: "cart_lines")
  List<ApproveCartDisplayModel>? get lines =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApproveCartReadModelCopyWith<ApproveCartReadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApproveCartReadModelCopyWith<$Res> {
  factory $ApproveCartReadModelCopyWith(ApproveCartReadModel value,
          $Res Function(ApproveCartReadModel) then) =
      _$ApproveCartReadModelCopyWithImpl<$Res, ApproveCartReadModel>;
  @useResult
  $Res call(
      {int? id,
      Address? address,
      @JsonKey(name: "customer_code") String? customerCode,
      @JsonKey(name: "customer_name") String? customerName,
      @JsonKey(name: "total_cart_value") double? totalCartValue,
      @JsonKey(name: "cart_lines") List<ApproveCartDisplayModel>? lines});

  $AddressCopyWith<$Res>? get address;
}

/// @nodoc
class _$ApproveCartReadModelCopyWithImpl<$Res,
        $Val extends ApproveCartReadModel>
    implements $ApproveCartReadModelCopyWith<$Res> {
  _$ApproveCartReadModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? address = freezed,
    Object? customerCode = freezed,
    Object? customerName = freezed,
    Object? totalCartValue = freezed,
    Object? lines = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      customerCode: freezed == customerCode
          ? _value.customerCode
          : customerCode // ignore: cast_nullable_to_non_nullable
              as String?,
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      totalCartValue: freezed == totalCartValue
          ? _value.totalCartValue
          : totalCartValue // ignore: cast_nullable_to_non_nullable
              as double?,
      lines: freezed == lines
          ? _value.lines
          : lines // ignore: cast_nullable_to_non_nullable
              as List<ApproveCartDisplayModel>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res>? get address {
    if (_value.address == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_value.address!, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ApproveCartReadModelCopyWith<$Res>
    implements $ApproveCartReadModelCopyWith<$Res> {
  factory _$$_ApproveCartReadModelCopyWith(_$_ApproveCartReadModel value,
          $Res Function(_$_ApproveCartReadModel) then) =
      __$$_ApproveCartReadModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      Address? address,
      @JsonKey(name: "customer_code") String? customerCode,
      @JsonKey(name: "customer_name") String? customerName,
      @JsonKey(name: "total_cart_value") double? totalCartValue,
      @JsonKey(name: "cart_lines") List<ApproveCartDisplayModel>? lines});

  @override
  $AddressCopyWith<$Res>? get address;
}

/// @nodoc
class __$$_ApproveCartReadModelCopyWithImpl<$Res>
    extends _$ApproveCartReadModelCopyWithImpl<$Res, _$_ApproveCartReadModel>
    implements _$$_ApproveCartReadModelCopyWith<$Res> {
  __$$_ApproveCartReadModelCopyWithImpl(_$_ApproveCartReadModel _value,
      $Res Function(_$_ApproveCartReadModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? address = freezed,
    Object? customerCode = freezed,
    Object? customerName = freezed,
    Object? totalCartValue = freezed,
    Object? lines = freezed,
  }) {
    return _then(_$_ApproveCartReadModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      customerCode: freezed == customerCode
          ? _value.customerCode
          : customerCode // ignore: cast_nullable_to_non_nullable
              as String?,
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      totalCartValue: freezed == totalCartValue
          ? _value.totalCartValue
          : totalCartValue // ignore: cast_nullable_to_non_nullable
              as double?,
      lines: freezed == lines
          ? _value._lines
          : lines // ignore: cast_nullable_to_non_nullable
              as List<ApproveCartDisplayModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApproveCartReadModel implements _ApproveCartReadModel {
  const _$_ApproveCartReadModel(
      {this.id,
      this.address,
      @JsonKey(name: "customer_code") this.customerCode,
      @JsonKey(name: "customer_name") this.customerName,
      @JsonKey(name: "total_cart_value") this.totalCartValue,
      @JsonKey(name: "cart_lines") final List<ApproveCartDisplayModel>? lines})
      : _lines = lines;

  factory _$_ApproveCartReadModel.fromJson(Map<String, dynamic> json) =>
      _$$_ApproveCartReadModelFromJson(json);

  @override
  final int? id;
  @override
  final Address? address;
  @override
  @JsonKey(name: "customer_code")
  final String? customerCode;
  @override
  @JsonKey(name: "customer_name")
  final String? customerName;
  @override
  @JsonKey(name: "total_cart_value")
  final double? totalCartValue;
  final List<ApproveCartDisplayModel>? _lines;
  @override
  @JsonKey(name: "cart_lines")
  List<ApproveCartDisplayModel>? get lines {
    final value = _lines;
    if (value == null) return null;
    if (_lines is EqualUnmodifiableListView) return _lines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ApproveCartReadModel(id: $id, address: $address, customerCode: $customerCode, customerName: $customerName, totalCartValue: $totalCartValue, lines: $lines)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApproveCartReadModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.customerCode, customerCode) ||
                other.customerCode == customerCode) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.totalCartValue, totalCartValue) ||
                other.totalCartValue == totalCartValue) &&
            const DeepCollectionEquality().equals(other._lines, _lines));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      address,
      customerCode,
      customerName,
      totalCartValue,
      const DeepCollectionEquality().hash(_lines));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApproveCartReadModelCopyWith<_$_ApproveCartReadModel> get copyWith =>
      __$$_ApproveCartReadModelCopyWithImpl<_$_ApproveCartReadModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApproveCartReadModelToJson(
      this,
    );
  }
}

abstract class _ApproveCartReadModel implements ApproveCartReadModel {
  const factory _ApproveCartReadModel(
      {final int? id,
      final Address? address,
      @JsonKey(name: "customer_code") final String? customerCode,
      @JsonKey(name: "customer_name") final String? customerName,
      @JsonKey(name: "total_cart_value") final double? totalCartValue,
      @JsonKey(name: "cart_lines")
      final List<ApproveCartDisplayModel>? lines}) = _$_ApproveCartReadModel;

  factory _ApproveCartReadModel.fromJson(Map<String, dynamic> json) =
      _$_ApproveCartReadModel.fromJson;

  @override
  int? get id;
  @override
  Address? get address;
  @override
  @JsonKey(name: "customer_code")
  String? get customerCode;
  @override
  @JsonKey(name: "customer_name")
  String? get customerName;
  @override
  @JsonKey(name: "total_cart_value")
  double? get totalCartValue;
  @override
  @JsonKey(name: "cart_lines")
  List<ApproveCartDisplayModel>? get lines;
  @override
  @JsonKey(ignore: true)
  _$$_ApproveCartReadModelCopyWith<_$_ApproveCartReadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ApproveCartDisplayModel _$ApproveCartDisplayModelFromJson(
    Map<String, dynamic> json) {
  return _ApproveCartDisplayModel.fromJson(json);
}

/// @nodoc
mixin _$ApproveCartDisplayModel {
  int? get id => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  double? get vat => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: "variant_id")
  int? get variantId => throw _privateConstructorUsedError;
  @JsonKey(name: "cart_code")
  String? get cartCode => throw _privateConstructorUsedError;
  @JsonKey(name: "variant_code")
  String? get variantCode => throw _privateConstructorUsedError;
  @JsonKey(name: "inventory_id")
  String? get inventoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "variant_name")
  String? get variantName => throw _privateConstructorUsedError;
  @JsonKey(name: "approval_status")
  String? get approvalStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_details")
  DiscountData? get offerDetails => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "total_price")
  double? get totalPrize => throw _privateConstructorUsedError;
  @JsonKey(name: "need_approval", defaultValue: false)
  bool? get needApproval => throw _privateConstructorUsedError;
  @JsonKey(name: "is_approved", defaultValue: false)
  bool? get isApproved => throw _privateConstructorUsedError;
  @JsonKey(name: "is_Check", defaultValue: false)
  bool? get isCheck => throw _privateConstructorUsedError;
  @JsonKey(name: "reason_of_approval_reject")
  String? get reasonApprovalObject => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApproveCartDisplayModelCopyWith<ApproveCartDisplayModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApproveCartDisplayModelCopyWith<$Res> {
  factory $ApproveCartDisplayModelCopyWith(ApproveCartDisplayModel value,
          $Res Function(ApproveCartDisplayModel) then) =
      _$ApproveCartDisplayModelCopyWithImpl<$Res, ApproveCartDisplayModel>;
  @useResult
  $Res call(
      {int? id,
      int? quantity,
      double? price,
      double? vat,
      String? image,
      @JsonKey(name: "variant_id") int? variantId,
      @JsonKey(name: "cart_code") String? cartCode,
      @JsonKey(name: "variant_code") String? variantCode,
      @JsonKey(name: "inventory_id") String? inventoryId,
      @JsonKey(name: "variant_name") String? variantName,
      @JsonKey(name: "approval_status") String? approvalStatus,
      @JsonKey(name: "offer_details") DiscountData? offerDetails,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive,
      @JsonKey(name: "total_price") double? totalPrize,
      @JsonKey(name: "need_approval", defaultValue: false) bool? needApproval,
      @JsonKey(name: "is_approved", defaultValue: false) bool? isApproved,
      @JsonKey(name: "is_Check", defaultValue: false) bool? isCheck,
      @JsonKey(name: "reason_of_approval_reject")
      String? reasonApprovalObject});

  $DiscountDataCopyWith<$Res>? get offerDetails;
}

/// @nodoc
class _$ApproveCartDisplayModelCopyWithImpl<$Res,
        $Val extends ApproveCartDisplayModel>
    implements $ApproveCartDisplayModelCopyWith<$Res> {
  _$ApproveCartDisplayModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? quantity = freezed,
    Object? price = freezed,
    Object? vat = freezed,
    Object? image = freezed,
    Object? variantId = freezed,
    Object? cartCode = freezed,
    Object? variantCode = freezed,
    Object? inventoryId = freezed,
    Object? variantName = freezed,
    Object? approvalStatus = freezed,
    Object? offerDetails = freezed,
    Object? isActive = freezed,
    Object? totalPrize = freezed,
    Object? needApproval = freezed,
    Object? isApproved = freezed,
    Object? isCheck = freezed,
    Object? reasonApprovalObject = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
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
      variantName: freezed == variantName
          ? _value.variantName
          : variantName // ignore: cast_nullable_to_non_nullable
              as String?,
      approvalStatus: freezed == approvalStatus
          ? _value.approvalStatus
          : approvalStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      offerDetails: freezed == offerDetails
          ? _value.offerDetails
          : offerDetails // ignore: cast_nullable_to_non_nullable
              as DiscountData?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      totalPrize: freezed == totalPrize
          ? _value.totalPrize
          : totalPrize // ignore: cast_nullable_to_non_nullable
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
      reasonApprovalObject: freezed == reasonApprovalObject
          ? _value.reasonApprovalObject
          : reasonApprovalObject // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$_ApproveCartDisplayModelCopyWith<$Res>
    implements $ApproveCartDisplayModelCopyWith<$Res> {
  factory _$$_ApproveCartDisplayModelCopyWith(_$_ApproveCartDisplayModel value,
          $Res Function(_$_ApproveCartDisplayModel) then) =
      __$$_ApproveCartDisplayModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? quantity,
      double? price,
      double? vat,
      String? image,
      @JsonKey(name: "variant_id") int? variantId,
      @JsonKey(name: "cart_code") String? cartCode,
      @JsonKey(name: "variant_code") String? variantCode,
      @JsonKey(name: "inventory_id") String? inventoryId,
      @JsonKey(name: "variant_name") String? variantName,
      @JsonKey(name: "approval_status") String? approvalStatus,
      @JsonKey(name: "offer_details") DiscountData? offerDetails,
      @JsonKey(name: "is_active", defaultValue: false) bool? isActive,
      @JsonKey(name: "total_price") double? totalPrize,
      @JsonKey(name: "need_approval", defaultValue: false) bool? needApproval,
      @JsonKey(name: "is_approved", defaultValue: false) bool? isApproved,
      @JsonKey(name: "is_Check", defaultValue: false) bool? isCheck,
      @JsonKey(name: "reason_of_approval_reject")
      String? reasonApprovalObject});

  @override
  $DiscountDataCopyWith<$Res>? get offerDetails;
}

/// @nodoc
class __$$_ApproveCartDisplayModelCopyWithImpl<$Res>
    extends _$ApproveCartDisplayModelCopyWithImpl<$Res,
        _$_ApproveCartDisplayModel>
    implements _$$_ApproveCartDisplayModelCopyWith<$Res> {
  __$$_ApproveCartDisplayModelCopyWithImpl(_$_ApproveCartDisplayModel _value,
      $Res Function(_$_ApproveCartDisplayModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? quantity = freezed,
    Object? price = freezed,
    Object? vat = freezed,
    Object? image = freezed,
    Object? variantId = freezed,
    Object? cartCode = freezed,
    Object? variantCode = freezed,
    Object? inventoryId = freezed,
    Object? variantName = freezed,
    Object? approvalStatus = freezed,
    Object? offerDetails = freezed,
    Object? isActive = freezed,
    Object? totalPrize = freezed,
    Object? needApproval = freezed,
    Object? isApproved = freezed,
    Object? isCheck = freezed,
    Object? reasonApprovalObject = freezed,
  }) {
    return _then(_$_ApproveCartDisplayModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
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
      variantName: freezed == variantName
          ? _value.variantName
          : variantName // ignore: cast_nullable_to_non_nullable
              as String?,
      approvalStatus: freezed == approvalStatus
          ? _value.approvalStatus
          : approvalStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      offerDetails: freezed == offerDetails
          ? _value.offerDetails
          : offerDetails // ignore: cast_nullable_to_non_nullable
              as DiscountData?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      totalPrize: freezed == totalPrize
          ? _value.totalPrize
          : totalPrize // ignore: cast_nullable_to_non_nullable
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
      reasonApprovalObject: freezed == reasonApprovalObject
          ? _value.reasonApprovalObject
          : reasonApprovalObject // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApproveCartDisplayModel implements _ApproveCartDisplayModel {
  const _$_ApproveCartDisplayModel(
      {this.id,
      this.quantity,
      this.price,
      this.vat,
      this.image,
      @JsonKey(name: "variant_id") this.variantId,
      @JsonKey(name: "cart_code") this.cartCode,
      @JsonKey(name: "variant_code") this.variantCode,
      @JsonKey(name: "inventory_id") this.inventoryId,
      @JsonKey(name: "variant_name") this.variantName,
      @JsonKey(name: "approval_status") this.approvalStatus,
      @JsonKey(name: "offer_details") this.offerDetails,
      @JsonKey(name: "is_active", defaultValue: false) this.isActive,
      @JsonKey(name: "total_price") this.totalPrize,
      @JsonKey(name: "need_approval", defaultValue: false) this.needApproval,
      @JsonKey(name: "is_approved", defaultValue: false) this.isApproved,
      @JsonKey(name: "is_Check", defaultValue: false) this.isCheck,
      @JsonKey(name: "reason_of_approval_reject") this.reasonApprovalObject});

  factory _$_ApproveCartDisplayModel.fromJson(Map<String, dynamic> json) =>
      _$$_ApproveCartDisplayModelFromJson(json);

  @override
  final int? id;
  @override
  final int? quantity;
  @override
  final double? price;
  @override
  final double? vat;
  @override
  final String? image;
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
  @JsonKey(name: "variant_name")
  final String? variantName;
  @override
  @JsonKey(name: "approval_status")
  final String? approvalStatus;
  @override
  @JsonKey(name: "offer_details")
  final DiscountData? offerDetails;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  final bool? isActive;
  @override
  @JsonKey(name: "total_price")
  final double? totalPrize;
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
  @JsonKey(name: "reason_of_approval_reject")
  final String? reasonApprovalObject;

  @override
  String toString() {
    return 'ApproveCartDisplayModel(id: $id, quantity: $quantity, price: $price, vat: $vat, image: $image, variantId: $variantId, cartCode: $cartCode, variantCode: $variantCode, inventoryId: $inventoryId, variantName: $variantName, approvalStatus: $approvalStatus, offerDetails: $offerDetails, isActive: $isActive, totalPrize: $totalPrize, needApproval: $needApproval, isApproved: $isApproved, isCheck: $isCheck, reasonApprovalObject: $reasonApprovalObject)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApproveCartDisplayModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.vat, vat) || other.vat == vat) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.variantId, variantId) ||
                other.variantId == variantId) &&
            (identical(other.cartCode, cartCode) ||
                other.cartCode == cartCode) &&
            (identical(other.variantCode, variantCode) ||
                other.variantCode == variantCode) &&
            (identical(other.inventoryId, inventoryId) ||
                other.inventoryId == inventoryId) &&
            (identical(other.variantName, variantName) ||
                other.variantName == variantName) &&
            (identical(other.approvalStatus, approvalStatus) ||
                other.approvalStatus == approvalStatus) &&
            (identical(other.offerDetails, offerDetails) ||
                other.offerDetails == offerDetails) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.totalPrize, totalPrize) ||
                other.totalPrize == totalPrize) &&
            (identical(other.needApproval, needApproval) ||
                other.needApproval == needApproval) &&
            (identical(other.isApproved, isApproved) ||
                other.isApproved == isApproved) &&
            (identical(other.isCheck, isCheck) || other.isCheck == isCheck) &&
            (identical(other.reasonApprovalObject, reasonApprovalObject) ||
                other.reasonApprovalObject == reasonApprovalObject));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      quantity,
      price,
      vat,
      image,
      variantId,
      cartCode,
      variantCode,
      inventoryId,
      variantName,
      approvalStatus,
      offerDetails,
      isActive,
      totalPrize,
      needApproval,
      isApproved,
      isCheck,
      reasonApprovalObject);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApproveCartDisplayModelCopyWith<_$_ApproveCartDisplayModel>
      get copyWith =>
          __$$_ApproveCartDisplayModelCopyWithImpl<_$_ApproveCartDisplayModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApproveCartDisplayModelToJson(
      this,
    );
  }
}

abstract class _ApproveCartDisplayModel implements ApproveCartDisplayModel {
  const factory _ApproveCartDisplayModel(
      {final int? id,
      final int? quantity,
      final double? price,
      final double? vat,
      final String? image,
      @JsonKey(name: "variant_id") final int? variantId,
      @JsonKey(name: "cart_code") final String? cartCode,
      @JsonKey(name: "variant_code") final String? variantCode,
      @JsonKey(name: "inventory_id") final String? inventoryId,
      @JsonKey(name: "variant_name") final String? variantName,
      @JsonKey(name: "approval_status") final String? approvalStatus,
      @JsonKey(name: "offer_details") final DiscountData? offerDetails,
      @JsonKey(name: "is_active", defaultValue: false) final bool? isActive,
      @JsonKey(name: "total_price") final double? totalPrize,
      @JsonKey(name: "need_approval", defaultValue: false)
      final bool? needApproval,
      @JsonKey(name: "is_approved", defaultValue: false) final bool? isApproved,
      @JsonKey(name: "is_Check", defaultValue: false) final bool? isCheck,
      @JsonKey(name: "reason_of_approval_reject")
      final String? reasonApprovalObject}) = _$_ApproveCartDisplayModel;

  factory _ApproveCartDisplayModel.fromJson(Map<String, dynamic> json) =
      _$_ApproveCartDisplayModel.fromJson;

  @override
  int? get id;
  @override
  int? get quantity;
  @override
  double? get price;
  @override
  double? get vat;
  @override
  String? get image;
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
  @JsonKey(name: "variant_name")
  String? get variantName;
  @override
  @JsonKey(name: "approval_status")
  String? get approvalStatus;
  @override
  @JsonKey(name: "offer_details")
  DiscountData? get offerDetails;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive;
  @override
  @JsonKey(name: "total_price")
  double? get totalPrize;
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
  @JsonKey(name: "reason_of_approval_reject")
  String? get reasonApprovalObject;
  @override
  @JsonKey(ignore: true)
  _$$_ApproveCartDisplayModelCopyWith<_$_ApproveCartDisplayModel>
      get copyWith => throw _privateConstructorUsedError;
}

ApproveCartListModel _$ApproveCartListModelFromJson(Map<String, dynamic> json) {
  return _ApproveCartListModel.fromJson(json);
}

/// @nodoc
mixin _$ApproveCartListModel {
  int? get id => throw _privateConstructorUsedError;
  double? get total => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  String? get remarks => throw _privateConstructorUsedError;
  @JsonKey(name: "order_code")
  String? get orderCode => throw _privateConstructorUsedError;
  @JsonKey(name: "total_cart_value")
  double? get totalCartValue => throw _privateConstructorUsedError;
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
  $ApproveCartListModelCopyWith<ApproveCartListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApproveCartListModelCopyWith<$Res> {
  factory $ApproveCartListModelCopyWith(ApproveCartListModel value,
          $Res Function(ApproveCartListModel) then) =
      _$ApproveCartListModelCopyWithImpl<$Res, ApproveCartListModel>;
  @useResult
  $Res call(
      {int? id,
      double? total,
      String? notes,
      String? remarks,
      @JsonKey(name: "order_code") String? orderCode,
      @JsonKey(name: "total_cart_value") double? totalCartValue,
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
class _$ApproveCartListModelCopyWithImpl<$Res,
        $Val extends ApproveCartListModel>
    implements $ApproveCartListModelCopyWith<$Res> {
  _$ApproveCartListModelCopyWithImpl(this._value, this._then);

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
    Object? totalCartValue = freezed,
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
      totalCartValue: freezed == totalCartValue
          ? _value.totalCartValue
          : totalCartValue // ignore: cast_nullable_to_non_nullable
              as double?,
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
abstract class _$$_ApproveCartListModelCopyWith<$Res>
    implements $ApproveCartListModelCopyWith<$Res> {
  factory _$$_ApproveCartListModelCopyWith(_$_ApproveCartListModel value,
          $Res Function(_$_ApproveCartListModel) then) =
      __$$_ApproveCartListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      double? total,
      String? notes,
      String? remarks,
      @JsonKey(name: "order_code") String? orderCode,
      @JsonKey(name: "total_cart_value") double? totalCartValue,
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
class __$$_ApproveCartListModelCopyWithImpl<$Res>
    extends _$ApproveCartListModelCopyWithImpl<$Res, _$_ApproveCartListModel>
    implements _$$_ApproveCartListModelCopyWith<$Res> {
  __$$_ApproveCartListModelCopyWithImpl(_$_ApproveCartListModel _value,
      $Res Function(_$_ApproveCartListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? total = freezed,
    Object? notes = freezed,
    Object? remarks = freezed,
    Object? orderCode = freezed,
    Object? totalCartValue = freezed,
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
    return _then(_$_ApproveCartListModel(
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
      totalCartValue: freezed == totalCartValue
          ? _value.totalCartValue
          : totalCartValue // ignore: cast_nullable_to_non_nullable
              as double?,
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
class _$_ApproveCartListModel implements _ApproveCartListModel {
  const _$_ApproveCartListModel(
      {this.id,
      this.total,
      this.notes,
      this.remarks,
      @JsonKey(name: "order_code") this.orderCode,
      @JsonKey(name: "total_cart_value") this.totalCartValue,
      @JsonKey(name: "ordered_date") this.orderDate,
      @JsonKey(name: "customer_code") this.cutsomerCode,
      @JsonKey(name: "customer_name") this.customerName,
      @JsonKey(name: "customer_trn_number") this.customerTrnNumber,
      @JsonKey(name: "order_satus") this.orderStatus,
      @JsonKey(name: "payment_status") this.paymentStatus,
      @JsonKey(name: "delivery_address") this.deliveryAddress,
      @JsonKey(name: "invoice_status") this.inVoiceStatus,
      @JsonKey(name: "is_active", defaultValue: false) this.isActive});

  factory _$_ApproveCartListModel.fromJson(Map<String, dynamic> json) =>
      _$$_ApproveCartListModelFromJson(json);

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
  @JsonKey(name: "total_cart_value")
  final double? totalCartValue;
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
    return 'ApproveCartListModel(id: $id, total: $total, notes: $notes, remarks: $remarks, orderCode: $orderCode, totalCartValue: $totalCartValue, orderDate: $orderDate, cutsomerCode: $cutsomerCode, customerName: $customerName, customerTrnNumber: $customerTrnNumber, orderStatus: $orderStatus, paymentStatus: $paymentStatus, deliveryAddress: $deliveryAddress, inVoiceStatus: $inVoiceStatus, isActive: $isActive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApproveCartListModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.remarks, remarks) || other.remarks == remarks) &&
            (identical(other.orderCode, orderCode) ||
                other.orderCode == orderCode) &&
            (identical(other.totalCartValue, totalCartValue) ||
                other.totalCartValue == totalCartValue) &&
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
      totalCartValue,
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
  _$$_ApproveCartListModelCopyWith<_$_ApproveCartListModel> get copyWith =>
      __$$_ApproveCartListModelCopyWithImpl<_$_ApproveCartListModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApproveCartListModelToJson(
      this,
    );
  }
}

abstract class _ApproveCartListModel implements ApproveCartListModel {
  const factory _ApproveCartListModel(
      {final int? id,
      final double? total,
      final String? notes,
      final String? remarks,
      @JsonKey(name: "order_code") final String? orderCode,
      @JsonKey(name: "total_cart_value") final double? totalCartValue,
      @JsonKey(name: "ordered_date") final String? orderDate,
      @JsonKey(name: "customer_code") final String? cutsomerCode,
      @JsonKey(name: "customer_name") final String? customerName,
      @JsonKey(name: "customer_trn_number") final String? customerTrnNumber,
      @JsonKey(name: "order_satus") final String? orderStatus,
      @JsonKey(name: "payment_status") final String? paymentStatus,
      @JsonKey(name: "delivery_address") final String? deliveryAddress,
      @JsonKey(name: "invoice_status") final String? inVoiceStatus,
      @JsonKey(name: "is_active", defaultValue: false)
      final bool? isActive}) = _$_ApproveCartListModel;

  factory _ApproveCartListModel.fromJson(Map<String, dynamic> json) =
      _$_ApproveCartListModel.fromJson;

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
  @JsonKey(name: "total_cart_value")
  double? get totalCartValue;
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
  _$$_ApproveCartListModelCopyWith<_$_ApproveCartListModel> get copyWith =>
      throw _privateConstructorUsedError;
}
