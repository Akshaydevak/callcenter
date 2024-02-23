// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'Assign_To_List.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AssignToList _$AssignToListFromJson(Map<String, dynamic> json) {
  return _AssignToList.fromJson(json);
}

/// @nodoc
mixin _$AssignToList {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_usercode")
  String? get customerUserCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AssignToListCopyWith<AssignToList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssignToListCopyWith<$Res> {
  factory $AssignToListCopyWith(
          AssignToList value, $Res Function(AssignToList) then) =
      _$AssignToListCopyWithImpl<$Res, AssignToList>;
  @useResult
  $Res call(
      {int? id, @JsonKey(name: "customer_usercode") String? customerUserCode});
}

/// @nodoc
class _$AssignToListCopyWithImpl<$Res, $Val extends AssignToList>
    implements $AssignToListCopyWith<$Res> {
  _$AssignToListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? customerUserCode = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      customerUserCode: freezed == customerUserCode
          ? _value.customerUserCode
          : customerUserCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AssignToListCopyWith<$Res>
    implements $AssignToListCopyWith<$Res> {
  factory _$$_AssignToListCopyWith(
          _$_AssignToList value, $Res Function(_$_AssignToList) then) =
      __$$_AssignToListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id, @JsonKey(name: "customer_usercode") String? customerUserCode});
}

/// @nodoc
class __$$_AssignToListCopyWithImpl<$Res>
    extends _$AssignToListCopyWithImpl<$Res, _$_AssignToList>
    implements _$$_AssignToListCopyWith<$Res> {
  __$$_AssignToListCopyWithImpl(
      _$_AssignToList _value, $Res Function(_$_AssignToList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? customerUserCode = freezed,
  }) {
    return _then(_$_AssignToList(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      customerUserCode: freezed == customerUserCode
          ? _value.customerUserCode
          : customerUserCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AssignToList implements _AssignToList {
  const _$_AssignToList(
      {this.id, @JsonKey(name: "customer_usercode") this.customerUserCode});

  factory _$_AssignToList.fromJson(Map<String, dynamic> json) =>
      _$$_AssignToListFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: "customer_usercode")
  final String? customerUserCode;

  @override
  String toString() {
    return 'AssignToList(id: $id, customerUserCode: $customerUserCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AssignToList &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.customerUserCode, customerUserCode) ||
                other.customerUserCode == customerUserCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, customerUserCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AssignToListCopyWith<_$_AssignToList> get copyWith =>
      __$$_AssignToListCopyWithImpl<_$_AssignToList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AssignToListToJson(
      this,
    );
  }
}

abstract class _AssignToList implements AssignToList {
  const factory _AssignToList(
          {final int? id,
          @JsonKey(name: "customer_usercode") final String? customerUserCode}) =
      _$_AssignToList;

  factory _AssignToList.fromJson(Map<String, dynamic> json) =
      _$_AssignToList.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: "customer_usercode")
  String? get customerUserCode;
  @override
  @JsonKey(ignore: true)
  _$$_AssignToListCopyWith<_$_AssignToList> get copyWith =>
      throw _privateConstructorUsedError;
}
