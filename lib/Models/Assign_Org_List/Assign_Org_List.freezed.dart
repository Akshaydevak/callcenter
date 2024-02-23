// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'Assign_Org_List.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrgList _$OrgListFromJson(Map<String, dynamic> json) {
  return _OrgList.fromJson(json);
}

/// @nodoc
mixin _$OrgList {
  int? get id => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "organization_code")
  String? get orgCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrgListCopyWith<OrgList> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrgListCopyWith<$Res> {
  factory $OrgListCopyWith(OrgList value, $Res Function(OrgList) then) =
      _$OrgListCopyWithImpl<$Res, OrgList>;
  @useResult
  $Res call(
      {int? id,
      String? code,
      String? name,
      @JsonKey(name: "organization_code") String? orgCode});
}

/// @nodoc
class _$OrgListCopyWithImpl<$Res, $Val extends OrgList>
    implements $OrgListCopyWith<$Res> {
  _$OrgListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? name = freezed,
    Object? orgCode = freezed,
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
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      orgCode: freezed == orgCode
          ? _value.orgCode
          : orgCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrgListCopyWith<$Res> implements $OrgListCopyWith<$Res> {
  factory _$$_OrgListCopyWith(
          _$_OrgList value, $Res Function(_$_OrgList) then) =
      __$$_OrgListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? code,
      String? name,
      @JsonKey(name: "organization_code") String? orgCode});
}

/// @nodoc
class __$$_OrgListCopyWithImpl<$Res>
    extends _$OrgListCopyWithImpl<$Res, _$_OrgList>
    implements _$$_OrgListCopyWith<$Res> {
  __$$_OrgListCopyWithImpl(_$_OrgList _value, $Res Function(_$_OrgList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? name = freezed,
    Object? orgCode = freezed,
  }) {
    return _then(_$_OrgList(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      orgCode: freezed == orgCode
          ? _value.orgCode
          : orgCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrgList implements _OrgList {
  const _$_OrgList(
      {this.id,
      this.code,
      this.name,
      @JsonKey(name: "organization_code") this.orgCode});

  factory _$_OrgList.fromJson(Map<String, dynamic> json) =>
      _$$_OrgListFromJson(json);

  @override
  final int? id;
  @override
  final String? code;
  @override
  final String? name;
  @override
  @JsonKey(name: "organization_code")
  final String? orgCode;

  @override
  String toString() {
    return 'OrgList(id: $id, code: $code, name: $name, orgCode: $orgCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrgList &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.orgCode, orgCode) || other.orgCode == orgCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, code, name, orgCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrgListCopyWith<_$_OrgList> get copyWith =>
      __$$_OrgListCopyWithImpl<_$_OrgList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrgListToJson(
      this,
    );
  }
}

abstract class _OrgList implements OrgList {
  const factory _OrgList(
      {final int? id,
      final String? code,
      final String? name,
      @JsonKey(name: "organization_code") final String? orgCode}) = _$_OrgList;

  factory _OrgList.fromJson(Map<String, dynamic> json) = _$_OrgList.fromJson;

  @override
  int? get id;
  @override
  String? get code;
  @override
  String? get name;
  @override
  @JsonKey(name: "organization_code")
  String? get orgCode;
  @override
  @JsonKey(ignore: true)
  _$$_OrgListCopyWith<_$_OrgList> get copyWith =>
      throw _privateConstructorUsedError;
}
