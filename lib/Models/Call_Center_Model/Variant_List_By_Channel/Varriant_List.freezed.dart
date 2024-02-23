// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'Varriant_List.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VariantList _$VariantListFromJson(Map<String, dynamic> json) {
  return _VariantList.fromJson(json);
}

/// @nodoc
mixin _$VariantList {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "code")
  String? get code => throw _privateConstructorUsedError;
  @JsonKey(name: "barcode")
  Barcode? get barcode => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "stock_qty")
  int? get stockQty => throw _privateConstructorUsedError;
  @JsonKey(name: "image1")
  String? get image1 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VariantListCopyWith<VariantList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VariantListCopyWith<$Res> {
  factory $VariantListCopyWith(
          VariantList value, $Res Function(VariantList) then) =
      _$VariantListCopyWithImpl<$Res, VariantList>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "code") String? code,
      @JsonKey(name: "barcode") Barcode? barcode,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "stock_qty") int? stockQty,
      @JsonKey(name: "image1") String? image1});

  $BarcodeCopyWith<$Res>? get barcode;
}

/// @nodoc
class _$VariantListCopyWithImpl<$Res, $Val extends VariantList>
    implements $VariantListCopyWith<$Res> {
  _$VariantListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? barcode = freezed,
    Object? name = freezed,
    Object? stockQty = freezed,
    Object? image1 = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as Barcode?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      stockQty: freezed == stockQty
          ? _value.stockQty
          : stockQty // ignore: cast_nullable_to_non_nullable
              as int?,
      image1: freezed == image1
          ? _value.image1
          : image1 // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BarcodeCopyWith<$Res>? get barcode {
    if (_value.barcode == null) {
      return null;
    }

    return $BarcodeCopyWith<$Res>(_value.barcode!, (value) {
      return _then(_value.copyWith(barcode: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_VariantListCopyWith<$Res>
    implements $VariantListCopyWith<$Res> {
  factory _$$_VariantListCopyWith(
          _$_VariantList value, $Res Function(_$_VariantList) then) =
      __$$_VariantListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "code") String? code,
      @JsonKey(name: "barcode") Barcode? barcode,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "stock_qty") int? stockQty,
      @JsonKey(name: "image1") String? image1});

  @override
  $BarcodeCopyWith<$Res>? get barcode;
}

/// @nodoc
class __$$_VariantListCopyWithImpl<$Res>
    extends _$VariantListCopyWithImpl<$Res, _$_VariantList>
    implements _$$_VariantListCopyWith<$Res> {
  __$$_VariantListCopyWithImpl(
      _$_VariantList _value, $Res Function(_$_VariantList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? barcode = freezed,
    Object? name = freezed,
    Object? stockQty = freezed,
    Object? image1 = freezed,
  }) {
    return _then(_$_VariantList(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as Barcode?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      stockQty: freezed == stockQty
          ? _value.stockQty
          : stockQty // ignore: cast_nullable_to_non_nullable
              as int?,
      image1: freezed == image1
          ? _value.image1
          : image1 // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VariantList implements _VariantList {
  const _$_VariantList(
      {this.id,
      @JsonKey(name: "code") this.code,
      @JsonKey(name: "barcode") this.barcode,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "stock_qty") this.stockQty,
      @JsonKey(name: "image1") this.image1});

  factory _$_VariantList.fromJson(Map<String, dynamic> json) =>
      _$$_VariantListFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: "code")
  final String? code;
  @override
  @JsonKey(name: "barcode")
  final Barcode? barcode;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "stock_qty")
  final int? stockQty;
  @override
  @JsonKey(name: "image1")
  final String? image1;

  @override
  String toString() {
    return 'VariantList(id: $id, code: $code, barcode: $barcode, name: $name, stockQty: $stockQty, image1: $image1)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VariantList &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.stockQty, stockQty) ||
                other.stockQty == stockQty) &&
            (identical(other.image1, image1) || other.image1 == image1));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, code, barcode, name, stockQty, image1);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VariantListCopyWith<_$_VariantList> get copyWith =>
      __$$_VariantListCopyWithImpl<_$_VariantList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VariantListToJson(
      this,
    );
  }
}

