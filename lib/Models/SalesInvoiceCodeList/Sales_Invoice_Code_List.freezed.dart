// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'Sales_Invoice_Code_List.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InvoiceCodeList _$InvoiceCodeListFromJson(Map<String, dynamic> json) {
  return _InvoiceCodeList.fromJson(json);
}

/// @nodoc
mixin _$InvoiceCodeList {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "invoice_code")
  String? get invoiceCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvoiceCodeListCopyWith<InvoiceCodeList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceCodeListCopyWith<$Res> {
  factory $InvoiceCodeListCopyWith(
          InvoiceCodeList value, $Res Function(InvoiceCodeList) then) =
      _$InvoiceCodeListCopyWithImpl<$Res, InvoiceCodeList>;
  @useResult
  $Res call({int? id, @JsonKey(name: "invoice_code") String? invoiceCode});
}

/// @nodoc
class _$InvoiceCodeListCopyWithImpl<$Res, $Val extends InvoiceCodeList>
    implements $InvoiceCodeListCopyWith<$Res> {
  _$InvoiceCodeListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? invoiceCode = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      invoiceCode: freezed == invoiceCode
          ? _value.invoiceCode
          : invoiceCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InvoiceCodeListCopyWith<$Res>
    implements $InvoiceCodeListCopyWith<$Res> {
  factory _$$_InvoiceCodeListCopyWith(
          _$_InvoiceCodeList value, $Res Function(_$_InvoiceCodeList) then) =
      __$$_InvoiceCodeListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, @JsonKey(name: "invoice_code") String? invoiceCode});
}

/// @nodoc
class __$$_InvoiceCodeListCopyWithImpl<$Res>
    extends _$InvoiceCodeListCopyWithImpl<$Res, _$_InvoiceCodeList>
    implements _$$_InvoiceCodeListCopyWith<$Res> {
  __$$_InvoiceCodeListCopyWithImpl(
      _$_InvoiceCodeList _value, $Res Function(_$_InvoiceCodeList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? invoiceCode = freezed,
  }) {
    return _then(_$_InvoiceCodeList(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      invoiceCode: freezed == invoiceCode
          ? _value.invoiceCode
          : invoiceCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InvoiceCodeList implements _InvoiceCodeList {
  const _$_InvoiceCodeList(
      {this.id, @JsonKey(name: "invoice_code") this.invoiceCode});

  factory _$_InvoiceCodeList.fromJson(Map<String, dynamic> json) =>
      _$$_InvoiceCodeListFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: "invoice_code")
  final String? invoiceCode;

  @override
  String toString() {
    return 'InvoiceCodeList(id: $id, invoiceCode: $invoiceCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvoiceCodeList &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.invoiceCode, invoiceCode) ||
                other.invoiceCode == invoiceCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, invoiceCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InvoiceCodeListCopyWith<_$_InvoiceCodeList> get copyWith =>
      __$$_InvoiceCodeListCopyWithImpl<_$_InvoiceCodeList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InvoiceCodeListToJson(
      this,
    );
  }
}

abstract class _InvoiceCodeList implements InvoiceCodeList {
  const factory _InvoiceCodeList(
          {final int? id,
          @JsonKey(name: "invoice_code") final String? invoiceCode}) =
      _$_InvoiceCodeList;

  factory _InvoiceCodeList.fromJson(Map<String, dynamic> json) =
      _$_InvoiceCodeList.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: "invoice_code")
  String? get invoiceCode;
  @override
  @JsonKey(ignore: true)
  _$$_InvoiceCodeListCopyWith<_$_InvoiceCodeList> get copyWith =>
      throw _privateConstructorUsedError;
}
