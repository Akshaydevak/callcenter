// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'Sales_Genaral_Sidelist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SalesGeneralList _$SalesGeneralListFromJson(Map<String, dynamic> json) {
  return _SalesGeneralList.fromJson(json);
}

/// @nodoc
mixin _$SalesGeneralList {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_order_code")
  String? get salesOrderCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SalesGeneralListCopyWith<SalesGeneralList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesGeneralListCopyWith<$Res> {
  factory $SalesGeneralListCopyWith(
          SalesGeneralList value, $Res Function(SalesGeneralList) then) =
      _$SalesGeneralListCopyWithImpl<$Res, SalesGeneralList>;
  @useResult
  $Res call(
      {int? id, @JsonKey(name: "sales_order_code") String? salesOrderCode});
}

/// @nodoc
class _$SalesGeneralListCopyWithImpl<$Res, $Val extends SalesGeneralList>
    implements $SalesGeneralListCopyWith<$Res> {
  _$SalesGeneralListCopyWithImpl(this._value, this._then);

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
abstract class _$$_SalesGeneralListCopyWith<$Res>
    implements $SalesGeneralListCopyWith<$Res> {
  factory _$$_SalesGeneralListCopyWith(
          _$_SalesGeneralList value, $Res Function(_$_SalesGeneralList) then) =
      __$$_SalesGeneralListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id, @JsonKey(name: "sales_order_code") String? salesOrderCode});
}

/// @nodoc
class __$$_SalesGeneralListCopyWithImpl<$Res>
    extends _$SalesGeneralListCopyWithImpl<$Res, _$_SalesGeneralList>
    implements _$$_SalesGeneralListCopyWith<$Res> {
  __$$_SalesGeneralListCopyWithImpl(
      _$_SalesGeneralList _value, $Res Function(_$_SalesGeneralList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? salesOrderCode = freezed,
  }) {
    return _then(_$_SalesGeneralList(
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
class _$_SalesGeneralList implements _SalesGeneralList {
  const _$_SalesGeneralList(
      {this.id, @JsonKey(name: "sales_order_code") this.salesOrderCode});

  factory _$_SalesGeneralList.fromJson(Map<String, dynamic> json) =>
      _$$_SalesGeneralListFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: "sales_order_code")
  final String? salesOrderCode;

  @override
  String toString() {
    return 'SalesGeneralList(id: $id, salesOrderCode: $salesOrderCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SalesGeneralList &&
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
  _$$_SalesGeneralListCopyWith<_$_SalesGeneralList> get copyWith =>
      __$$_SalesGeneralListCopyWithImpl<_$_SalesGeneralList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SalesGeneralListToJson(
      this,
    );
  }
}

abstract class _SalesGeneralList implements SalesGeneralList {
  const factory _SalesGeneralList(
          {final int? id,
          @JsonKey(name: "sales_order_code") final String? salesOrderCode}) =
      _$_SalesGeneralList;

  factory _SalesGeneralList.fromJson(Map<String, dynamic> json) =
      _$_SalesGeneralList.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: "sales_order_code")
  String? get salesOrderCode;
  @override
  @JsonKey(ignore: true)
  _$$_SalesGeneralListCopyWith<_$_SalesGeneralList> get copyWith =>
      throw _privateConstructorUsedError;
}