abstract class _VariantList implements VariantList {
  const factory _VariantList(
      {final int? id,
      @JsonKey(name: "code") final String? code,
      @JsonKey(name: "barcode") final Barcode? barcode,
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "stock_qty") final int? stockQty,
      @JsonKey(name: "image1") final String? image1}) = _$_VariantList;

  factory _VariantList.fromJson(Map<String, dynamic> json) =
      _$_VariantList.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: "code")
  String? get code;
  @override
  @JsonKey(name: "barcode")
  Barcode? get barcode;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "stock_qty")
  int? get stockQty;
  @override
  @JsonKey(name: "image1")
  String? get image1;
  @override
  @JsonKey(ignore: true)
  _$$_VariantListCopyWith<_$_VariantList> get copyWith =>
      throw _privateConstructorUsedError;
}

Barcode _$BarcodeFromJson(Map<String, dynamic> json) {
  return _Barcode.fromJson(json);
}

/// @nodoc
mixin _$Barcode {
  @JsonKey(name: "file_name")
  String? get fileName => throw _privateConstructorUsedError;
  @JsonKey(name: "barcode_number")
  String? get barcodeNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BarcodeCopyWith<Barcode> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BarcodeCopyWith<$Res> {
  factory $BarcodeCopyWith(Barcode value, $Res Function(Barcode) then) =
      _$BarcodeCopyWithImpl<$Res, Barcode>;
  @useResult
  $Res call(
      {@JsonKey(name: "file_name") String? fileName,
      @JsonKey(name: "barcode_number") String? barcodeNumber});
}

/// @nodoc
class _$BarcodeCopyWithImpl<$Res, $Val extends Barcode>
    implements $BarcodeCopyWith<$Res> {
  _$BarcodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileName = freezed,
    Object? barcodeNumber = freezed,
  }) {
    return _then(_value.copyWith(
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      barcodeNumber: freezed == barcodeNumber
          ? _value.barcodeNumber
          : barcodeNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BarcodeCopyWith<$Res> implements $BarcodeCopyWith<$Res> {
  factory _$$_BarcodeCopyWith(
          _$_Barcode value, $Res Function(_$_Barcode) then) =
      __$$_BarcodeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "file_name") String? fileName,
      @JsonKey(name: "barcode_number") String? barcodeNumber});
}

/// @nodoc
class __$$_BarcodeCopyWithImpl<$Res>
    extends _$BarcodeCopyWithImpl<$Res, _$_Barcode>
    implements _$$_BarcodeCopyWith<$Res> {
  __$$_BarcodeCopyWithImpl(_$_Barcode _value, $Res Function(_$_Barcode) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileName = freezed,
    Object? barcodeNumber = freezed,
  }) {
    return _then(_$_Barcode(
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      barcodeNumber: freezed == barcodeNumber
          ? _value.barcodeNumber
          : barcodeNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Barcode implements _Barcode {
  const _$_Barcode(
      {@JsonKey(name: "file_name") this.fileName,
      @JsonKey(name: "barcode_number") this.barcodeNumber});

  factory _$_Barcode.fromJson(Map<String, dynamic> json) =>
      _$$_BarcodeFromJson(json);

  @override
  @JsonKey(name: "file_name")
  final String? fileName;
  @override
  @JsonKey(name: "barcode_number")
  final String? barcodeNumber;

  @override
  String toString() {
    return 'Barcode(fileName: $fileName, barcodeNumber: $barcodeNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Barcode &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.barcodeNumber, barcodeNumber) ||
                other.barcodeNumber == barcodeNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fileName, barcodeNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BarcodeCopyWith<_$_Barcode> get copyWith =>
      __$$_BarcodeCopyWithImpl<_$_Barcode>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BarcodeToJson(
      this,
    );
  }
}

abstract class _Barcode implements Barcode {
  const factory _Barcode(
          {@JsonKey(name: "file_name") final String? fileName,
          @JsonKey(name: "barcode_number") final String? barcodeNumber}) =
      _$_Barcode;

  factory _Barcode.fromJson(Map<String, dynamic> json) = _$_Barcode.fromJson;

  @override
  @JsonKey(name: "file_name")
  String? get fileName;
  @override
  @JsonKey(name: "barcode_number")
  String? get barcodeNumber;
  @override
  @JsonKey(ignore: true)
  _$$_BarcodeCopyWith<_$_Barcode> get copyWith =>
      throw _privateConstructorUsedError;
}
