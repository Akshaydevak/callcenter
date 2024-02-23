// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'List_Sales_Return.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SalesReturnList _$SalesReturnListFromJson(Map<String, dynamic> json) {
  return _SalesReturnList.fromJson(json);
}

/// @nodoc
mixin _$SalesReturnList {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_return_order_code")
  String? get salesOrderCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SalesReturnListCopyWith<SalesReturnList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesReturnListCopyWith<$Res> {
  factory $SalesReturnListCopyWith(
          SalesReturnList value, $Res Function(SalesReturnList) then) =
      _$SalesReturnListCopyWithImpl<$Res, SalesReturnList>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "sales_return_order_code") String? salesOrderCode});
}

/// @nodoc
class _$SalesReturnListCopyWithImpl<$Res, $Val extends SalesReturnList>
    implements $SalesReturnListCopyWith<$Res> {
  _$SalesReturnListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? salesOrderCode = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SalesReturnListCopyWith<$Res>
    implements $SalesReturnListCopyWith<$Res> {
  factory _$$_SalesReturnListCopyWith(
          _$_SalesReturnList value, $Res Function(_$_SalesReturnList) then) =
      __$$_SalesReturnListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "sales_return_order_code") String? salesOrderCode});
}

/// @nodoc
class __$$_SalesReturnListCopyWithImpl<$Res>
    extends _$SalesReturnListCopyWithImpl<$Res, _$_SalesReturnList>
    implements _$$_SalesReturnListCopyWith<$Res> {
  __$$_SalesReturnListCopyWithImpl(
      _$_SalesReturnList _value, $Res Function(_$_SalesReturnList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? salesOrderCode = freezed,
  }) {
    return _then(_$_SalesReturnList(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      salesOrderCode: freezed == salesOrderCode
          ? _value.salesOrderCode
          : salesOrderCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SalesReturnList implements _SalesReturnList {
  const _$_SalesReturnList(
      {this.id, @JsonKey(name: "sales_return_order_code") this.salesOrderCode});

  factory _$_SalesReturnList.fromJson(Map<String, dynamic> json) =>
      _$$_SalesReturnListFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: "sales_return_order_code")
  final String? salesOrderCode;

  @override
  String toString() {
    return 'SalesReturnList(id: $id, salesOrderCode: $salesOrderCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SalesReturnList &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.salesOrderCode, salesOrderCode) ||
                other.salesOrderCode == salesOrderCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, salesOrderCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SalesReturnListCopyWith<_$_SalesReturnList> get copyWith =>
      __$$_SalesReturnListCopyWithImpl<_$_SalesReturnList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SalesReturnListToJson(
      this,
    );
  }
}

abstract class _SalesReturnList implements SalesReturnList {
  const factory _SalesReturnList(
      {final int? id,
      @JsonKey(name: "sales_return_order_code")
      final String? salesOrderCode}) = _$_SalesReturnList;

  factory _SalesReturnList.fromJson(Map<String, dynamic> json) =
      _$_SalesReturnList.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: "sales_return_order_code")
  String? get salesOrderCode;
  @override
  @JsonKey(ignore: true)
  _$$_SalesReturnListCopyWith<_$_SalesReturnList> get copyWith =>
      throw _privateConstructorUsedError;
}
